//Pseudocode Register_Menu
procedure Register(input numeric nPhonenNumber, output character cName, output characcter cPassword, output character cEmail)
begin
    while (true)
    begin
        Character cLoginChoice;
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
        
        if (nPhoneNumber exists in database)
            begin
                call InputValidation(
                    "The account is already registered, do you want to login?",
                    ["y", "n"],
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
            end
        endif
    end
end