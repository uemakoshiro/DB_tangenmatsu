INSERT INTO store VALUES
(1, '日本橋店', '東京都中央区日本橋1-1-1','03-111-2222'),
(2, '東京タワー前店', '東京都中央区日本橋2-2-2','03-222-3333');

INSERT INTO goods VALUES
(1,'レジ袋',3,null),
(2,'いろはす天然水',100,10),
(3,'ツナマヨおにぎり',120,null),
(4,'ファブリーズ',400,null),
(5,'カロリーメート',210,null);

INSERT INTO pay_method VALUES
(1,'PayPay支払'),
(2,'クレジット支払'),
(3,'現金支払'),
(4,'ポイント支払'),
(5,'Edy支払');
/*
INSERT INTO employee VALUES
(1,'001','田中'),
(1,'002','中山'),
(1,'003','山城'),
(2,'001','城田');
*/

INSERT INTO receipt VALUES
(1,1,'2022/04/01','19:00:00',1,'001'),
(2,2,'2022/04/01','19:10:00',1,'001');

INSERT INTO sales VALUES
(1,1,2,1,8),
(2,1,3,1,8),
(3,1,4,1,10),
(4,1,1,1,0),
(5,2,5,3,8);

INSERT INTO pay VALUES
(1,1,1,null,null,null,null),
(2,2,2,null,null,null,null);
