//Pseudocode Register_Menu
begin
    Numeric nPhoneNumber;
    Character cName, cPassword, cEmail;
    Display "Please insert your Personal Information Below"
    Display "Name, PhoneNumber, Email"
    Display "Input Name"
    Display "Input Password"
    Display "Input Email"
    Display "Input PhoneNumber"
    accept cName;
    accept cPassword;
    accept cEmail;
    accept nPhoneNumber;

    if (nPhoneNumber and cEmail = NotAvailable)
        begin
            Display "Cell pone format is wrong or email format is wrong"
        end

    else if (nPhoneNumber and cEmail = Available)
        begin
            Save (cName, cPassword, cEmail, nPhoneNumber) to database
            Diplay "Congrats, your account has been registered, you may login now"
        end
    end if
end