//Pseudocode Register_Menu
procedure Register(output numeric nPhoneNumber, output character cName, output characcter cPassword, output character cEmail)
begin
    Character cLoginChoice;
    while (true)
    begin
        Display "Please insert your Personal Information Below";
        Display "Name, PhoneNumber, Email";
        Display "Input Name";
        accept cName;
        Display "Input Password";
        accept cPassword;
        Display "Input Email";
        accept cEmail;
        Display "Input PhoneNumber";
        accept nPhoneNumber;
        
        // Ask user when account is already registered in database
        if (nPhoneNumber exists in database)
            begin
                call InputValidation(
                    "The account is already registered, do you want to login?",
                    {"y", "n"},
                    "Invalid input. Please enter only 'y' for yes or 'n' for no.",
                    cLoginChoice
                );

                if (cLoginChoice == 'y')
                    begin
                        // Break from while loop
                        break;
                    end
                endif
            end
        
        // Check if nPhonenNumber hasn't registered before
        else if (nPhoneNumber and cEmail = Available)
            begin
                Save (cName, cPassword, cEmail, nPhoneNumber) to database;
                Diplay "Congrats, your account has been registered, you may login now";

                // Break from while loop
                break;
            end
        endif
    end
end