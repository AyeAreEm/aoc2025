with Ada.Text_IO; use Ada.Text_IO;
with Count_0;

procedure Main is
    F : File_Type;
    Counter : Integer := 0;
    Pos : Integer := 50;
begin
    Open (F, In_File, "input.txt");

    while not End_Of_File (F) loop
        declare
            Line : String := Get_Line (F);
            Direction : Character := Line(Line'First);
            String_Numbers : String := Line(Line'First + 1 .. Line'Last);
            Numbers : Integer := Integer'Value (String_Numbers);
        begin
            if Direction = 'L' then
                Counter := Counter + Count_0 (Pos, Numbers, Direction);
                Pos := (Pos - Numbers) mod 100;
            elsif Direction = 'R' then
                Counter := Counter + Count_0 (Pos, Numbers, Direction);
                Pos := (Pos + Numbers) mod 100;
            end if;

            -- part 1 solution is below, comment out the if statement above
            --
            -- if Direction = 'L' then
            --     Pos := (Pos - Numbers) mod 100;
            -- elsif Direction = 'R' then
            --     Pos := (Pos + Numbers) mod 100;
            -- end if;
            --
            -- if Pos = 0 then
            --     Counter := Counter + 1;
            -- end if;
        end;
    end loop;

    Put_Line ("answer: " & Integer'Image (Counter));

    Close (F);
end Main;
