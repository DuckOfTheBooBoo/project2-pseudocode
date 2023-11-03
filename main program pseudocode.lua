// Procedures declaration
procedure Register()
procedure Login()
procedure ServiceSelection()
procedure Plumber()
procedure Electrician()
procedure Carpenter()
procedure - // 4th service
procedure DateSelection()
procedure ReserveDuration()
procedure Payment()

// Function declaration
function InputValidation()

// Main program
begin
	Character cAccountChoice, cServiceChoice, cMethod, cPaymentChoose, cEmail, cName, cEmailChoice, cForgotPassword, cTitle, cDescription, cProblemChoice, ;
    Numeric nPhoneNumber, nPayment, nBCA_VA, nMandiri_VA, nCS, nServiceCost, nTotal;
    Date dDate;

	Display "Welcome to Craftsmen Service Reservation System";
	Display "Do you have an account?";

	cAccountChoice = call inputValidation(
		cPrompt = "Do you have an account?",
		arrValidInput = ["y", "n"],
		cErrorMsg = "Invalid input. Please enter 'y' for yes or 'n' for no."
	);

	if (cAccountChoice == "y")
		begin
			call Login();
		end
	else if (cAccountChoice == "n")
		begin
			call Register(;
			call login;
		end
	endif

	call serviceSelection;
	call payment;
end

