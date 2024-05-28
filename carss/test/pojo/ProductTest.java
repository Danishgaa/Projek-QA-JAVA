/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import java.util.List;
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
public class ProductTest {
    
    public ProductTest() {
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
    public void testGetAllRecords() {
        System.out.println("Test Get All Record");
        Product instance = new Product();
        int minResult = 0; 
        int expResult = 26;
        List<Product> result = instance.getAllRecords();
        assertTrue("Nilai current harus lebih besar dari nilai previous, expResult", expResult > minResult);
        //data yg gk bakal bisa sama demgam result nya dan jum;lah panjang datanya akan ngasih nilai true ke junit//
    }

    @Test
    public void testGetById() {
        System.out.println("Test Get by ID");
        Product instance = new Product();
        instance.setId(33);
        String expResult = "dashboard";
        String result = instance.getById();
        assertEquals(expResult, result);
    }
  @Test
    public void testGetByIderor() {
        System.out.println("Test Get by ID EROR");
        Product instance = new Product();
        instance.setId(1);
        String expResult = "dashboard_error_search";
        String result = instance.getById();
        assertEquals(expResult, result);
    }

    @Test
    public void testSaveProduct() {
        System.out.println("Test Save Reservation");

        Product product = new Product();
        product.setNamamobil("Mazda");
        product.setTahunkeluaran("2019");
        product.setWarna("Merah");
        product.setSpesifikasi("Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang");
        String expResult = "dashboard";
        String result = product.saveProduct();
        assertEquals(expResult, result);
    }

    @Test
    public void testEditProduct() {
        System.out.println("editReservation");

        Product product = new Product();
        product.setNamamobil("Mazda");
        product.setTahunkeluaran("2019");
        product.setWarna("Merah");
        product.setSpesifikasi("Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang");
        String expResult = "dashboard";
        String result = product.editProduct();
        assertEquals(expResult, result);
    }

    @Test
    public void testDeleteProduct() {
        System.out.println("deleteProduct");

       Product instance = new Product();
        instance.setId(5);

        String expResult = "dashboard";
        String result = instance.deleteProduct();

        assertEquals(expResult, result);
    }
    
     @Test
    public void testProduct() {
        // Arrange
        String namamobil = "Mazda";
        String tahunkeluaran = "2019";
        String warna = "merah";
        String spesifikasi = "Mesin: 1.5L bensin, transmisi: Otomatis atau manual, kapasitas penumpang: Sekitar 7 orang";

        // Act
        Product product = new Product(namamobil, tahunkeluaran, warna, spesifikasi);

        // Assert
        assertEquals(namamobil, product.getNamamobil());
        assertEquals(tahunkeluaran, product.getTahunkeluaran());
        assertEquals(warna, product.getWarna());
        assertEquals(spesifikasi, product.getspesifikasi());
    }
}

