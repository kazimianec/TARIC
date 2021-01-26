
with
TARIC_2 as
(
select 
[goods_code] [goods_code_2],
[Description] [Description_2]
, CODE_2
, CODE_4
, CODE_6
, CODE_8
, CODE_10
, CODE_14
from TARIC 
where Hier__pos_ = 2),

TARIC_4 as
(
select 
[goods_code] [goods_code_4],
[Description] [Description_4]
, CODE_2
, CODE_4
, CODE_6
, CODE_8
, CODE_10
, CODE_14
from TARIC 
where Hier__pos_ = 4),

TARIC_6 as
(
select 
[goods_code] [goods_code_6],
[Description] [Description_6]
, CODE_2
, CODE_4
, CODE_6
, CODE_8
, CODE_10
, CODE_14
from TARIC 
where Hier__pos_ = 6),

TARIC_8 as
(
select 
[goods_code] [goods_code_8],
[Description] [Description_8]
, CODE_2
, CODE_4
, CODE_6
, CODE_8
, CODE_10
, CODE_14
from TARIC 
where Hier__pos_ = 8),

TARIC_10 as
(
select 
[goods_code] [goods_code_10],
[Description] [Description_10]
, CODE_2
, CODE_4
, CODE_6
, CODE_8
, CODE_10
, CODE_14
from TARIC 
where Hier__pos_ = 10)



select '"'+ Description_2 +' ' + Description_4  + ' ' +  Description_6 +' ' +  ' ' +  Description_8 +' ' + ' ' +  Description_10 +'",'
from TARIC_2, TARIC_4, TARIC_6, TARIC_8, TARIC_10
where TARIC_4.CODE_2 = TARIC_2.CODE_2
and TARIC_6.CODE_4 = TARIC_4.CODE_4 and TARIC_6.CODE_2 = TARIC_4.CODE_2 
and TARIC_8.CODE_6 = TARIC_6.CODE_6 and TARIC_8.CODE_4 = TARIC_6.CODE_4 and TARIC_8.CODE_2 = TARIC_6.CODE_2
and TARIC_10.CODE_8 = TARIC_8.CODE_8 and TARIC_10.CODE_6 = TARIC_8.CODE_6 and TARIC_10.CODE_4 = TARIC_8.CODE_4 and TARIC_10.CODE_2 = TARIC_8.CODE_2
order by TARIC_2.CODE_2 asc