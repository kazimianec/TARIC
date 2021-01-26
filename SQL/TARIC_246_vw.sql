
alter view TARIC_246_vw
as

with t6_80_2 as (
select 
t6_10.CODE_2 [CODE_2],
t6_10.CODE_4 [CODE_4],
t6_10.CODE_6 [CODE_6],
t6_10.goods_code_6  [t6_10_goods_code_6],
t6_80.goods_code_6  [t6_80_goods_code_6],
t6_80.goods_code_6  [goods_CODE_6],
t6_80.indent        [indent],
t6_10.Description_6 +';'+ t6_80.Description_6 [Description_6]
from TARIC_6_vw t6_10, TARIC_6_vw t6_80 
where t6_10.Code_14 = '10' and t6_10.indent = '-'
and t6_80.Code_14 = '80' and t6_80.indent = '- -'
and t6_10.Code_2 = t6_80.Code_2 and t6_10.Code_4 = t6_80.Code_4
and substring(t6_10.Code_6, 1,1) = substring(t6_80.Code_6, 1,1)

),

t6_80_1 as
(
select 
t6_80.CODE_2 [CODE_2],
t6_80.CODE_4 [CODE_4],
t6_80.CODE_6 [CODE_6],
NULL [t6_10_goods_code_6],
t6_80.goods_code_6 [t6_80_goods_code_6],
t6_80.goods_code_6 [goods_CODE_6],
t6_80.indent        [indent],
t6_80.Description_6 [Description_6]

from TARIC_6_vw t6_80 
where t6_80.Code_14 = '80' and t6_80.indent = '-'
),

t6 as
(
select * from t6_80_1
union all
select * from t6_80_2
),

t246 as
(
select 
 t6.CODE_2
,t6.CODE_4
,t6.CODE_6 
,t6.goods_CODE_6
,t6.indent
,t6.Description_6 [Description_6]
,t4.Description_4 + '; ' + t6.Description_6 [Description_46]
,t2.Description_2 +'; ' + t4.Description_4 + '; ' + t6.Description_6 [Description_246]
from t6, TARIC_4_vw t4, TARIC_2_vw t2
where 
t2.CODE_2 = t4.CODE_2
and
t4.CODE_14 <>'10' and
t6.CODE_2 = t4.CODE_2 and t6.CODE_4 = t4.CODE_4
and t6.CODE_2 = t2.CODE_2
)
select * from t246


/*
select * from TARIC_246_vw

select count(*), goods_CODE_6, indent
from TARIC_246_vw
group by goods_CODE_6, indent
having count(*) > 1
*/