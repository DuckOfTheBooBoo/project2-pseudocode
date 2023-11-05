// Procedures declaration
procedure Register(input numeric, output character, output character, output character)
procedure Login(output numeric, output character)
procedure ForgotPassword(input character)
procedure ServiceSelection(output character, output character, output date, output character, output numeric)
procedure Plumber(output character, output character, output date, output character, output numeric)
procedure Electrician(output character, output character, output date, output character, output numeric)
procedure Carpenter(output character, output character, output date, output character, output numeric)
procedure AirConditionerTechnician(output character, output character, output date, output character, output numeric)
procedure DateSelection(output date)
procedure ReserveDuration(output character, output numeric)
procedure Payment(input character, input character, input character, input date, input character, input numeric, input numeric)
procedure InputValidation(input character, input array, input character, output character)

// Main program
begin
	Character cAccountChoice, cServiceChoice, cMethod, cPaymentChoose, cEmail, cName, cForgotPassword, cTitle, cDescription, cProblemChoice, cReserveDuration;
    Numeric nPhoneNumber, nPayment, nBCA_VA, nMandiri_VA, nCS, nServiceCost, nTotal;
    Date dDate;

	Display "Welcome to Craftsmen Service Reservation System";
	Display "Do you have an account?";

	// Accept user input
	call inputValidation(
		"Do you have an account?",
		["y", "n"],
		"Invalid input. Please enter 'y' for yes or 'n' for no.",
		cAccountChoice
	);

	// Ask user to register if the answer is 'n'
	if (cAccountChoice == "n")
		begin
			call Register(nPhoneNumber, cName, cPassword, cEmail);
		end
	endif
	
	call Login(nPhoneNumber, cPassword);

	call ServiceSelection(cTitle, cDescription, dDate, cReserveDuration, nServiceCost);
	call Payment(cName, cTitle, cDescription, dDate, cReserveDuration, nPhoneNumber, nServiceCost);
end

