SELECT
  c.НОМЕР_ЦЕХА                            AS "Номер цеха",
  'Производственный'                      AS "Название цеха",
  COUNT(DISTINCT v.НАЗВАНИЕ_ВИДА_ИЗДЕЛИЯ) AS "Кол-во видов изделий",
  i.middle                                AS "Среднее кол-во"
FROM ПРОИЗВОДСТВ_ЦЕХ c
  JOIN УЧАСТОК u
    ON u.НОМЕР_ЦЕХА = c.НОМЕР_ЦЕХА
  JOIN КАТЕГОРИЯ_ИЗДЕЛИЯ k
    ON k.НОМЕР_ЦЕХА = c.НОМЕР_ЦЕХА
  JOIN ВИД_ИЗДЕЛИЯ v
    ON v.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
  JOIN РАБОТЫ r
    ON r.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
  CROSS JOIN (SELECT AVG(amount) middle
              FROM (
                SELECT count(DISTINCT v.НАЗВАНИЕ_ВИДА_ИЗДЕЛИЯ) amount
                FROM ЦЕХ c
                  LEFT JOIN УЧАСТОК u
                    ON u.НОМЕР_ЦЕХА = c.НОМЕР_ЦЕХА
                  LEFT JOIN КАТЕГОРИЯ_ИЗДЕЛИЯ k
                    ON k.НОМЕР_ЦЕХА = c.НОМЕР_ЦЕХА
                  LEFT JOIN ВИД_ИЗДЕЛИЯ v
                    ON v.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
                  LEFT JOIN РАБОТЫ r
                    ON r.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
                GROUP BY c.НОМЕР_ЦЕХА)) i
GROUP BY c.НОМЕР_ЦЕХА, i.middle
HAVING COUNT(DISTINCT v.НАЗВАНИЕ_ВИДА_ИЗДЕЛИЯ) > (
  SELECT AVG(amount)
  FROM (
    SELECT count(DISTINCT v.НАЗВАНИЕ_ВИДА_ИЗДЕЛИЯ) amount
    FROM ЦЕХ c
      LEFT JOIN УЧАСТОК u
        ON u.НОМЕР_ЦЕХА = c.НОМЕР_ЦЕХА
      LEFT JOIN КАТЕГОРИЯ_ИЗДЕЛИЯ k
        ON k.НОМЕР_ЦЕХА = c.НОМЕР_ЦЕХА
      LEFT JOIN ВИД_ИЗДЕЛИЯ v
        ON v.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
      LEFT JOIN РАБОТЫ r
        ON r.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ = k.НАЗВАНИЕ_КАТЕГОРИИ_ИЗДЕЛИЯ
    GROUP BY c.НОМЕР_ЦЕХА));
