package pojo;
// Generated Oct 1, 2021 11:35:14 AM by Hibernate Tools 4.3.1

import DAO.DAOLogin;
import DAO.DAOProduct;
import java.util.List;
import javax.faces.bean.ManagedBean;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Product generated by hbm2java
 */
@ManagedBean
public class Product implements java.io.Serializable {

    private Integer id;
    private String namamobil;
    private String tahunkeluaran;
    private String warna;
    private String spesifikasi;

    ;
     
    public List<Product> getAllRecords() {
        DAOProduct product = new DAOProduct();
        List<Product> listProduct = product.retrveTblproduct();
        return listProduct;
    }

    public String getById() {
        String idProduct = id.toString();
        DAOProduct product = new DAOProduct();
        List<Product> listProduct = product.getbyID(idProduct);
        try {
            if (listProduct != null) {
                namamobil = listProduct.get(0).namamobil;
                tahunkeluaran = listProduct.get(0).tahunkeluaran;
                warna = listProduct.get(0).warna;
                spesifikasi = listProduct.get(0).spesifikasi;
                return "dashboard";
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return "dashboard_error_search";
    }

    public String saveProduct() {
        DAOProduct product = new DAOProduct();
        product.addProduct(this);
        namamobil = "";
        tahunkeluaran = "";
        warna = "";
        spesifikasi = "";
        return "dashboard";
    }

    public String editProduct() {
        DAOProduct product = new DAOProduct();
        product.editUser(this);
        namamobil = "";
        tahunkeluaran = "";
        warna = "";
        spesifikasi = "";
        return "dashboard";
    }

    public String deleteProduct() {
        DAOProduct product = new DAOProduct();
        product.deleteUser(id);
        namamobil = "";
        tahunkeluaran = "";
        warna = "";
        spesifikasi = "";
        return "dashboard";
    }

    public Product() {
    }

    public Product(String namamobil, String tahunkeluaran, String warna, String spesifikasi) {
        this.namamobil = namamobil;
        this.tahunkeluaran = tahunkeluaran;
        this.warna = warna;
        this.spesifikasi = spesifikasi;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNamamobil() {
        return this.namamobil;
    }

    public void setNamamobil(String namamobil) {
        this.namamobil = namamobil;
    }

    public String getTahunkeluaran() {
        return this.tahunkeluaran;
    }

    public void setTahunkeluaran(String tahunkeluaran) {
        this.tahunkeluaran = tahunkeluaran;
    }

    public String getWarna() {
        return this.warna;
    }

    public void setWarna(String warna) {
        this.warna = warna;
    }

    public String getspesifikasi() {
        return this.spesifikasi;
    }

    public void setSpesifikasi(String spesifikasi) {
        this.spesifikasi = spesifikasi;
    }
}
