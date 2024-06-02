/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Andrea
 */
public class Property {
    private int id;
    private String category;
    private String location;
    private String name;
    private int bathroom;
    private int bedroom;
    private String state;
    private int price;
    private String owner;
    private int ownerId;
    private String images;

    public Property(int id, String category, String location, String name, int bathroom,
            int bedroom, String state, int price, String owner, int ownerId, String images) {
        this.id = id;
        this.category = category;
        this.location = location;
        this.name = name;
        this.bathroom = bathroom;
        this.bedroom = bedroom;
        this.state = state;
        this.price = price;
        this.owner = owner;
        this.ownerId = ownerId;
        this.images = images;
    }

    public Property() {
    }
    
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }

    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public int getBathroom() {
        return bathroom;
    }
    public void setBathroom(int bathroom) {
        this.bathroom = bathroom;
    }
    
    public int getBedroom() {
        return bedroom;
    }
    public void setBedroom(int bedroom) {
        this.bedroom = bedroom;
    }
    
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }

    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    
    public String getOwner() {
        return owner;
    }
    public void setOwner(int ownerId) {
        this.ownerId = ownerId;
    }
    
    public int getOwnerId() {
        return ownerId;
    }
    public void setOwnerId(int ownerId) {
        this.ownerId = ownerId;
    }
    
    public String getImages() {
        return images;
    }
    public void setImages(String images) {
        this.images = images;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Property{");
        sb.append("category=").append(category);
        sb.append(", location=").append(location);
        sb.append(", name=").append(name);
        sb.append(", bathroom=").append(bathroom);
        sb.append(", bedroom=").append(bedroom);
        sb.append(", state=").append(state);
        sb.append(", price=").append(price);
        sb.append(", owner=").append(owner);
        sb.append(", ownerId=").append(ownerId);
        sb.append(", images=").append(images);
        sb.append('}');
        return sb.toString();
    }
}
