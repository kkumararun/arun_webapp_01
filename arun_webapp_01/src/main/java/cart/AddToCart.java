package cart;

import java.util.List;

import com.arun.pg.model.User;

public class AddToCart {

	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List getItem() {
		return item;
	}
	public void setItem(List item) {
		this.item = item;
	}
	private User user;
	private List item;
}
