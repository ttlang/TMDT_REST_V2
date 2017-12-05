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

-- insert into chu_de
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Lập trình web', 'Hướng dẫn lập trình web', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Lập trình game', 'Hướng dẫn lập trình game', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Lập trình mạng', 'Hướng dẫn lập trình mạng', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Lập trình nền tảng', 'Hướng dẫn lập trình nền tảng', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Lập trình phần mềm', 'Hướng dẫn lập trình phần mềm', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('SEO', 'Hướng dẫn SEO', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('JavaScript', 'Hướng dẫn lập trình JavaScript', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('React', 'Hướng dẫn lập trình React', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Angular', 'Hướng dẫn lập trình Angular', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Node.js', 'Hướng dẫn lập trình Node.js', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('CSS', 'Hướng dẫn tạo những trang web kinh ngạc với CSS', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('PHP', 'Hướng dẫn lập trình PHP', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('HTML5', 'Hướng dẫn tạo trang web với HTML5', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Java', 'Hướng dẫn lập trình Java', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('REST API', 'Hướng dẫn lập trình REST API', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Python', 'Hướng dẫn lập trình Python', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Unit Testing', 'Hướng dẫn Unit Testing', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('MySQL', 'Hướng dẫn lập trình MySQL', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('SQL Server', 'Hướng dẫn lập trình SQL Server', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Oracle SQL', 'Hướng dẫn lập trình Oracle SQL', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Oracle Certification', 'Hướng dẫn Oracle Certification', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('SQL', 'Hướng dẫn lập trình SQL', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Xamarin', 'Hướng dẫn lập trình Xamarin', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('SQL', 'Hướng dẫn lập trình SQL', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('C#', 'Hướng dẫn lập trình C#', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Data Analysis', 'Hướng dẫn Data Analysis', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Object Oriented Programming', 'Hướng dẫn lập trình hướng đối tượng', 1);
insert into chu_de(tieu_de, mo_ta, trang_thai) values('Lập trình AngularJS', 'Lập trình AngularJS', 1);

-- insert into khoa_hoc
insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập Trình Visual C# Căn Bản', 'C# thông dụng ở chỗ 
 nó rất dễ học, dễ nắm bắt và với một trình soạn thảo trực quan nó cho phép chúng ta dễ dàng thiết kế giao diện người dùng,
 kiểm tra lỗi.....', 'ND1', NOW(), 0, 'NCO', 'ND2', 'CD1', 1, 1200, 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view',
 'Để có thể giúp các bạn làm quen với ngôn ngữ C# , ngày hôm nay tôi xin gửi đến các bạn khóa học Lập Trình C# Căn Bản. Mục đích của khóa học giúp cho
 các bạn làm quen với môi trường C# và làm sao để có thể tạo ra một ứng dụng với C#.');
insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập trình C/C++ căn bản', 'Sau khi hoàn thành khóa học lập trình C, C++ căn bản này bạn có thể làm
 quen được với môi trường làm việc của C/C++ và có thể làm những bài toán đơn giản với C/C++ ở mức khó hơn.', 'ND4', NOW(), 1000000, 'CO', 'ND2', 'CD1', 1, 500,
 'https://drive.google.com/open?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6',
 'Mục tiêu của C++ là tiếp cận những ý tưởng của phương pháp luận hướng đối tượng và trừu tượng dữ liệu. C++ là một ngôn ngữ lập trình tiến tiến, mạnh trong các
 ngôn ngữ lập trình hiện nay, nó được sử dụng bởi hàng triệu lập trình viên trên thế giới. Các đặc tính của C ++ cho phép người lập trình xây dựng những thư viện
 phần mềm có chất lượng cao phục vụ những đề án lớn.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập Trình JavaScript Cơ Bản', 'JavaScript là một ngôn ngữ lập trình dựa trên nguyên mẫu với cú pháp phát
 triển từ C. Giống như C, JavaScript có khái niệm từ khóa, do đó, JavaScript gần như không thể được mở rộng.', 'ND3', NOW(), 800000, 'CO', 'ND1', 'CD1', 1, 300,
 'https://drive.google.com/open?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7', 'Nếu bạn là mới bắt đầu làm quen với JavaScript thì khóa học lập trình Javascript cơ bản này
 sẽ giúp các bạn tìm hiểu về các thao tác , các kiến thức nền tảng về JavaScript.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập trình JAVA căn bản', 'Java không còn là một ngôn ngữ xa lạ với cộng đồng lập trình. Với việc có lợi thế
 khi được sinh ra với tiêu chí “Write Once, Run Anywhere” (WORA) – tức là “Viết một lần, thực thi khắp nơi”', 'ND2', NOW(), 1600000, 'CO', 'ND4', 'CD1', 1, 600,
 'https://drive.google.com/open?id=1EXlrZzARsdz4GKrWmzH9wI0-qrrnpliw', 'Hòa nhịp vào thế mạnh của Java, khóa học “Lập trình JAVA căn bản” với mục đích cung cấp cho 
 các bạn học viên có những kiến thức cơ bản nhất về nguyên lý lập trình bằng ngôn ngữ Java, qua đó giúp các bạn có một nền tảng vững chắc về Java và có thể dùng ngôn
 ngữ này để lập trình với các Engine hay Framework nâng cao.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập Trình Android Qua Ứng Dụng OrderFood', 'Khóa học sẽ giúp bạn hiểu được cách thức xây dựng được ứng dụng
 cũng như cách thức phân tích yêu cầu của khách hàng.', 'ND3', NOW(), 0, 'NCO', 'ND4', 'CD2', 1, 600,
 'https://drive.google.com/open?id=1cohNd-B54V1Q8pszU-Hcqx2nLG0K5wAi', 'Bạn  có thể biết được quy trình khi viết một ứng dụng nên bắt đầu và kết thúc từ đâu, bạn có thể
 áp dụng những điều đã học cho nhiều ứng dụng khác nhau. Vậy nên các bạn hãy tự tin đăng ký khóa học để có thể làm nên một ứng dụng hoàn chỉnh mang phong cách riêng
 của chính bản thân mình nhé !');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('App ANDROID giống App Mua sắm LAZADA', 'Với sự phát triển ngày càng mạnh và được ứng dụng ngày càng nhiều vào 
 thực tế của các ứng dụng Android, chính vì điều đó đã làm cho nó trở thành một ngành hot nhất hiện nay và thu hút được nhiều sự quan tâm của các bạn trẻ đam mê lập trình.'
 , 'ND4', NOW(), 900000, 'CO', 'ND1', 'CD2', 1, 1000,
 'https://drive.google.com/open?id=1_9SaNoQ8gBW5byjHQL5wwJygCA9abho3', 'Thông qua khóa học Lazada này các bạn sẽ nắm bắt được cách vận dụng các kiến thức cơ bản của android
 để hoàn thành ứng dụng, ngoài ra các bạn sẽ còn biết được cách tổ chức code theo mô hình MVP pattern để có thể quản lý code tốt hơn, không những vậy các bạn sẽ nắm bắt được
 cách thức tạo Webservice với cả 2 ngôn ngữ lập trình Web hot nhất hiện nay là PHP và ASP.NET cũng như cách trao đổi dữ liệu của Webservice và ứng dụng Android.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, ngay_tao, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Game Tôm Cua Bầu Cá Android', 'các bạn có muốn tự mình làm 1 game bầu cua trên android không nào, với những kiến thức
 căn bản từ các khóa Android Căn Bản, Media Player Trong Android và CSDL ', 'ND2', NOW(), 800000, 'CO', 'ND3', 'CD2', 1, 1500,
 'https://drive.google.com/open?id=1ZAJxeJDGXE_FJM111kXOjABqcIPYZK6y', 'ThôngKhi đến với khóa học này các bạn còn có thể  tiếp thu thêm các kiến thức mớic về Handler, Timer,
 CountDown, Animation List và ngoài ra các bạn còn biết dc cách áp dụng các kiến thức cũ đã được học để hoàn chỉnh khả năng của chính mình. Hãy đến với khóa học này và tạo ra
 game bầu cua cho chính mình bạn nhé');
