DEFINE essence='КАМАЗ';

SELECT
  u.НОМЕР_ЦЕХА,
  u.НОМЕР_УЧАСТКА,
  u.НАЗВАНИЕ_УЧАСТКА,
  u.ТИП_УЧАСТКА || ' ' || i.ЧАСТЬ_ИЗДЕЛИЯ AS "Работа"
FROM CWВИД_ИЗДЕЛИЯ v
  INNER JOIN CWКАТЕГОРИЯ_ИЗДЕЛИЯ k
    ON v.ТИП_КАТЕГОРИИ = k.ТИП_КАТЕГОРИИ
  INNER JOIN CWРАБОТЫ r
    ON r.КАТЕГОРСКИЙ_ЦЕХ = k.КАТЕГОРСКИЙ_ЦЕХ
  INNER JOIN CWУЧАСТОК u
    ON u.КОД_УЧАСТКА = r.КОД_УЧАСТКА
  LEFT OUTER JOIN CWИЗГОТОВИТЕЛЬНЫЙ_УЧАСТОК i
    ON i.КОД_УЧАСТКА = u.КОД_УЧАСТКА 
WHERE v.НАЗВАНИЕ_ВИДА_ИЗДЕЛИЯ = '&essence';
