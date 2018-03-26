variable v_bind1 varchar2(10);
exec :v_bind1 := 'RebellionRider';
begin
    :v_bind1 := 'Manish Sharma';
end;