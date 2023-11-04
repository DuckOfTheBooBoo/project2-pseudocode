//Proses System = payment
//Pseudocode payment
Procedure Payment (output numeric, output character);
begin 
  Character
  cMethod, cPayment_choose;
  Numeric
   nPayment, nTotal;
   nBCA_VA = 1900800000609717;
   nMandiri_VA = 8889940001661878;
   nCS = 085697375021;

    Display  "Please select your payment method : " 
    Display "1.Transfer to virtual account" 
    Display "2.Digital wallet"
    accept cMethod
  switch (cMethod)
    begin
    case "1":
      Display "Select Your payment method": 
      Display "1.BCA"
      Display "2.Mandiri";
      accept cPayment_choose
      if (cPayment_choose == "1") ;
        begin
           Display "Your total price is ntotal";
           Display "please submit your payment to this Virtual Account" nBCA_VA;
           accept nPayment;
        if (nPayment = Success);
          begin
          if (nPayment == ntotal);
            begin
            Display "====================";
            Display "Your payment successful";
            Display "Guest name" : cName ;
            Display "Phone Number" : nPhoneNumber ;
            Display "Problem" : cProblem ;
            Display "Description" : cDescription ;
            Display "Reservation Date" : cReservationDate;
            Display "Reservetion Duration" : cReservationDuration ;
            Display "Total:" ntotal;
            Display "====================";
            Display "thanks you";
           else
            begin 
            Display "There something wrong with your payment, please contact our customer service" nCS;
            call Payment;
          endif
        endif
      endif  
       else if (cPayment_choose == "2");
        begin
          Display "Your total price is ntotal";
          Display   "please submit your payment to this Virtual Account" nMandiri_VA;
          accept nPayment;
        if (nPayment = Success); 
          begin
          if (nPayment == ntotal);
            begin 
              Display "====================";
              Display "Your payment successful";
              Display "Guest name" : cName ;
              Display "Phone Number" : nPhoneNumber ;
              Display "Problem" : cProblem ;
              Display "Description" : cDescription ;
              Display "Reservation Date" : cReservationDate;
              Display "Reservetion Duration" : cReservationDuration ;
              Display "Total:" ntotal;
              Display "====================";
              Display "thanks you";
           else 
            begin
            Display "There something wrong with your payment, please contact our customer service" nCS;
            call Payment;
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
        Display "Your total price is" ntotal;
        accept nPayment
        if (Payment = Success);
          begin
          if (Payment == ntotal);
            begin 
              Display "====================";
              Display "Your payment successful";
              Display "Guest name" : cName ;
              Display "Phone Number" : nPhoneNumber ;
              Display "Problem" : cProblem ;
              Display "Description" : cDescription ;
              Display "Reservation Date" : cReservationDate;
              Display "Reservetion Duration" : cReservationDuration ;
              Display "Total:" ntotal;
              Display "====================";
              Display "thanks you";
           else 
            begin
            Display "There something wrong with your payment, please contact our customer service" nCS;
            call Payment;
            endif
          endif 
        endif

       else if (cPayment_choose == 2);
          begin 
          Display "Your total price is" ntotal;
          accept nPayment
          if (Payment = Success) ;
            begin
            if (Payment == total);
              begin 
                Display "====================";
                Display "Your payment successful";
                Display "Guest name" : cName ;
                Display "Phone Number" : nPhoneNumber ;
                Display "Problem" : cProblem ;
                Display "Description" : cDescription ;
                Display "Reservation Date" : cReservationDate;
                Display "Reservetion Duration" : cReservationDuration ;
                Display "Total:" ntotal;
                Display "====================";
                Display "thanks you";
              begin
              Display "There something wrong with your payment, please contact our customer service" nCs;
              call Payment;
              endif
            endif 
          endif 

       else if (cPayment_choose == 3);
            begin 
            Display "Your total price is" ntotal;
            accept nPayment
            if (Payment = Success);
              begin
              if (Payment == total);
                begin 
                  Display "====================";
                  Display "Your payment successful";
                  Display "Guest name" : cName ;
                  Display "Phone Number" : nPhoneNumber ;
                  Display "Problem" : cProblem ;
                  Display "Description" : cDescription ;
                  Display "Reservation Date" : cReservationDate;
                  Display "Reservetion Duration" : cReservationDuration ;
                  Display "Total:" ntotal;
                  Display "====================";
                  Display "thanks you";
               else 
                begin
                Display "There something wrong with your payment, please contact our customer service" nCS;
                call Payment;
                endif
              endif 
            endif
 break;
end;