
public class Admin implements Serializable {

	private static final long serialVersionUID = 252841811851125164L;
	private int id; // Primary key
	private String username; // username
	private String password; // password
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}