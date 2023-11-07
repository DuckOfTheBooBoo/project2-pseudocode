//Pseudocode reservation
procedure(output character cReserveDuration,  output numeric nServiceCost);
begin 
    Character 
    cTimeChoice, cReserveDuration;

    Numeric
    nServiceCost;

    while(cTimeChoice)
    begin
        Display "How long do you want to reserve our worker?";
        Display "1.Morning (08.00 - 12.00) Rp.189.000";
        Display "2.Afternoon (13.00 - 17.00) Rp.189.000";
        Display "3.All day (08.00 - 17.00) 249.000";
        Accept cTimeChoice;

        if(cTimeChoice == 1)
            begin
                cReserveDuration = "08.00 - 12.00";
                nServiceCost = 189000;
                break;
            end
        else if(cTimeChoice == 2)
            begin
                cReserveDuration = "13.00 - 17.00";
                nServiceCost = 189000;
                break;
            end
        else if(cTimeChoice == 3)
            begin
                cReserveDuration = "08.00 - 17.00";
                nServiceCost = 249000;
                break;
            end
        else
            begin
                Display "Please select valid choice"
            end
        endif
    end
end
