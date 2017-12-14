drop procedure if exists `proc_paging_chu_de`;
delimiter $$
create procedure proc_paging_chu_de(IN p_page_number integer,IN p_size integer,out p_sum_page integer)
begin
declare v_start integer;
declare v_end integer ;
declare v_total_item integer;
set v_start =(((p_page_number - 1) * p_size));
set v_end =(v_start+p_size-1)+1;

select count(*) into v_total_item from chu_de ;

if (v_total_item mod p_size =0) then
	set p_sum_page =v_total_item div p_size;
    else
    set p_sum_page =(v_total_item div p_size)+1;
    end if;

select * from chu_de c order by convert(substring_index(c.ma_chu_de,'CD',-1),unsigned int) asc limit v_start,v_end;

end $$
delimiter ;

















drop procedure if exists `proc_paging_table`;
delimiter $$
create procedure proc_paging_table(IN p_page_number integer,IN p_size integer,out p_sum_page integer,IN p_table_name varchar(255))
begin
declare v_start integer;
declare v_end integer ;
declare v_total_item integer default 0;

set v_start =(((p_page_number - 1) * p_size));
set v_end =(v_start+p_size-1)+1;


-- caculate number of record in table use input
set @qr =concat('select count(*) into @total_item from ',p_table_name,' n where n.trang_thai=1');
prepare stmt from  @qr;
execute stmt;
deallocate prepare stmt;  
select @total_item into v_total_item;

-- caculate number of pages

if (v_total_item mod p_size =0) then
	set p_sum_page =v_total_item div p_size;
    else
    set p_sum_page =(v_total_item div p_size)+1;
    end if;

-- result of paging
set @qr2 =concat('select * from ',p_table_name,' n where n.trang_thai=1 limit ',v_start,',',v_end);
prepare stmt from  @qr2;
execute stmt;
deallocate prepare stmt; 

end $$
delimiter ;




-- full text search cho chu_de


ALTER TABLE `tmdt`.`chu_de` 
ADD FULLTEXT INDEX `ft_chu_de_mo_ta_tieu_de` (`tieu_de` ASC, `mo_ta` ASC);


-- search with paging

drop procedure if exists `proc_paging_query`;
delimiter $$
create procedure proc_paging_query(IN p_page_number integer,IN p_size integer,out p_sum_page integer,IN sql_query varchar(255))
begin
declare v_start integer;
declare v_end integer ;
declare v_total_item integer default 0;

set v_start =(((p_page_number - 1) * p_size));
set v_end =(v_start+p_size-1)+1;


-- caculate number of record in table use input
set @qr =concat('select count(*) into @total_item from ( ',sql_query,' )');
prepare stmt from  @qr;
execute stmt;
deallocate prepare stmt;  
select @total_item into v_total_item;

-- caculate number of pages

if (v_total_item mod p_size =0) then
	set p_sum_page =v_total_item div p_size;
    else
    set p_sum_page =(v_total_item div p_size)+1;
    end if;

-- result of paging
set @qr2 =concat('select * from ( ',sql_query,' )  limit ',v_start,',',v_end);
prepare stmt from  @qr2;
execute stmt;
deallocate prepare stmt; 

end $$
delimiter ;


-- proc tạo khóa học

drop procedure if exists `create_khoa_hoc`;
delimiter $$
create procedure create_khoa_hoc
(IN p_tieu_de varchar(200),IN p_mo_ta text,IN p_ma_nguoi_dung varchar(50),IN p_don_gia int,
IN p_ma_loai_khoa_hoc varchar(50),IN p_ma_chu_de varchar(50),IN p_anh_dai_dien varchar(200),IN p_chi_tiet_khoa_hoc text)
	begin
		declare ma_khoa_hoc varchar(50) default null;
        declare  result_update integer default 0;
		insert into khoa_hoc(tieu_de,mo_ta,ma_nguoi_dung,don_gia,ma_loai_khoa_hoc,ma_chu_de,anh_dai_dien,chi_tiet_khoa_hoc)
        values(p_tieu_de,p_mo_ta,p_ma_nguoi_dung,p_don_gia,p_ma_loai_khoa_hoc,p_ma_chu_de,p_anh_dai_dien,p_chi_tiet_khoa_hoc);
        
        select row_count() into result_update;
			if(result_update>0) then
					select c.ma_khoa_hoc into ma_khoa_hoc from khoa_hoc c order by 
                    (convert(substring_index(c.ma_khoa_hoc,'KH',-1),unsigned int)) desc limit 1; 
                end if;
          select ma_khoa_hoc as courseID from dual;       
        
    end $$
 delimiter ;



