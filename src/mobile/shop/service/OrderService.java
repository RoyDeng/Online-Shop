package mobile.shop.service;

import java.util.List;

import mobile.shop.model.Order;

public interface OrderService {
	public String generateOrder(Order order);
	public List<Order> getAllOrder();
	public Order getOrderById(long id);
	public void nextOrderStatus(long id);
}