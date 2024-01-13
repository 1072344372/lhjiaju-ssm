package asia.lhweb.furn.bean;

import java.math.BigDecimal;

/**
 * 订单项
 *
 * @author 罗汉
 * @date 2023/04/08
 */
public class OrderItem{
    /**
     * -- 创建订单项表
     * CREATE TABLE `order_item`(
     * id INT PRIMARY KEY AUTO_INCREMENT, -- 订单项的id
     * `name` VARCHAR(64) NOT NULL, -- 家居名
     * `price` DECIMAL(11,2) NOT NULL, -- 家居价格
     * `count` INT NOT NULL, -- 数量
     * `total_price` DECIMAL(11,2) NOT NULL, -- 订单项的总价
     * `order_id` VARCHAR(64) NOT NULL -- 对应的订单号
     * )CHARSET utf8 ENGINE INNODB
     */
    private Integer id;
    private String name;
    private BigDecimal price;
    private Integer count;
    private BigDecimal totalPrice;
    private String orderId;
    public OrderItem() {
        super();
    }

    public OrderItem(Integer id, String name, BigDecimal price, Integer count, BigDecimal totalPrice, String orderId) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.count = count;
        this.totalPrice = totalPrice;
        this.orderId = orderId;
    }

    public void setId(Integer id){
        this.id=id;
    }
    public Integer getId(){
        return this.id;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return this.name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public void setCount(Integer count){
        this.count=count;
    }
    public Integer getCount(){
        return this.count;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void setOrderId(String orderId){
        this.orderId=orderId;
    }
    public String getOrderId(){
        return this.orderId;
    }

    @Override
    public String  toString() {
        return "OrderItem{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", count=" + count +
                ", totalPrice=" + totalPrice +
                ", orderId='" + orderId + '\'' +
                '}';
    }
}