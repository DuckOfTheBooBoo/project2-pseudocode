//Pseudocode Login_Menu
Procedure Login(output numeric, output character, output character)
begin

    repeat
    begin
        Display "enter your Phonenumber and Password"
        Display "Input nPhonenumber"
        Display "Input cPassword"
        accept nPhoneNumber;
        accept cPassword;

    end until (nPhoneNumber and cPassword = Available)

    if (nPhoneNumber and cPassword = NotAvailable)
        begin
            Display "Cell Phone format or password are wrong"
            
            cForgotPassword = inputValidation(
                cPrompt = "Forgot Your Password?"
                arrValidInput = ["y", "n"]
                cErrorMsg = "Invalid input, Please enter 'y' for yes or 'n' for no"
            );
        
            if (cForgotPassword == 'y')
                begin                    
                    Call ForgotPassword;                    
                end
            end if
        end
    else if (nPhoneNumber and cPassword = Available)
        begin
            Display "Login Succes"
        end
    end if
end