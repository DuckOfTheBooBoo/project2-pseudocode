//Proses System = Date Selection
//Pseudocode Date Selection

procedure Date (output date dDate);
begin
    while(true)
    begin
        Display "Select date for reservation : ";
        Accept dDate;
        if (dDate has passed?)
            begin
                Display "Sorry, this date is already past. Please select another date.";
            end
        else
            begin
                // Break from while loop
                break;
            end
        endif
    end
end