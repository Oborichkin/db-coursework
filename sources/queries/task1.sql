DEFINE manufactory_id=0;

(SELECT
  v.НАЗВАНИЕ_ВИДА_ИЗДЕЛИЯ      AS "Вид изделия",
  v.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ AS "Категория изделия"
FROM CWЦЕХ c
  JOIN CWКАТЕГОРИЯ_ИЗДЕЛИЯ k
    ON c.НОМЕР_ЦЕХА = k.НОМЕР_ЦЕХА
  JOIN CWВИД_ИЗДЕЛИЯ v
    ON k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = v.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
 WHERE c.НОМЕР_ЦЕХА = &manufactory_id)
UNION ALL
(SELECT
  'Всего изделий:',
  '' || COUNT(*)
FROM CWЦЕХ c
  JOIN CWКАТЕГОРИЯ_ИЗДЕЛИЯ k
    ON c.НОМЕР_ЦЕХА = k.НОМЕР_ЦЕХА
  JOIN CWВИД_ИЗДЕЛИЯ v
    ON k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = v.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ 
 WHERE c.НОМЕР_ЦЕХА = &manufactory_id);
