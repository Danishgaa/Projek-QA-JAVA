/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import DAO.DAOLogin;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Danish
 */
public class EmployeeTest {
    
    public EmployeeTest() {
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
    // @Test
    // public void hello() {}
     @Test
    public void Testlogin_user() {
        System.out.println("Test Login User");

        Employee instance = new Employee();
        instance.setEmail("danish@gmail.com");
        instance.setPassword("123");

        String expResult = "dashboard";
        String result = instance.login_user();
        System.out.println(expResult);
        System.out.println(result);
        assertEquals(expResult, result);
    }
     @Test
    public void Testlogin_user2() {
        System.out.println("Test Login User Eror");

        Employee instance = new Employee();
        instance.setEmail("danish@gmail.com");
        instance.setPassword("ilham");

        String expResult = "login_error";
        String result = instance.login_user();
        System.out.println(expResult);
        System.out.println(result);
        assertEquals(expResult, result);
    }
    
    @Test
    public void testRegister() {
        // Arrange
        String name = "silpia@gmail.com";
        String email = "silpia";
        String password = "admin";

        // Act
        Employee employee = new Employee(name, email, password);

        // Assert
        assertEquals(name, employee.getEmail());
        assertEquals(email, employee.getEmail());
        assertEquals(password, employee.getPassword());
    }
    
    @Test
    public void testAddUser() {
    System.out.println("Test Create Register");    
    Employee employee = new Employee();
    employee.setName("aulia");
    employee.setEmail("aulia@gmail.com");
    employee.setPassword("aulia");
    String expResult = "register_error";
    String result = employee.save_user();
    assertEquals(expResult, result);
    }
    
    
}
