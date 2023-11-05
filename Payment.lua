//Pseudocode payment

Procedure Payment(input character cName, input character cTitle, input character cDescription, input date dDate, input character cReservationDuration, input numeric nPhoneNumber, input numeric nServiceCost);
begin 
    Character
    cMethod, cPayment_choose;
    Numeric
        nPayment, nTotal;
        nBCA_VA = 1900800000609717;
        nMandiri_VA = 8889940001661878;
        nCS = 085697375021;

    Display "Please select your payment method : " 
    Display "1.Transfer to virtual account" 
    Display "2.Digital wallet"
    accept cMethod
    switch (cMethod)
        begin
        case "1":
            Display "Select Your payment method": 
            Display "1.BCA"
            Display "2.Mandiri";
            accept cPayment_choose;
        if (cPayment_choose == "1");
            begin
                Display "Your total price is nTotal";
                Display "please submit your payment to this Virtual Account " + nBCA_VA;

                // Do the payment to respective method
                accept nPayment;
            end
            if ((nPayment = Success) and (nPayment == nTotal));
            begin
                if (nPayment == nTotal);
                 begin
                    Display "====================";
                    Display "Your payment is successful";
                    Display "Guest name: " + cName;
                    Display "Phone Number: " + nPhoneNumber;
                    Display "Problem: " + cTitle;
                    Display "Description: " + cDescription;
                    Display "Reservation Date: " + dDate;
                    Display "Reservetion Duration: " + cReservationDuration;
                    Display "Total:" + nTotal;
                    Display "====================";
                    Display "thank you";
                  else
                  begin 
                      Display "There something wrong with your payment, please contact our customer service" nCS;
                      call Payment;
                  end
                endif
            endif
        endif  
          else if (cPayment_choose == "2");
              begin
                  Display "Your total price is nTotal";
                  Display   "please submit your payment to this Virtual Account" nMandiri_VA;
                  accept nPayment;
                  if (nPayment = Success); 
                  begin
                    if (nPayment == nTotal);
                    begin 
                        Display "====================";
                        Display "Your payment successful";
                        Display "Guest name" + cName;
                        Display "Phone Number" + nPhoneNumber;
                        Display "Problem" + cTitle;
                        Display "Description" + cDescription;
                        Display "Reservation Date" + cReservationDate;
                        Display "Reservetion Duration" + cReservationDuration;
                        Display "Total:" nTotal;
                        Display "====================";
                        Display "thank you";
                    else 
                      begin
                          Display "There something wrong with your payment, please contact our customer service" nCS;
                          call Payment;
                      end
                    endif
                endif
            endif
        break;

        case "2":
            Display "select your payment method : ";  
            Display "1.Dana"; 
            Display "2.OVO";  
            Display "3.Gopay";
            accept cPayment_choose;
        if (cPayment_choose == 1);
            begin 
                Display "Your total price is" nTotal;
                accept nPayment
                if (Payment = Success);
                  begin
                    if (Payment == nTotal);
                      begin 
                          Display "====================";
                          Display "Your payment successful";
                          Display "Guest name" + cName;
                          Display "Phone Number" + nPhoneNumber;
                          Display "Problem" + cTitle;
                          Display "Description" + cDescription;
                          Display "Reservation Date" + cReservationDate;
                          Display "Reservetion Duration" + cReservationDuration;
                          Display "Total:" nTotal;
                          Display "====================";
                          Display "thank you";
                      else 
                        begin
                          Display "There something wrong with your payment, please contact our customer service" nCS;
                          call Payment;
                        end
                    endif
                endif 
            endif

          else if (cPayment_choose == 2);
              begin 
                  Display "Your total price is" nTotal;
                  accept nPayment
                    if (Payment = Success);
                      begin
                         if (Payment == total);
                          begin 
                              Display "====================";
                              Display "Your payment successful";
                              Display "Guest name" + cName;
                              Display "Phone Number" + nPhoneNumber;
                              Display "Problem" + cTitle;
                              Display "Description" + cDescription;
                              Display "Reservation Date" + cReservationDate;
                              Display "Reservetion Duration" + cReservationDuration;
                              Display "Total:" nTotal;
                              Display "====================";
                              Display "thank you";
                      else
                        begin
                            Display "There something wrong with your payment, please contact our customer service" nCs;
                            call Payment;
                        end  
                      endif
                endif 
            endif 

        else if (cPayment_choose == 3);
                begin 
                    Display "Your total price is" nTotal;
                    accept nPayment
                    if (Payment = Success);
                        begin
                        if (Payment == total);
                        begin 
                            Display "====================";
                            Display "Your payment successful";
                            Display "Guest name" + cName;
                            Display "Phone Number" + nPhoneNumber;
                            Display "Problem" + cTitle;
                            Display "Description" + cDescription;
                            Display "Reservation Date" + cReservationDate;
                            Display "Reservetion Duration" + cReservationDuration;
                            Display "Total:" nTotal;
                            Display "====================";
                            Display "thank you";
                    else 
                      begin
                        Display "There something wrong with your payment, please contact our customer service" nCS;
                        call Payment;
                      end
                      endif
                endif 
           endif
      break;
        Default:
          Display "you have entered the wrong input";
      end;    
end;