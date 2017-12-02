drop procedure if exists `insert_chu_de`;
delimiter $$
create procedure insert_chu_de
(
	in p_tieu_de varchar(100),
	in p_mo_ta text,
	in p_trang_thai tinyint(4),
	out result int
)
begin
	insert into chu_de(tieu_de, mo_ta, trang_thai) values(p_tieu_de, p_mo_ta, p_trang_thai);
    select row_count() into result from dual;
end $$
delimiter ;
