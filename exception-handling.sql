declare
    var_dividend number := 24;
    var_divisor number := 0;
    var_result number;
    ex_divZero exception;
begin
    if var_divisor = 0 then
        raise ex_divZero;
    end if;
    var result := var_dividend / var_divisor;
    dbms_output.put_line('Result = ' || var_result);

    exception when ex_divZero then
        dbms_output.put_line('error -> exception occurred');
end;