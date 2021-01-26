use DOTA

go
alter view CONCAT_DESCRIPTION_6_10_vw as

select CODE_2, CODE_4, CODE_6,
substring(goods_code, 1,6) [CODE_1_6], STRING_AGG ([Description], ',') [CONCAT_DESCRIPTION]
from TARIC
where hier__pos_ in (10)
group by substring(goods_code, 1,6), CODE_2, CODE_4, CODE_6

/*
select CODE_2+ CODE_4+CODE_6, STRING_AGG (description_10, ',')
from TARIC_10_vw
group by CODE_2+ CODE_4+CODE_6
*/


/*

select CODE_2+ CODE_4+CODE_6, @v_description = @v_description + description_2
from TARIC_10_vw
group by CODE_2+ CODE_4+CODE_6

select @v_description

select count(*), CODE_1_6
from CONCAT_DESCRIPTION_6_10_vw
group by CODE_1_6
having count(*) > 1
*/