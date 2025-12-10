with Ada.Text_IO; use Ada.Text_IO;

function Count_0(Pos_In, Numbers : Integer; Direction : Character) return Integer is
    Count : Integer := 0;
    I : Integer := 0;
    Pos : Integer := Pos_In;
begin
    if Direction = 'L' then
        while I < Numbers loop
            Pos := Pos - 1;
            if Pos = 0 then
                Count := Count + 1;
            end if;

            if Pos < 0 then
                Pos := 99;
            end if;

            I := I + 1;
        end loop;
    elsif Direction = 'R' then
        while I < Numbers loop
            Pos := Pos + 1;
            if Pos > 99 then
                Pos := 0;
            end if;

            if Pos = 0 then
                Count := Count + 1;
            end if;

            I := I + 1;
        end loop;
    end if;

    return Count;
end Count_0;
