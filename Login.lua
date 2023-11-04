//Pseudocode Login_Menu
Procedure Login(output numeric nPhoneNumber, output character)
begin
    Character cDatabasePassword;
    Numeric nDatabasePhoneNumber;

    // Repeat until nPhoneNumber and cPassword is correct
    while (true)
    begin
        Display "enter your Phonenumber and Password"
        Display "Input nPhonenumber"
        Display "Input cPassword"
        accept nPhoneNumber;
        accept cPassword;

        if (nPhoneNumber not in database)
            begin
                Display "Phone Number is not registered";
            end
        else
            begin
                // Mengambil PhoneNumber dan Password yang tersimpan di database, lalu disimpan ke dalam nDatabasePhoneNumber dan cDatabasePassword
                GET (nDatabasePhoneNumber, cDatabasePassword) from database;
            end
        endif
        
        // Jika nPhoneNumber dan cPassword (User input) tidak sama dengan yang disimpan di database
        if ((nPhoneNumber != nDatabasePhoneNumber) or (cDatabasePassword != cPassword))
            begin
                Display "Phone Number or password is incorrect";
                
                call inputValidation(
                    "Forgot Your Password?",
                    ["y", "n"],
                    "Invalid input, Please enter 'y' for yes or 'n' for no",
                    cForgotPassword
                );
            
                if (cForgotPassword == 'y')
                    begin                    
                        call ForgotPassword(output character cEmail, );                    
                    end
                end if
            end
        else if ((nPhoneNumber == nDatabasePhoneNumber) and (cDatabasePassword == cPassword))
            begin
                // break from while loop
                Display "Login success";
                break;
            end
        endif
    end
end