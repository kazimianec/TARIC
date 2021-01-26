use DOTA
go
alter view TARIC_C6_DESCRIPTIONS_vw
as


select
t246.CODE_2,
t246.CODE_4,
t246.CODE_6,
t246.goods_CODE_6,
t246.Description_46,
t246.Description_246,
t246.Description_46 +' '+ isnull( cd.CONCAT_DESCRIPTION, '') [Description_46_concat],
t246.Description_246 + ' '+ isnull(cd.CONCAT_DESCRIPTION, '') [Description_246_concat]  
from  TARIC_246_vw t246
left join CONCAT_DESCRIPTION_6_10_vw cd on substring(t246.goods_CODE_6, 1,6) = cd.CODE_2+cd.CODE_4+cd.CODE_6 



select * from TARIC_C6_DESCRIPTIONS_vw

select count(*), goods_CODE_6
from TARIC_C6_DESCRIPTIONS_vw
group by goods_CODE_6
having count(*) = 1

--CODE_2, CODE_4, CODE_6, goods_CODE_6, Description_46, Description_246, Description_46_concat, Description_246_concat

