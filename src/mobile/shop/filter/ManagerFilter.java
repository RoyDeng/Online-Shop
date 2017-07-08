package mobile.shop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mobile.shop.common.Constants;
import mobile.shop.model.Administrator;
import mobile.shop.model.User;

public class ManagerFilter implements Filter {
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request ;
		HttpServletResponse res = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		String contextPath = req.getContentType();
		
		if(session.isNew() || session.getAttribute(Constants.SESSION_USER) == null) {
			res.sendRedirect("http://localhost/MobileShop/login.jsp");
			System.out.println(contextPath + "/login.jsp" );
			return;
		}
		else if(session.getAttribute(Constants.SESSION_USER) != null) {
			User user = (User) session.getAttribute(Constants.SESSION_USER);
			System.out.println(user.getName());
			if ((user instanceof Administrator) == false) {
				res.sendRedirect("http://localhost/MobileShop/login.jsp");
				System.out.println(contextPath + "/login.jsp" );
				return;
			}
			
		}
		
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
	}
}