
CREATE OR REPLACE FUNCTION calculate_age(date_of_birth DATE) RETURN VARCHAR2 IS
    v_today DATE := TRUNC(SYSDATE);
    v_years NUMBER;
    v_months NUMBER;
    v_days NUMBER;
    v_age VARCHAR2(100);
BEGIN
    v_years := TRUNC(MONTHS_BETWEEN(v_today, date_of_birth) / 12);
    v_months := TRUNC(MOD(MONTHS_BETWEEN(v_today, date_of_birth), 12));
    v_days := trunc(v_today)-add_months(date_of_birth,trunc(months_between( v_today,date_of_birth)));
       

    v_age := v_years || ' years, ' || v_months || ' months, ' || v_days || ' days';

    RETURN v_age;
END calculate_age;
/

DECLARE
  dob DATE:= TO_DATE('23-07-2001','DD-MM-YYYY');
  age VARCHAR2(100);
BEGIN
  age := calculate_age(dob);
  DBMS_OUTPUT.PUT_LINE('AGE:'|| age);
END;



