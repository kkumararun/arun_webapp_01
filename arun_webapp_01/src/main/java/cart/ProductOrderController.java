package cart;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Controller;
import org.springframework.webflow.action.EventFactorySupport;
import org.springframework.webflow.execution.Event;

import com.arun.pg.model.User;

@Controller
public class ProductOrderController {

	User user;

	public AddToCart createCart() {

		AddToCart addToCart = new AddToCart();
		user = new User();
		addToCart.setUser(user);
		return addToCart;

	}

	public Event validateCust(AddToCart addToCart,  MessageContext messageContext){
		 
		 if(addToCart.getUser().getName() == null || addToCart.getUser().getName().trim() == ""){
             MessageBuilder errorMessageBuilder = new MessageBuilder().error();
             errorMessageBuilder.source("user.Name");
             errorMessageBuilder.code("Name.req");
             messageContext.addMessage(errorMessageBuilder.build());
             return new EventFactorySupport().error(this);
}
return new EventFactorySupport().success(this);
	 }
}
