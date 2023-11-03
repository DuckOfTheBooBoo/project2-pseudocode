//Pseudocode Forget_Password_Menu
begin
    Character cEmail;
    Display "Forgot Password?"
    Display "Input your existing Email"
    Display "Input cEmail"
    accept cEmail;

    if (cEmail = NotAvailable)
        begin
        Display "the Email is incorrect"
        while (cEmail is not valid or empty)
        begin
            if ((cEmailChoice == 'y') or (cEmailChoice == 'n'))
                begin
                    break;
                end
            else
                begin
                    Display "Invalid input. Please enter 'y' for yes or 'n' for no";
                end
            end if
        end

    else if (cEmail = Available)
        begin
            Confirm "Send the reset password's link via Email"
            Character cNewPassword, cConfirmPassword;
            Display "new password, repeat password"
            Display "Input cNewPassword"
            Display "Input cConfirmPassword"
            Accept cNewPassword;
            Accept cConfirmPassword;
            
            if (cConfirmPassword != cNewPassword) then
                begin
                Display "Password is incorrect, Please insert the right one"
                while (cConfirmPassword is not valid or empty)

                begin
                    if ((cConfirmPasswordChoice == 'y') or (cConfirmPasswordChoice == 'n'))
                        begin
                            break;
                        end
                    else
                        begin
                            Display "Invalid input. Please enter 'y' for yes or 'n' for no";
                        end
                    end if
                end
            
            else if (cConfirmPassword == cNewPassword)
                
                begin
                    if (cConfirmPassword and cNewPassword == cPassword) then
                        Display "the new Password is the same as the old password, please insert a new one"

                        begin
                            if ((cConfirmPasswordChoice == 'y') or (cConfirmPasswordChoice == 'n'))
                                begin
                                    break;
                                end
                            else
                                begin
                                    Display "Invalid input. Please enter 'y' for yes or 'n' for no";
                                end
                            end if
                        end

                    else if (cConfirmPassword and cNewPassword != cPassword) then
                        begin
                            Save (cNewPassword) to database
                            Display "new password has been changed, you may login now"
                        end
                    end if                                  
                end
            end if
        end
    end if
end
