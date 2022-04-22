--ビューの作成

CREATE VIEW v_receipt AS 

SELECT rc.伝票番号, st.店舗名, st.住所, st.電話番号, rc.日付, rc.時間, rc.レジ番号, rc.責任者id, 
        abc.商品名, abc.単価, abc.値引率, abc.消費税率, ((abc.単価 + abc.値引率) * abc.消費税率 / 100) AS 消費税額, 
        ８％.sum AS ８％小計, １０％.sum AS １０％小計, ８％合計 + １０％合計 AS 合計金額
FROM receipt rc
JOIN store st 
ON rc.店舗id = st.店舗id
JOIN (
        SELECT id, 伝票番号, sales.商品ID, 個数, 消費税率, 商品名, 単価, 値引率 
        FROM sales
        JOIN goods
        ON sales.商品id = goods.商品id) AS abc

ON rc.伝票番号 = abc.伝票番号
JOIN (
        SELECT 伝票番号, sum((単価+値引率)*個数), trunc(sum(((単価+値引率)+trunc((単価+値引率)*0.08))*個数)) AS ８％合計 
        FROM sales
        JOIN goods
        ON sales.商品id = goods.商品id
        WHERE 消費税率 = 8
        GROUP BY 伝票番号) AS ８％
ON rc.伝票番号 = ８％.伝票番号
JOIN (
        SELECT 伝票番号, sum((単価+値引率)*個数), trunc(sum(((単価+値引率)+trunc((単価+値引率)*消費税率/100))*個数)) AS １０％合計 
        FROM sales
        JOIN goods
        ON sales.商品id = goods.商品id
        WHERE 消費税率 <> 8
        GROUP BY 伝票番号) AS １０％
ON rc.伝票番号 = １０％.伝票番号;


--ビューの実行
SELECT * FROM v_receipt 
WHERE 伝票番号 = 1;
