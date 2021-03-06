--r[Ìì¬

CREATE VIEW v_receipt AS 

SELECT rc.`[Ô, st.XÜ¼, st.Z, st.dbÔ, rc.út, rc.Ô, rc.WÔ, rc.ÓCÒid, 
        abc.¤i¼, abc.P¿, abc.lø¦, abc.ÁïÅ¦, ((abc.P¿ + abc.lø¦) * abc.ÁïÅ¦ / 100) AS ÁïÅz, 
        W.sum AS W¬v, PO.sum AS PO¬v, Wv + POv AS vàz
FROM receipt rc
JOIN store st 
ON rc.XÜid = st.XÜid
JOIN (
        SELECT id, `[Ô, sales.¤iID, Â, ÁïÅ¦, ¤i¼, P¿, lø¦ 
        FROM sales
        JOIN goods
        ON sales.¤iid = goods.¤iid) AS abc

ON rc.`[Ô = abc.`[Ô
JOIN (
        SELECT `[Ô, sum((P¿+lø¦)*Â), trunc(sum(((P¿+lø¦)+trunc((P¿+lø¦)*0.08))*Â)) AS Wv 
        FROM sales
        JOIN goods
        ON sales.¤iid = goods.¤iid
        WHERE ÁïÅ¦ = 8
        GROUP BY `[Ô) AS W
ON rc.`[Ô = W.`[Ô
JOIN (
        SELECT `[Ô, sum((P¿+lø¦)*Â), trunc(sum(((P¿+lø¦)+trunc((P¿+lø¦)*ÁïÅ¦/100))*Â)) AS POv 
        FROM sales
        JOIN goods
        ON sales.¤iid = goods.¤iid
        WHERE ÁïÅ¦ <> 8
        GROUP BY `[Ô) AS PO
ON rc.`[Ô = PO.`[Ô;


--r[ÌÀs
SELECT * FROM v_receipt 
WHERE `[Ô = 1;
