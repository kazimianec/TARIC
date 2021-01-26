use [DOTA]

select '"'+ Description_2 + ' ' + Description_4 +' '+ Description_6 +'",' [CLASS_Description],
t6.CODE_2+t6.CODE_4+t6.CODE_6+'0000 '+t6.CODE_14 [CLASS_Code]

from TARIC_6_vw t6, TARIC_4_vw t4, TARIC_2_vw t2
where (t4.CODE_2+t4.CODE_4+t4.CODE_14) = (t6.CODE_2+t6.CODE_4 + t6.CODE_14) 
and   (t4.CODE_2) = (t2.CODE_2) 

