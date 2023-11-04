// Procedures declaration
procedure Register(output Numeric, output Character, output character, output character);
procedure Login(output Numeric, output character);
rrocedure ServiceSelection();
procedure Plumber();
procedure Electrician();
procedure Carpenter();
procedure - // 4th service;
procedure DateSelection()output date;
procedure ReserveDuration()output character);procedure Payment( (outputnumeric, ioutput);
procedure InputValidation(input character, input array, input character, output character);

// Main program
begin
	// Variable declaration
	Character cAccountChoice, cServiceChoice, cMethod, cPaymentChoose, cEmail, cPassword, cName, cEmailChoice, cForgotPassword, cTitle, cDescription, cProblemChoice;

    Numeric nPhoneNumber, nDatabasePhoneNumber, nPayment, nBCA_VA, nMandiri_VA, nCS, nServiceCost, nTotal;

    Date dDate;

	Display "Welcome to Craftsmen Service Reservation System";
	Display "Do you have an account?";

	call InputValidation(
		"Do you have an account?",
		["y", "n"],
		"Invalid input. Please enter 'y' for yes or 'n' for no.",
		cAccountChoice
	);

	if (cAccountChoice == "n")
		begin
			call Register();
			call Login(nPhoneNumber, cPassword);
		end
	else if (cAccountChoice == "y")
		begin
		call Login;
		end
	endif

	call ServiceSelection();
	call Payment();
end

