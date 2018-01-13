DELIMITER //
DROP PROCEDURE IF EXISTS proc_thong_ke_theo_chu_de //
CREATE PROCEDURE proc_thong_ke_theo_chu_de(IN p_rows_limit integer, OUT totalCourse integer) 
begin
	select cd.tieu_de, count(kh.ma_khoa_hoc) as SL 
	from chu_de cd left outer join khoa_hoc kh on cd.ma_chu_de = kh.ma_chu_de
	group by cd.ma_chu_de
	order by count(kh.ma_khoa_hoc) desc
	limit p_rows_limit;

	select  sum(TEMP.SL) from  (
		select count(kh.ma_khoa_hoc)  as SL from chu_de cd left outer join khoa_hoc kh on cd.ma_chu_de = kh.ma_chu_de
		group by cd.ma_chu_de order by  count(kh.ma_khoa_hoc) desc) TEMP into totalCourse;
end //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS proc_insert_user_role //
CREATE PROCEDURE proc_insert_user_role(IN p_userID varchar(50), OUT result integer)
begin
	set result := 0;
	insert into quyen_truy_cap(ma_nguoi_dung, ma_quyen) values(p_userID, 2);
    select row_count() into result;
end //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS proc_remove_user_role //
CREATE PROCEDURE proc_remove_user_role(IN p_userID varchar(50), OUT result integer)
begin
	set result := 0;
	delete from quyen_truy_cap where ma_nguoi_dung = p_userID and ma_quyen = 2;
    select row_count() into result;
end //
DELIMITER ;




