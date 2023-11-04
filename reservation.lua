//Pseudocode reservation

# nanti cek lagi
procedure(output character,  output numeric);

begin 
Character 
cTimeChoice, cReservationDuration;

Numeric
nServiceCost

while(cTimeChoice)
Display "How long do you want to reserve our worker?";
Display "1.Morning (08.00 - 12.00) Rp.189.000";
Display "2.Afternoon (13.00 - 17.00) Rp.189.000";
Display "3.All day (08.00 - 17.00) 249.000";
Accept cTimeChoice;

if(cTimeChoice == 1)
  begin
    cReservationDuration = 08.00 - 12.00;
    nServiceCost = 189000;
else if(cTimeChoice == 2)
  cReservationDuration = 13.00 - 17.00;
  nServiceCost = 189000;
else if(cTimeChoice == 3)
  cReservationDuration = 08.00 - 17.00;
  nServiceCost = 249000;

  else
    Display "Please select valid choice"
  endif
endwhile
 
call ??

end
