package ie.atu.pool;

import java.text.NumberFormat;
import java.util.Locale;

public class Storage {

    private String id;
    private String brand;
    private String name;
    private String products;
    private String quantity;
    private String category;
    private double price;
    protected static int count = 0;

    public Storage() {
        id =          "";
        name =        "";
        products =    "";
        quantity =    "";
        category =    "";
        price =      0.0;
        count++;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setProducts(String products) {
        this.products = products;
    }

    public String getProducts(){return products;}

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategory(){return category;}

    public void setPrice(double price) {this.price = price;}

    public double getPrice() {
        return price;
    }
    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getQuantity(){return quantity;}
    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getBrand(){return brand;}

    public String getPriceFormatted() {
        Locale cLocale = new Locale.Builder().setLanguage("en").setRegion("GR").build();
        NumberFormat currency = NumberFormat.getCurrencyInstance(cLocale);
        return currency.format(price);
    }

    public String toString() {
        return brand +"\n"+ name + "\n"+quantity +"\n"+ category+ "\n" + price;
    }

    public static int getCount() {
        return count;
    }
}
