package mobile.shop.action;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import mobile.shop.common.Constants;
import mobile.shop.model.Cart;
import mobile.shop.model.Product;
import mobile.shop.service.ProductService;
import mobile.shop.service.UserService;

public class ListAction extends ActionSupport {
	private ProductService productService;
	private List< Product > productlist;
	private Long productId;
	private UserService userService;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	private ServletContext application;
	private int page;
	private int maxpage;
	private int type;
	
	public int getType() {
		return type;
	}
	
	public void setType(int type) {
		this.type = type;
	}
	
	public int getPage() {
		return page;
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getMaxpage() {
		return maxpage;
	}
	
	public void setMaxpage(int maxpage) {
		this.maxpage = maxpage;
	}
	
	public ProductService getProductService() {
		return productService;
	}
	
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	public List<Product> getProductlist() {
		return productlist;
	}
	
	public void setProductlist(List<Product> productlist) {
		this.productlist = productlist;
	}
	
	public Long getProductId() {
		return productId;
	}
	
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	
	public String list() {
		this.request = ServletActionContext.getRequest();
		int maxpage = this.productService.maxSize();
		int pageNo = 1;
		int pageSize = 6;
		
		if (page >  0) {
			pageNo = page;
		}
		
		productlist = this.productService.getByPage(pageNo, pageSize);
		request.setAttribute("page", pageNo);
		request.setAttribute("maxpage", maxpage);
		return"list";
	}
	
	public String addItem() {
		String ret = "add";
		System.out.println(productId);
		Product product = this.productService.getProduct(productId);
		this.request = ServletActionContext.getRequest();
		this.session = this.request.getSession();
		Cart cart = (Cart) this.session.getAttribute(Constants.SESSION_CART);
		
		if (cart == null) {
			cart = new Cart( );
			this.session.setAttribute(Constants.SESSION_CART, cart );
		}
		
		cart.addItem(product, 1);
		System.out.println(cart.getPrice());
		
		if (type == 1) {
			ret ="find";
			type = 0;
		}
		
		return ret;
	}
}