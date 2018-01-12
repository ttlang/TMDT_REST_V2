DELIMITER //
CREATE PROCEDURE thong_ke_theo_chu_de(IN p_rows_num integer, OUT total integer) 
begin
	select cd.tieu_de, count(kh.ma_khoa_hoc) as SL 
	from chu_de cd left outer join khoa_hoc kh on cd.ma_chu_de = kh.ma_chu_de
	group by cd.ma_chu_de
	order by count(kh.ma_khoa_hoc)
	desc limit rows_num;

	select  sum(TEMP.SL) from  (
		select count(kh.ma_khoa_hoc)  as SL from chu_de cd left outer join khoa_hoc kh on cd.ma_chu_de = kh.ma_chu_de
		group by cd.ma_chu_de order by  count(kh.ma_khoa_hoc) desc) TEMP into total;
end //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS insert_user_role //
CREATE PROCEDURE insert_user_role(IN p_userID varchar(50), OUT result integer)
begin
	set result := 0;
	insert into quyen_truy_cap(ma_nguoi_dung, ma_quyen) values(p_userID, 2);
    select row_count() into result;
end //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS remove_user_role //
CREATE PROCEDURE remove_user_role(IN p_userID varchar(50), OUT result integer)
begin
	set result := 0;
	delete from quyen_truy_cap where ma_nguoi_dung = p_userID and ma_quyen = 2;
    select row_count() into result;
end //
DELIMITER ;




