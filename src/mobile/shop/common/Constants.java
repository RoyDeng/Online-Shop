package mobile.shop.common;

public class Constants {
	public static final int ORDER_STATUS_POST = 1;
	public static final int ORDER_STATUS_SEND = 2;
	public static final int ORDER_STATUS_RECEIVE = 3;
	public static final int ORDER_STATUS_END = 4;
	public static final String SESSION_CART = "cart";
	public static final String SESSION_USER = "user";
	public static final String REQ_PRODUCTS = "products";
	public static final String REQ_ORDER_NUMBER = "orderNum";
	public static final String REQ_ORDERS = "orders";
	
	public static String OrderStatus(int status) {
		String text = null;
		
		switch (status) {
			case Constants.ORDER_STATUS_POST:
				text = "�w����";
				break;
			case Constants.ORDER_STATUS_SEND:
				text = "�f��w�H�X";
				break;
			case Constants.ORDER_STATUS_RECEIVE:
				text = "�w���f";
				break;
			case Constants.ORDER_STATUS_END:
				text = "�w����";
				break;
			default:
				break;	
		}
		
		return text;
	}
}
