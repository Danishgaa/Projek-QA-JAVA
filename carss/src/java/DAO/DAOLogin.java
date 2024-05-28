/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Employee;
import pojo.CarsUtil;

/**
 *
 * @author SEAN
 */
public class DAOLogin {
     public List<Employee> getBy(String uEmail, String uPass) {
        Transaction trans = null;
        Employee us = new Employee();
        List<Employee> user = new ArrayList();
        Session session = CarsUtil.getSessionFactory().openSession();
        
        try {
            trans = session.beginTransaction();
            Query query = session.createQuery("from Employee where email=:uEmail AND password=:uPass");
            query.setString("uEmail", uEmail);
            query.setString("uPass", uPass);
            us = (Employee) query.uniqueResult();
            user = query.list();
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
        }
        return user;
    }
    
    public String add_user(Employee user){
        Transaction trans = null;
        Session session = CarsUtil.getSessionFactory().openSession();
        try {
            trans = session.beginTransaction();
            session.save(user);
            trans.commit();
            return "login";
        } catch (Exception e) {
            System.out.println(e);
        }
        return "register_error";
    }
}
