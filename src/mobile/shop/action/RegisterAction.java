package mobile.shop.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import mobile.shop.common.Constants;
import mobile.shop.dto.UserDTO;
import mobile.shop.model.User;
import mobile.shop.service.UserService;
import mobile.shop.util.EmailAttachmentSender;
import mobile.shop.util.ProductCode;

public class RegisterAction extends ActionSupport implements ModelDriven {
	private UserDTO userDTO = new UserDTO();
	private User user = new User();
	private UserService userService;
	private Map<String, Object> session;
	private EmailAttachmentSender emailSender = new EmailAttachmentSender();
	private String username;
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	public String userRegister() {
		session = (Map) ActionContext.getContext().getSession();
		String rand = (String) request.getSession().getAttribute("rand");
		System.out.println("≈Á√“ΩX" + rand);
		String ret = "";
		
		if(userDTO.getPassword1() != userDTO.getPassword2()) {
			ret = "reset";
		}
		else if(!rand.equals(userDTO.getRand()) || userDTO.getRand() == null) {
			ret = "reset";
		}
		else if(!rand.equals(userDTO.getRand()) || userDTO.getRand() == null) {
			ret = "reset";
		}
		else if(userDTO.getEmail() != null && userDTO.getUsername() !=null) {
			user.set(userDTO);
			session.put(user.getUsername(), user);
			emailSender.send(user.getEmail(), user.getUsername());
			ret ="verify";
		}
		else {
			ret = "reset";
		}
		
		return ret;
	}
	
	public String usersave() {
		session = (Map) ActionContext.getContext().getSession();
		User u = (User) session.get(username);
		System.out.println(username + u.getEmail());
		userService.add(u);
		
		return "save";
	}
	
	public void  code() {
		request = ServletActionContext.getRequest();
		response = ServletActionContext.getResponse();
		ProductCode.productCode(request, response);
	}
	
	@Override
	public Object getModel() {
		return userDTO;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}