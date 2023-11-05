//Pseudocode payment

Procedure Payment(input character cName, input character cTitle, input character cDescription, input date dDate, input character cReservationDuration, input numeric nPhoneNumber, input numeric nServiceCost);
begin 
    Character cMethod, cPayment_choose;
    Numeric
        nPayment, nServiceCost;
        nBCA_VA = 1900800000609717;
        nMandiri_VA = 8889940001661878;
        nCS = 085697375021;

    Display "Please select your payment method : ";
    Display "1.Transfer to virtual account";
    Display "2.Digital wallet";
    accept cMethod;

    switch (cMethod)
        begin
            case "1":
                Display "Select Your payment method": 
                Display "1.BCA"
                Display "2.Mandiri";
                accept cPayment_choose;

                if (cPayment_choose == "1")
                    begin
                        Display "Your total price is " + nServiceCost;
                        Display "please submit your payment to this Virtual Account " + nBCA_VA;

                        // Do the payment to respective method
                        accept nPayment;
                    end
                    
                else if (cPayment_choose == "2")
                    begin
                        Display "Your total price is " + nServiceCost;
                        Display "Please submit your payment to this Virtual Account " + nMandiri_VA;
                        accept nPayment;
                    end
                endif
            break;

            case "2":
                Display "select your payment method : ";  
                Display "1.Dana"; 
                Display "2.OVO";  
                Display "3.Gopay";

                accept cPayment_choose;

                if (cPayment_choose == 1)
                    begin 
                        Display "Your total price is " + nServiceCost;
                        accept nPayment
                    end

                else if (cPayment_choose == 2)
                    begin 
                        Display "Your total price is " + nServiceCost;
                        accept nPayment
                    end 

                else if (cPayment_choose == 3)
                    begin 
                        Display "Your total price is " + nServiceCost;
                        accept nPayment
                    end
                endif
            break;

            Default:
                Display "you have entered the wrong input";
            break;
        end;    

    if(nPayment == Success) and (nPayment == nServiceCost)
    begin
        Display "==========Your payment success==========";
        Display "Guest Name          :" + cName ;
        Display "Phone Number        :" + nPhoneNumber;
        Display "Problem             :" + cTitle;
        Display "Description         :" + cDescription;
        Display "Reservation Date    :" + dDate;
        Display "Reservation Duration:" + cReservationDuration;
        Display "Total               :" + nServiceCost;
        Display "==========Thank you for order===========";
    else
      begin
          Display "There's something wrong with your payment, please contact our customer service" + nCSNumber
       end  
    endif
end;