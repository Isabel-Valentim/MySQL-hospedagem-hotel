-- saber o número de pns efetivadas pelo conren
-- usar alçada
-- 69 - corec
-- 47 - comre


-- outra informação -  alçada 60 e 70 são de diretores

drop table if exists c3.2023; 
create table c3.2023 as
SELECT * FROM c3.`202301`
union all 
SELECT * FROM c3.`202302`
union all 
SELECT * FROM c3.`202303`
union all 
SELECT * FROM c3.`202304`
union all 
SELECT * FROM c3.`202305`
union all 
SELECT * FROM c3.`202306`
union all 
SELECT * FROM c3.`202307`
union all 
SELECT * FROM c3.`202308`
union all 
SELECT * FROM c3.`202309`
union all 
SELECT * FROM c3.`202310`
union all 
SELECT * FROM c3.`202311`
;

--


-- votos por matrícula do corem da alçada comre
-- se dois gerentes votaram na mesma? 

select matalc4, count(numeropn) from c3.`2023`
where produto = '0410'
and status in ('E', 'f')
and
(alcada1  = 47 or
alcada2  = 47 or
alcada3  = 47 or
alcada4  = 47 or
alcada5  = 47 or
alcada6  = 47 or
alcada7  = 47 or
alcada8  = 47 or
alcada9  = 47 or
alcada10  = 47 or
alcada11  = 47 or
alcada12  = 47 or
alcada13  = 47 or
alcada14  = 47 or
alcada15  = 47 or
alcada16  = 47 or
alcada17  = 47 or
alcada18  = 47 or
alcada19  = 47 or
alcada20  = 47)
and matalc4 in (
'030071518',
'030056632',
'030053226',
'030070376',
'030060338',
'030047242',
'030088542',
'030077648',
'030080061',
'030052327',
'030067421',
'030042976',
'030056810',
'030070422',
'030076552')
group by matalc4;


select * from c3.`2023`
where produto = '0410'
and status in ('E', 'f')
and
(alcada1  = 47 or
alcada2  = 47 or
alcada3  = 47 or
alcada4  = 47 or
alcada5  = 47 or
alcada6  = 47 or
alcada7  = 47 or
alcada8  = 47 or
alcada9  = 47 or
alcada10  = 47 or
alcada11  = 47 or
alcada12  = 47 or
alcada13  = 47 or
alcada14  = 47 or
alcada15  = 47 or
alcada16  = 47 or
alcada17  = 47 or
alcada18  = 47 or
alcada19  = 47 or
alcada20  = 47)
and (matalc4 in (
'030071518',
'030056632',
'030053226',
'030070376',
'030060338',
'030047242',
'030088542',
'030077648',
'030080061',
'030052327',
'030067421',
'030042976',
'030056810',
'030070422',
'030076552')
 or matalc5 in (
'030071518',
'030056632',
'030053226',
'030070376',
'030060338',
'030047242',
'030088542',
'030077648',
'030080061',
'030052327',
'030067421',
'030042976',
'030056810',
'030070422',
'030076552'));