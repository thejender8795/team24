
public class Cart {

	private int pid;// productid
	private Product product;//　product
	private int count;// quantity
	private double price;// price
	
	public Cart() {
		super();
	}
	public Cart(Product product, int count) {
		super();
		this.pid = product.getId();
		this.product = product;
		this.count = count;
		this.price = product.getPriceShop();;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}