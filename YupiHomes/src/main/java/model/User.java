        /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Andrea
 */
public class User {
    private String name;
    private String lastname;
    private String mail;
    private int id;
    private String password;
    private int properties;
    
    public User(String name, String lastname, String mail, int id, String password, int properties) {
        this.name = name;
        this.lastname = lastname;
        this.mail = mail;
        this.id = id;
        this.password = password;
        this.properties = properties;
    }
    
    public User(String name, String lastname, String mail, int id, String password) {
        this.name = name;
        this.lastname = lastname;
        this.mail = mail;
        this.id = id;
        this.password = password;
        this.properties = 0;
    }

    public User(){
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    public int getProperties() {
        return properties;
    }
    public void setProperties(int properties) {
        this.properties = properties;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("User{");
        sb.append("name=").append(name);
        sb.append(", lastname=").append(lastname);
        sb.append(", mail=").append(mail);
        sb.append(", id=").append(id);
        sb.append(", password=").append(password);
        sb.append(", properties=").append(properties);
        sb.append('}');
        return sb.toString();
    }
}
