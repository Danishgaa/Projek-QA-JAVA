package pojo;
// Generated Oct 1, 2021 11:35:14 AM by Hibernate Tools 4.3.1

import DAO.DAOLogin;
import java.util.List;
import javax.faces.bean.ManagedBean;

/**
 * Employee generated by hbm2java
 */
@ManagedBean
public class Employee  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String email;
     private String password;
     
    public String save_user() {
        DAOLogin add = new DAOLogin();
        add.add_user(this);  
        name = "";
        email = "";
        password = "";
        return "login";     
    }
    
    
    public String login_user() {
        DAOLogin uDao = new DAOLogin();
        List<Employee> us = uDao.getBy(email, password);
        try {
            if (us != null) {
                email = us.get(0).email;
                password = us.get(0).password;
                return "dashboard";
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return "login_error";
    }
 
    public Employee() {
    }

    public Employee(String name, String email, String password) {
       this.name = name;
       this.email = email;
       this.password = password;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }



}


