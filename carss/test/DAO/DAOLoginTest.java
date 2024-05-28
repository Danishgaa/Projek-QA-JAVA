/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import pojo.Employee;
import java.util.List;
import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import pojo.Product;
/**
 *
 * @author Danish
 */
public class DAOLoginTest {
    
    public DAOLoginTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    @Test
    public void testGetBy() {
        System.out.println("Login Test");
        String uEmail = "danish@gmail.com";
        String uPass = "123";
        int empty = 1;
        DAOLogin instance = new DAOLogin();
        List<Employee> result = instance.getBy(uEmail, uPass);
        System.out.println(result.toArray().length);
        assertThat(result.toArray().length, is(equalTo(empty)));
    }
 
    @Test
    public void testAddUser() {
    System.out.println("Test Create User");    
    Employee employee = new Employee();
    employee.setName("danish");
    employee.setEmail("danish@gmail.com");
    employee.setPassword("123");
    DAOLogin instance = new DAOLogin();
    instance.add_user(employee);    
    assertNotNull(employee);
    }
    
     @Test
    public void testAddUserEror() {
    System.out.println("Test Create User Eror");    
    Employee employee = new Employee();
    employee.setName("dede");
    employee.setEmail("dede@gmail.com");
    employee.setPassword("dede");
    DAOLogin instance = new DAOLogin();
    instance.add_user(employee);    
    assertNotNull(employee);
    }
    
}
