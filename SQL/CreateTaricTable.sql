  

  select 
  substring(Goods_code, 1, 2) CODE_2, 
  substring(Goods_code, 3, 2) CODE_4,
  substring(Goods_code, 5, 2) CODE_6,
  substring(Goods_code, 7, 2) CODE_8,
  substring(Goods_code, 9, 2) CODE_10,
  substring(Goods_code, 12, 4) CODE_14,
  [DOTA].[dbo].[Nomenclature EN(1)].*   
  into TARIC
  FROM [DOTA].[dbo].[Nomenclature EN(1)]

  select count(*) from TARIC
  where hier__pos_ = 2
  select count(*) from TARIC
  where hier__pos_ = 4
  select count(*) from TARIC
  where hier__pos_ = 6
    select count(*) from TARIC
  where hier__pos_ = 8
    select count(*) from TARIC
  where hier__pos_ = 10


  select count(*), goods_code
  from   [DOTA].[dbo].[Nomenclature EN(1)]
  group by goods_code
  having count(*) > 1