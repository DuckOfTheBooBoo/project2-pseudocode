//Pseudocode Forget_Password_Menu
procedure ForgotPassword(input character cEmail)
begin
    Character cDatabaseEmail, cDatabasePassword, cNewPassword, cConfirmPassword;

    Display "Forgot Password?"
    Display "Input your existing Email"
    Display "Input cEmail"
    accept cEmail;

    GET (cDatabaseEmail, cDatabasePassword) from database;

    if (cEmail is not in database)
        begin
            Display "Email is not registered";
        end
    else if (cEmail is in database)
        begin
            Confirm "Send the reset password's link via Email"
            Display "new password, repeat password"
            Display "Input cNewPassword"
            Display "Input cConfirmPassword"
            Accept cNewPassword;
            Accept cConfirmPassword;
            
            // Check if the new password is the same as the old one
            if (cNewPassword == cDatabasePassword)
                begin
                    Display "The new password is the same as the old one. Please insert a new one.";
                end
            
            // Check if the new password is the same as the confirmation password
            else if (cNewPassword != cConfirmPassword)
                begin
                    Display "Password is incorrect, Please insert the right one.";
                end
            
            else if (cConfirmPassword == cNewPassword)
                begin
                    // Save new password to database
                    Save (cNewPassword) to database
                    Display "new password has been changed, you may login now."
                end
            end if
        end                           
    end if
end