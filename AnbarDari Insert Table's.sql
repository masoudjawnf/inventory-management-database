INSERT INTO Mahsool VALUES
(101, 'یخچال', 20000000, 3, 'Samsung', 'SN201', 'سفید', 'یخچال سامسونگ با سیستم خنک‌کننده هوشمند'),
(102, 'ماشین لباسشویی', 15000000, 2, 'LG', 'SN202', 'نقره‌ای', 'لباسشویی اتوماتیک ال‌جی با ظرفیت بالا'),
(103, 'مایکروویو', 7000000, 1, 'Panasonic', 'SN203', 'سیاه', 'مایکروویو پاناسونیک با قابلیت گریل'),
(104, 'جاروبرقی', 3000000, 3, 'Philips', 'SN204', 'قرمز', 'جاروبرقی با قدرت مکش بالا'),
(105, 'اجاق گاز', 2500000, 4, 'Bosch', 'SN205', 'استیل', 'اجاق گاز بوش با چهار شعله و فر');

INSERT INTO Anbar VALUES
(21, 101, 'Anbar Markazi', 'Sajad', 500),
(22, 102, 'Anbar Jonobi', 'Namaz', 300),
(23, 103, 'Anbar Shomali', 'Emam Hadi', 450),
(24, 104, 'Anbar Sharqi', 'Motahari', 200),select * from Sefareshat
(25, 105, 'Anbar Qarbi', 'Elahyie', 400);

INSERT INTO Anbardar VALUES
(1,21, 'Ali', '09150000000', 3000000, 'صبح'),
(2,22, 'Reza', '09150000001', 3500000, 'عصر'),
(3,23, 'Sara', '09150000002', 4000000, 'صبح'),
(4,24, 'Mona', '09150000003', 3200000, 'عصر'),
(5,25, 'Nima', '09150000004', 3300000, 'صبح');

INSERT INTO Nemaandegi  VALUES
(31, 'Nemayandegi Tehran', 'Tehran', '021-11111111'),
(32, 'Nemayandegi Shiraz', 'Shiraz', '071-22222222'),
(33, 'Nemayandegi Tabriz', 'Tabriz', '041-33333333'),
(34, 'Nemayandegi Mashhad', 'Mashhad', '051-44444444'),
(35, 'Nemayandegi Isfahan', 'Isfahan', '031-55555555');

INSERT INTO Marjooi  VALUES
(1, 101, 31, 10, '2023-10-01','2023-11-01', 'مشکل فنی'),
(2, 102, 32, 5, '2023-10-02','2023-12-01', 'عدم رضایت مشتری'),
(3, 103, 33, 3, '2023-10-03','2024-1-01', 'تاخیر در تحویل'),
(4, 104, 34, 7, '2023-8-04','2023-10-01', 'محصول معیوب'),
(5, 105, 35, 12, '2023-9-05','2023-9-08', 'عدم تطابق با سفارش');

INSERT INTO Mojoodi_kala  VALUES
(1, 101, 21, 50),
(2, 102, 22, 30),
(3, 103, 23, 45),
(4, 104, 24, 20),
(5, 105, 25, 40);

INSERT INTO Sefareshat  VALUES
(41, 31, '2023-09-01', 101, 5, 'در حال پردازش', 7500000),
(42, 32, '2023-09-02', 102, 10, 'انجام شده', 70000000),
(43, 33, '2023-09-03', 103, 3, 'در حال پردازش', 15000000),
(44, 34, '2023-09-04', 104, 4, 'لغو شده', 12000000),
(45, 35, '2023-09-05', 105, 2, 'در حال پردازش', 400000);

INSERT INTO Sefareshat_Takmil_Nashodeh VALUES
(1, 41, 3),
(2, 42, 0),
(3, 43, 1),
(4, 44, 4),
(5, 45, 1);

select * from Mahsool
select * from Anbar
select * from Anbardar
select * from Nemaandegi
select * from Marjooi
select * from Mojoodi_kala
select * from Sefareshat
select * from Sefareshat_Takmil_Nashodeh




