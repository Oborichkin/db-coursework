SELECT
  s.ИМЯ_СОТРУДНИКА || ' ' || s.ФАМИЛИЯ_СОТРУДНИКА || ' ' || s.ОТЧЕСТВО_СОТРУДНИКА AS "ФИО",
  r.НОМЕР_БРИГАДЫ,
  t.НОМЕР_УЧАСТКА,
  t.НОМЕР_ЦЕХА

FROM CWРАБОТЫ t
  INNER JOIN CWБРИГАДА b
    ON b.НОМЕР_БРИГАДЫ = t.НОМЕР_БРИГАДЫ
  INNER JOIN CWРАБОЧИЙ r
    ON b.НОМЕР_БРИГАДЫ = r.НОМЕР_БРИГАДЫ
  INNER JOIN CWСОТРУДНИК s
    ON s.КОД_СОТРУДНИКА = r.КОД_СОТРУДНИКА

WHERE t.НОМЕР_ЦЕХА = 'П321' AND t.НОМЕР_УЧАСТКА = 2
ORDER BY r.НОМЕР_БРИГАДЫ;