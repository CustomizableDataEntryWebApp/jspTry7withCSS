package webapp;

public class ValidateUserService {

	public boolean isUserValid(String name, String pass) {
		
		return name.equals("user1")&&pass.equals("password1") ||
				name.equals("user2")&&pass.equals("password2") ||
				name.equals("user3")&&pass.equals("password3");
		
	}
}
