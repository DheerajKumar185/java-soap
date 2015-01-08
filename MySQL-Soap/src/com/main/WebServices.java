package com.main;

import com.businessrules.LoginBusinessRule;

public class WebServices {	
	
	public String authenticate(AuthenticateInput authenticateInput)
	{
		String errorCodes =	new LoginBusinessRule().validateCrednetials(authenticateInput.login, authenticateInput.password);
		if(errorCodes.equals("Failed"))
		{
			errorCodes = "Failed";
		}	
		return errorCodes;
	}

}
