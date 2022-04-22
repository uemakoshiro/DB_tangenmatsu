--�r���[�̍쐬

CREATE VIEW v_receipt AS 

SELECT rc.�`�[�ԍ�, st.�X�ܖ�, st.�Z��, st.�d�b�ԍ�, rc.���t, rc.����, rc.���W�ԍ�, rc.�ӔC��id, 
        abc.���i��, abc.�P��, abc.�l����, abc.����ŗ�, ((abc.�P�� + abc.�l����) * abc.����ŗ� / 100) AS ����Ŋz, 
        �W��.sum AS �W�����v, �P�O��.sum AS �P�O�����v, �W�����v + �P�O�����v AS ���v���z
FROM receipt rc
JOIN store st 
ON rc.�X��id = st.�X��id
JOIN (
        SELECT id, �`�[�ԍ�, sales.���iID, ��, ����ŗ�, ���i��, �P��, �l���� 
        FROM sales
        JOIN goods
        ON sales.���iid = goods.���iid) AS abc

ON rc.�`�[�ԍ� = abc.�`�[�ԍ�
JOIN (
        SELECT �`�[�ԍ�, sum((�P��+�l����)*��), trunc(sum(((�P��+�l����)+trunc((�P��+�l����)*0.08))*��)) AS �W�����v 
        FROM sales
        JOIN goods
        ON sales.���iid = goods.���iid
        WHERE ����ŗ� = 8
        GROUP BY �`�[�ԍ�) AS �W��
ON rc.�`�[�ԍ� = �W��.�`�[�ԍ�
JOIN (
        SELECT �`�[�ԍ�, sum((�P��+�l����)*��), trunc(sum(((�P��+�l����)+trunc((�P��+�l����)*����ŗ�/100))*��)) AS �P�O�����v 
        FROM sales
        JOIN goods
        ON sales.���iid = goods.���iid
        WHERE ����ŗ� <> 8
        GROUP BY �`�[�ԍ�) AS �P�O��
ON rc.�`�[�ԍ� = �P�O��.�`�[�ԍ�;


--�r���[�̎��s
SELECT * FROM v_receipt 
WHERE �`�[�ԍ� = 1;
