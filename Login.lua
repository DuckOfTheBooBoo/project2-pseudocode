//Pseudocode Login_Menu
Procedure Login(output numeric nPhoneNumber, output character cPassword)
begin
    Character cDatabasePassword, cRegisterChoice, cForgotPassword;
    Numeric nDatabasePhoneNumber;
    while (true)
    begin
        Display "enter your Phonenumber and Password"
        Display "Input nPhonenumber"
        accept nPhoneNumber;
        Display "Input cPassword"
        accept cPassword;
        
        GET (cDatabasePassword, nDatabasePhoneNumber) from database;

        if (nPhoneNumber not exists in database)
            begin
                call inputValidation(
                    "Account not exist. Do you want to register?",
                    ["y", "n"],
                    "Invalid input, Please enter 'y' for yes or 'n' for no",
                    cRegisterChoice
                );

                if (cRegisterChoice == 'y')
                    begin 
                        call Register();
                    end
                endif
            end
        endif

        else if ((nPhoneNumber != nDatabasePhoneNumber) or (cPassword != cDatabasePassword))
            begin
                Display "Cell Phone or password is incorrect";
                
                call inputValidation(
                    "Forgot Your Password?",
                    ["y", "n"],
                    "Invalid input, Please enter 'y' for yes or 'n' for no",
                    cForgotPassword
                );
            
                if (cForgotPassword == 'y')
                    begin                    
                        call ForgotPassword();                    
                    end
                endif
            end
        else if ((nPhoneNumber == nDatabasePhoneNumber) and (cPassword == cDatabasePassword))
            begin
                Display "Login Success";
                // Break from while loop if login success
                break;
            end
        endif
    end
end