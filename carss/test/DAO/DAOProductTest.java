/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import pojo.Product;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import pojo.CarsUtil;

/**
 *
 * @author Danish
 */
public class DAOProductTest {
    
    public DAOProductTest() {
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
    public void testretrveTblproduct() {
    System.out.println("Test List Product");
    DAOProduct instance = new DAOProduct();
    List<Product> result = instance.retrveTblproduct();
    System.out.println("Total Product inside: " + result.toArray().length);
    assertFalse(result.isEmpty());
    }
    
    /**
     * Test of getbyID method, of class DAOReservation.
     */
    @Test
    public void testGetbyID() {
      System.out.println("Test Search by ID");
      String idProduct = "34";
      DAOProduct instance = new DAOProduct();
      List<Product> result = instance.getbyID(idProduct);
      assertFalse(result.isEmpty());
    }
    
    /**
     * Test of addReservation method, of class DAOReservation.
     */
    @Test
    public void testAddReservation() {
    System.out.println("Test Create Reservation");    
    Product product = new Product();
    product.setNamamobil("Mazda");
    product.setTahunkeluaran("2019");
    product.setWarna("Merah");
    product.setSpesifikasi("Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang");
    DAOProduct instance = new DAOProduct();
    instance.addProduct(product);    
    assertNotNull(product);
    }
    
    /**
     * Test of deleteUser method, of class DAOReservation.
     */
    @Test
    public void testDeleteUser() {
    System.out.println("Test Delete Product");    
    Integer idProduct = 32;
    DAOProduct instance = new DAOProduct(); 
    Transaction transaction = null;
    Session session = CarsUtil.getSessionFactory().openSession();    
    transaction = session.beginTransaction();
    instance.deleteUser(idProduct);
    transaction.commit();    
    Product deletedProduct = (Product) session.get(Product.class, idProduct);
    assertNull(deletedProduct);
    }
    
/**
     * Test of editUser method, of class DAOReservation.
     */
    @Test
    public void testEditUser() {
        System.out.println("Test Update Product");
    
    DAOProduct instance = new DAOProduct();
    Transaction transaction = null;
    Session session = CarsUtil.getSessionFactory().openSession();
    
    Integer id = 33;
    Product product = new Product();
    product.setId(id);
    product.setNamamobil("Mazda");
    product.setTahunkeluaran("2019");
    product.setWarna("merah");
    product.setSpesifikasi("Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang");
    transaction = session.beginTransaction();
    instance.editUser(product);
    transaction.commit();
    
    Product updatedProduct = (Product) session.get(Product.class, id);
    
    String expResult = "Mazda";
    String result = updatedProduct.getNamamobil();
    
    assertEquals(expResult, result);
    }    
}
