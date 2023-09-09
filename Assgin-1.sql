select trunc(months_between(sysdate,to_date('23-07-2001','DD-MM-YYYY'))/12) Years,
trunc(months_between(sysdate,to_date('23-07-2001','DD-MM-YYYY')))-trunc(months_between(sysdate,to_date('23-07-2001','DD-MM-YYYY'))/12)*12 Months,
trunc(sysdate)-add_months(to_date('23-07-2001','DD-MM-YYYY'),trunc(months_between(sysdate,to_date('23-07-2001','DD-MM-YYYY')))) Days
from dual;