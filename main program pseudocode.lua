// Procedures declaration
procedure Register(input numeric, output character, output character, output character)
procedure Login(output numeric, output character)
procedure ForgotPassword(input character)
procedure ServiceSelection(output character)
procedure Plumber(output character, output character, output characcter, output dDate)
procedure Electrician(output character, output character, output characcter, output dDate)
procedure Carpenter(output character, output character, output characcter, output dDate)
procedure AirConditionerTechnician(output character, output character, output characcter, output dDate)
procedure DateSelection()
procedure ReserveDuration()
procedure Payment()
procedure InputValidation(input character, input array, input character, output character)

// Main program
begin
	Character cAccountChoice, cServiceChoice, cMethod, cPaymentChoose, cEmail, cName, cEmailChoice, cForgotPassword, cTitle, cDescription, cProblemChoice;
    Numeric nPhoneNumber, nPayment, nBCA_VA, nMandiri_VA, nCS, nServiceCost, nTotal;
    Date dDate;

	Display "Welcome to Craftsmen Service Reservation System";
	Display "Do you have an account?";

	call inputValidation(
		"Do you have an account?",
		["y", "n"],
		"Invalid input. Please enter 'y' for yes or 'n' for no.",
		cAccountChoice
	);

	// Ask user to register if the answer is 'n'
	if (cAccountChoice == "n")
		begin
			call Register();
		end
	endif
	
	// 
	call Login();

	call ServiceSelection();
	call Payment();
end

