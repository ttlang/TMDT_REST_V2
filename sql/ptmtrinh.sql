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
insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập Trình Visual C# Căn Bản', 'C# thông dụng ở chỗ 
 nó rất dễ học, dễ nắm bắt và với một trình soạn thảo trực quan nó cho phép chúng ta dễ dàng thiết kế giao diện người dùng,
 kiểm tra lỗi.....', 'ND1', 0, 'NCO', 'ND2', 'CD1', 1, 1200, 'https://drive.google.com/uc?id=1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3',
 'Để có thể giúp các bạn làm quen với ngôn ngữ C# , ngày hôm nay tôi xin gửi đến các bạn khóa học Lập Trình C# Căn Bản. Mục đích của khóa học giúp cho
 các bạn làm quen với môi trường C# và làm sao để có thể tạo ra một ứng dụng với C#.');
insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập trình C/C++ căn bản', 'Sau khi hoàn thành khóa học lập trình C, C++ căn bản này bạn có thể làm
 quen được với môi trường làm việc của C/C++ và có thể làm những bài toán đơn giản với C/C++ ở mức khó hơn.', 'ND4', 1000000, 'CO', 'ND2', 'CD1', 1, 500,
 'https://drive.google.com/uc?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6', 'Mục tiêu của C++ là tiếp cận những ý tưởng của phương pháp luận hướng đối tượng và trừu tượng dữ liệu. C++
 là một ngôn ngữ lập trình tiến tiến, mạnh trong các ngôn ngữ lập trình hiện nay, nó được sử dụng bởi hàng triệu lập trình viên trên thế giới. Các đặc tính của C ++ cho phép người
 lập trình xây dựng những thư viện phần mềm có chất lượng cao phục vụ những đề án lớn.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập Trình JavaScript Cơ Bản', 'JavaScript là một ngôn ngữ lập trình dựa trên nguyên mẫu với cú pháp phát
 triển từ C. Giống như C, JavaScript có khái niệm từ khóa, do đó, JavaScript gần như không thể được mở rộng.', 'ND3', 800000, 'CO', 'ND1', 'CD1', 1, 300,
 'https://drive.google.com/uc?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7', 'Nếu bạn là mới bắt đầu làm quen với JavaScript thì khóa học lập trình Javascript cơ bản này
 sẽ giúp các bạn tìm hiểu về các thao tác , các kiến thức nền tảng về JavaScript.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập trình JAVA căn bản', 'Java không còn là một ngôn ngữ xa lạ với cộng đồng lập trình. Với việc có lợi thế
 khi được sinh ra với tiêu chí “Write Once, Run Anywhere” (WORA) – tức là “Viết một lần, thực thi khắp nơi”', 'ND2', 1600000, 'CO', 'ND4', 'CD1', 1, 600,
 'https://drive.google.com/uc?id=1EXlrZzARsdz4GKrWmzH9wI0-qrrnpliw', 'Hòa nhịp vào thế mạnh của Java, khóa học “Lập trình JAVA căn bản” với mục đích cung cấp cho 
 các bạn học viên có những kiến thức cơ bản nhất về nguyên lý lập trình bằng ngôn ngữ Java, qua đó giúp các bạn có một nền tảng vững chắc về Java và có thể dùng ngôn
 ngữ này để lập trình với các Engine hay Framework nâng cao.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập Trình Android Qua Ứng Dụng OrderFood', 'Khóa học sẽ giúp bạn hiểu được cách thức xây dựng được ứng dụng
 cũng như cách thức phân tích yêu cầu của khách hàng.', 'ND3', 0, 'NCO', 'ND4', 'CD2', 1, 600,
 'https://drive.google.com/uc?id=1cohNd-B54V1Q8pszU-Hcqx2nLG0K5wAi', 'Bạn  có thể biết được quy trình khi viết một ứng dụng nên bắt đầu và kết thúc từ đâu, bạn có thể
 áp dụng những điều đã học cho nhiều ứng dụng khác nhau. Vậy nên các bạn hãy tự tin đăng ký khóa học để có thể làm nên một ứng dụng hoàn chỉnh mang phong cách riêng
 của chính bản thân mình nhé !');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('App ANDROID giống App Mua sắm LAZADA', 'Với sự phát triển ngày càng mạnh và được ứng dụng ngày càng nhiều vào 
 thực tế của các ứng dụng Android, chính vì điều đó đã làm cho nó trở thành một ngành hot nhất hiện nay và thu hút được nhiều sự quan tâm của các bạn trẻ đam mê lập trình.'
 , 'ND4', 900000, 'CO', 'ND1', 'CD2', 1, 1000,
 'https://drive.google.com/uc?id=1_9SaNoQ8gBW5byjHQL5wwJygCA9abho3', 'Thông qua khóa học Lazada này các bạn sẽ nắm bắt được cách vận dụng các kiến thức cơ bản của android
 để hoàn thành ứng dụng, ngoài ra các bạn sẽ còn biết được cách tổ chức code theo mô hình MVP pattern để có thể quản lý code tốt hơn, không những vậy các bạn sẽ nắm bắt được
 cách thức tạo Webservice với cả 2 ngôn ngữ lập trình Web hot nhất hiện nay là PHP và ASP.NET cũng như cách trao đổi dữ liệu của Webservice và ứng dụng Android.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Game Tôm Cua Bầu Cá Android', 'Các bạn có muốn tự mình làm 1 game bầu cua trên android không nào, với những kiến thức
 căn bản từ các khóa Android Căn Bản, Media Player Trong Android và CSDL', 'ND2', 800000, 'CO', 'ND3', 'CD2', 1, 1500,
 'https://drive.google.com/uc?id=1ZAJxeJDGXE_FJM111kXOjABqcIPYZK6y', 'Khi đến với khóa học này các bạn còn có thể  tiếp thu thêm các kiến thức mớic về Handler, Timer,
 CountDown, Animation List và ngoài ra các bạn còn biết dc cách áp dụng các kiến thức cũ đã được học để hoàn chỉnh khả năng của chính mình. Hãy đến với khóa học này và tạo ra
 game bầu cua cho chính mình bạn nhé');
insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Tạo ứng dụng GALLERY trên Android', 'Hệ điều hành Android hiện nay là một hệ điều hành có số lượng người dùng lớn, với
 các ưu điểm vượt trội của nó. Công nghệ càng phát triển, và dung lượng bộ nhớ trên các thiết bị Android ngày càng được mở rộng để đáp ứng tốt cho người dùng.', 'ND2',
 0, 'NCO', 'ND1', 'CD2', 1, 1700, 'https://drive.google.com/uc?id=19irqb2vz_7xTxJ4ePfRg3VQER-5ROx02', 'Sau khi hoàn thành khóa học các bạn có thể nắm được các kiến thức
 về Fragment, Tab, ViewPager, Content Provider… Và ngoài ra các bạn cũng sẽ biết được cách làm một ứng dụng Gallery đơn giản bằng các class trên. Ngoài ra các bạn có thể kết học
 ViewPager và Tab để làm ra một ứng dụng đọc báo hay tin tức chỉ với 1 cái vuốt nhẹ trên màn hình.');
 
-- select cd.* from chu_de cd limit 10 offset 10;
-- select * from chu_de c order by convert(substring_index(c.ma_chu_de,'CD',-1),unsigned int) asc limit 10 offset 0;
insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Front-End: Cốt lõi thiết kế website với HTML, CSS, JavaScript , Jquery, Responsive, Bootstrap, dàn layout từ Photoshop',
 'Hiện nay, thiết kế website là rất cần thiết cho doanh nghiệp, website mang đến những thông tin cập nhật nhanh nhất về các dịch vụ của doanh nghiệp. Với sự phát triển của cơ sở
 hạ tầng, băng thông mạnh hơn hẳn, các phần mềm cũng dẫn chuyển sang nền tảng web.', 'ND2', 0, 'NCO', 'ND1', 'CD3', 1, 1300, 'https://drive.google.com/uc?id=1cE8dHR4FOswwH0INT4S5db06ofMztEUN',
 'Khoá học cũng mang đến cho các bạn những khái niệm cơ bản và quan trọng của các thẻ HTML, CSS, javascript, jquery,…, trong từng bài học, tôi cố gắng trình bày kèm theo nhiều ví dụ trực quan,
 một số layout dạng thực tế để các bạn dễ tiếp cận và vận dụng. Một trong những khái niệm và kỹ thuật quan trọng như boostrap web, responsive web là gì cũng được tôi trình bày và vận dụng trong khoá học này.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập trình ASP.NET MVC5 toàn tập qua dự án Web bán hàng', 'Đây là một trong những đề tài rất hot hiện nay nhờ vào sự hỗ
 trợ mạnh mẽ của Microsoft với ASP.NET cùng với mô hình lập trình kinh điển MVC, mà nay đã được Microsoft tích hợp và nâng cấp thành một framework với phiên bản thứ 5, hỗ trợ rất
 nhiều tính năng và tiện ích cho người lập trình.', 'ND1', 600000, 'CO', 'ND4', 'CD3', 1, 1000, 'https://drive.google.com/uc?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', 'Đây hứa hẹn
 sẽ là một sản phẩm cực kì có lợi cho các bạn học viên khi các bạn đi tìm việc làm. Các bạn sẽ có những sản phẩm thực tế để show cho nhà tuyển dụng để chứng minh khả năng của mình.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Làm dự án thực tế với ASP.NET MVC, WebAPI và AngularJS', 'Với một khóa học tổng hợp và chuyên sâu các kỹ năng cần thiết để làm
 dự án các bạn được học cả backend với C#, Entity Framework, các design pattern đồng thời cả những kiến thức frontend như Jquery, AngularJs.', 'ND4', 1000000, 'CO', 'ND2', 'CD3', 1, 1500,
 'https://drive.google.com/uc?id=1NWoNxLYPHp5FzyIQ-X9h1YqtLl21tSEA', 'Với mong muốn tạo ra giá trị cao nhất cho các bạn khi tham gia khóa học này, mình đã cố gắng đưa những best practices
 vào dự án giúp các bạn dễ dàng thích nghi với môi trường công việc, dễ dàng mở rộng cũng như đáp ứng các nhu cầu khác nhau của khách hàng trong tương lai.');
 insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Lập trình php căn bản đến nâng cao - web bán hàng', 'PHP là một ngôn ngữ kịch bản phía máy chủ nguồn mở  được sử dụng để phát triển
 các trang web. PHP cho sử dụng miễn phí và tương thích với các nền tảng khác nhau bao gồm cả Linux, UNIX, Windows, và Mac OS X.', 'ND2', 0, 'NCO', 'ND3', 'CD3', 1, 1500,
 'https://drive.google.com/uc?id=1TwIKDlIhA6B918DXYvplEWtueSvq6OvT', 'Trong khóa học này, bên cạnh cung cấp các kiến thức nền tảng, giảng viên cung cấp đầy đủ các kiến thực lập trình nâng
 cao của PHP. Cuối cùng, giảng viên cũng hướng dẫn đầy đủ các thao tác từ việc thiết kế cơ sở dữ liệu, thiết kế website, chọn template, xử lý bootstrap, responsive web, xây dựng hầu hết các
 tính năng của một website bán hàng theo xu thế hiện nay.');
  insert into khoa_hoc(tieu_de, mo_ta, ma_nguoi_dung, don_gia, ma_loai_khoa_hoc, id_admin_duyet, ma_chu_de, trang_thai,
 luot_truy_cap, anh_dai_dien, chi_tiet_khoa_hoc) values('Front-End: Làm dự án thực tế với Angular 2 + Web API - Restful Service', 'Angular 2 đã phát hành và được nhiều công ty sử dụng. Việc nắm rõ
 Angular 2 giúp bạn thực hiện được các dự án lớn và khả năng tìm được việc làm rất lớn.', 'ND3', 1200000, 'CO', 'ND1', 'CD3', 1, 2500, 'https://drive.google.com/uc?id=1xPdwqRs8cQxSqfJPidX6gsCncUWgN2i2',
 'Khóa học Angular 2 sẽ giúp các bạn nắm rõ các kiến thức từ căn bản đến chuyên sâu về Angular. Trong khóa học cũng sử dụng công nghệ Web Service - Web API để các bạn tương tác với backend như một phần của hệ thống.');
 
 -- insert into chuong_muc
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH3', 'Làm quen với Visual Studio 2010', 'Làm quen với Visual Studio 2010', 'Làm quen với Visual Studio 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH3', 'Kiểu dữ liệu và biến', 'Kiểu dữ liệu và biến', 'Kiểu dữ liệu và biến');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH3', 'Các câu lệnh điều kiện', 'Các câu lệnh điều kiện', 'Các câu lệnh điều kiện');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH4', 'Source code và slide C/C++', 'Source code và slide C/C++', 'Source code và slide C/C++');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH4', 'Làm quen với C/C++', 'Làm quen với C/C++', 'Làm quen với C/C++');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH5', 'Giới thiệu Công Cụ JsBin', 'Giới thiệu Công Cụ JsBin', 'Giới thiệu Công Cụ JsBin');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH6', 'Giới thiệu và cài đặt', 'Giới thiệu và cài đặt', 'Giới thiệu và cài đặt');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH6', 'Làm quen với Java', 'Làm quen với Java', 'Làm quen với Java');
 /*insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');
 insert into chuong_muc(ma_khoa_hoc, tieu_de, noi_dung, tom_tat) values('KH2', 'CHƯƠNG 1: LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010', 'LÀM QUEN VỚI VISUAL STUDIO 2010');*/
 
 --  insert into bai_hoc
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Giới thiệu khóa học', 'Giới thiệu khóa học', 'KH3CH5', 400);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Giới thiệu Visual C# 2010 và tạo chương trình Winform đầu tiên', 'Giới thiệu Visual C# 2010 và tạo chương trình Winform đầu tiên', 'KH3CH5', 700);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Thuộc tính của form và một số control cơ bản', 'Thuộc tính của form và một số control cơ bản', 'KH3CH5', 500);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Kiểu dữ liệu đã tích hợp sẵn (built-in) trong C#', 'Kiểu dữ liệu đã tích hợp sẵn (built-in) trong C#', 'KH3CH6', 800);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Biến (variable) trong C#', 'Biến (variable) trong C#', 'KH3CH6', 700);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Các toán tử (operator) phổ biến trong C#', 'Các toán tử (operator) phổ biến trong C#', 'KH3CH6', 466);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Câu lệnh điều kiện if', 'Câu lệnh điều kiện if', 'KH3CH7', 560);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Câu lệnh điều kiện if - else', 'Câu lệnh điều kiện if - else', 'KH3CH7', 900);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Câu lệnh điều kiện if - else if', 'Câu lệnh điều kiện if - else if', 'KH3CH7', 1000);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Slide bài giảng C/C++ ', 'Slide bài giảng C/C++ ', 'KH4CH8', 400);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Source code C/C++ ', 'Source code C/C++ ', 'KH4CH8', 1200);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Làm quen với cấu trúc C/C++', 'Làm quen với cấu trúc C/C++', 'KH4CH9', 400);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Các bài tập C/C++ cơ bản', 'Các bài tập C/C++ cơ bản', 'KH4CH9', 700);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Tìm hiểu cấu trúc if else và switch case', 'Tìm hiểu cấu trúc if else và switch case', 'KH4CH9', 1400);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values(' Giới thiệu công cụ JsBin', ' Giới thiệu công cụ JsBin', 'KH5CH10', 400);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Hướng dẫn cách khai báo biến (Varriable)', 'Hướng dẫn cách khai báo biến (Varriable)', 'KH5CH10', 500);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values(' Hướng dẫn sử dụng thẻ Input ', ' Hướng dẫn sử dụng thẻ Input ', 'KH5CH10', 600);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Cài đặt chương trình và Tạo ứng dụng “Helloworld” đầu tiên', 'Cài đặt chương trình và Tạo ứng dụng “Helloworld” đầu tiên', 'KH6CH11', 1000);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Biến và kiểu dữ liệu', 'Biến và kiểu dữ liệu', 'KH6CH12', 500);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Toán tử toán học trong Java', 'Toán tử toán học trong Java', 'KH6CH12', 400);
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('Thực hành toán tử điều kiện IF', 'Thực hành toán tử điều kiện IF', 'KH6CH12', 800);
 /*insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');
 insert into bai_hoc(tieu_de, noi_dung, ma_chuong_muc, luot_xem) values('BÀI 1.1. GIỚI THIỆU KHÓA HỌC', 'GIỚI THIỆU KHÓA HỌC', 'KH2CH5', '400');*/
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH1CH1BH1', 'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH1CH1BH2', 'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH1CH1BH3', 'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH1CH1BH4', 'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH1CH1BH5', 'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH1CH2BH6', 'https://drive.google.com/open?id=1jYY66NPMAiEwerxafbKFrSsniWJcj0lo', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH3CH5BH28', 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH3CH5BH29', 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH3CH5BH30', 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH3CH5BH8', 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH3CH6BH10', 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH3CH6BH11', 'https://drive.google.com/file/d/1U-PJRNMY6GYQxFbW87F6RJYy-np-5dw3/view', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH4CH8BH16', 'https://drive.google.com/open?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH4CH8BH17', 'https://drive.google.com/open?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH4CH8BH37', 'https://drive.google.com/open?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH4CH8BH38', 'https://drive.google.com/open?id=1uOMrAbYxL-y7qaBdhGH8320S7uGXEKA6', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH5CH10BH21', 'https://drive.google.com/open?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7', now());
insert into dinh_kem_bai_hoc(ma_bai_hoc, noi_dung, ngay_them) values('KH5CH10BH22', 'https://drive.google.com/open?id=1qGdpMH8Eorl_S-ZdzeFqe4CBwlftj_B7', now());