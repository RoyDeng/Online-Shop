package mobile.shop.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import mobile.shop.common.Constants;
import mobile.shop.model.Cart;
import mobile.shop.model.Item;

public class CartAction extends ActionSupport {
	private Logger logger = Logger.getLogger(this.getClass());
	private HttpServletRequest request;
	private HttpSession session;
	
	public String CartIndex() {
		this.request = ServletActionContext.getRequest();
		this.session = this.request.getSession();
		Cart cart = (Cart) this.session.getAttribute(Constants.SESSION_CART);
		
		if (cart == null) {
			cart = new Cart( );
			this.session.setAttribute(Constants.SESSION_CART, cart);
		}
		
		return "cart";
	}
	
	public String modifyItemNumber() {
		this.request = ServletActionContext.getRequest();
		this.session = this.request.getSession();
		String [] itemCheck =  this.request.getParameterValues("itemCheck");
		if( itemCheck == null || itemCheck.length == 0 ) {
			return "cart";
		}
		else
		{
			Cart cart = (Cart) this.session.getAttribute(Constants.SESSION_CART);
			
			for (String productId : itemCheck) {
				String number = this.request.getParameter("number" + productId);
				cart.modifyNumberBYProductId(Long.valueOf(productId), Integer.valueOf(number));
			}
			
			for(Long id : cart.getCartItems().keySet()) {
				Item it = cart.getCartItems().get(id);
				System.out.println(it.getProduct().getName() + " " + it.getNumber());
			}
			
			return "cart";
		}
	}
	
	public String deleteItem() {
		this.request = ServletActionContext.getRequest();
		this.session = this.request.getSession();
		String []  itemCheck = this.request.getParameterValues("itemCheck");
		
		if(itemCheck == null || itemCheck.length == 0) {
			return "cart";
		}
		else {
			logger.info("Deleting item size=" + itemCheck.length);
			Long [] productIds = new Long[itemCheck.length];
			
			for (int i = 0; i < productIds.length; i++) {
				productIds[i] = Long.valueOf(itemCheck[i]);
			}
			
			Cart cart = (Cart) this.session.getAttribute(Constants.SESSION_CART);
			cart.deleteItemByProductId(productIds);
			
			for(Long id : cart.getCartItems().keySet()) {
				Item it = cart.getCartItems().get(id);
				System.out.println(it.getProduct().getName() + " " + it.getNumber());
			}
			
			return "cart";
		}
	}
	
	public String clear() {
		this.request = ServletActionContext.getRequest();
		this.session = this.request.getSession();
		logger.info("正在清除購物車...");
		Cart cart = (Cart) this.session.getAttribute(Constants.SESSION_CART);
		cart.clear();
		
		for(Long id : cart.getCartItems().keySet()) {
			Item it = cart.getCartItems().get(id);
			System.out.println(it.getProduct().getName() + " " + it.getNumber());
		}
		
		return "cart";
	}
}