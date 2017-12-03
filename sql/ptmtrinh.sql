-- procedure
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

-- insert into chu_de --
insert into chu_de values(null, 'Lập trình web', 'Hướng dẫn lập trình web', 1);
insert into chu_de values(null, 'Lập trình game', 'Hướng dẫn lập trình game', 1);
insert into chu_de values(null, 'Lập trình mạng', 'Hướng dẫn lập trình mạng', 1);
insert into chu_de values(null, 'Lập trình nền tảng', 'Hướng dẫn lập trình nền tảng', 1);
insert into chu_de values(null, 'Lập trình phần mềm', 'Hướng dẫn lập trình phần mềm', 1);
insert into chu_de values(null, 'SEO', 'Hướng dẫn SEO', 1);
insert into chu_de values(null, 'JavaScript', 'Hướng dẫn lập trình JavaScript', 1);
insert into chu_de values(null, 'React', 'Hướng dẫn lập trình React', 1);
insert into chu_de values(null, 'Angular', 'Hướng dẫn lập trình Angular', 1);
insert into chu_de values(null, 'Node.js', 'Hướng dẫn lập trình Node.js', 1);
insert into chu_de values(null, 'CSS', 'Hướng dẫn tạo những trang web kinh ngạc với CSS', 1);
insert into chu_de values(null, 'PHP', 'Hướng dẫn lập trình PHP', 1);
insert into chu_de values(null, 'HTML5', 'Hướng dẫn tạo trang web với HTML5', 1);
insert into chu_de values(null, 'Java', 'Hướng dẫn lập trình Java', 1);
insert into chu_de values(null, 'REST API', 'Hướng dẫn lập trình REST API', 1);
insert into chu_de values(null, 'Python', 'Hướng dẫn lập trình Python', 1);
insert into chu_de values(null, 'Unit Testing', 'Hướng dẫn Unit Testing', 1);
insert into chu_de values(null, 'MySQL', 'Hướng dẫn lập trình MySQL', 1);
insert into chu_de values(null, 'SQL Server', 'Hướng dẫn lập trình SQL Server', 1);
insert into chu_de values(null, 'Oracle SQL', 'Hướng dẫn lập trình Oracle SQL', 1);
insert into chu_de values(null, 'Oracle Certification', 'Hướng dẫn Oracle Certification', 1);
insert into chu_de values(null, 'SQL', 'Hướng dẫn lập trình SQL', 1);
insert into chu_de values(null, 'Xamarin', 'Hướng dẫn lập trình Xamarin', 1);
insert into chu_de values(null, 'SQL', 'Hướng dẫn lập trình SQL', 1);
insert into chu_de values(null, 'C#', 'Hướng dẫn lập trình C#', 1);
insert into chu_de values(null, 'Data Analysis', 'Hướng dẫn Data Analysis', 1);
insert into chu_de values(null, 'Object Oriented Programming', 'Hướng dẫn lập trình hướng đối tượng', 1);