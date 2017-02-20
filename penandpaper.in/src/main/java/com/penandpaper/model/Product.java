package com.penandpaper.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pId;
	@NotEmpty(message="Product Name is mandatory")
	private String pName;
	@NotEmpty(message="Description is Mandatory")
	private String pDescription;
	@Min(value=1,message="Minimum qantity must be 1")
	private int pQuantity;
	@Min(value=10,message="Minimum value of price must be Rs.10")
	private double pPrice;
	@NotNull(message="Manufacturing date is mandatory")
	private Date pMfg;
	@ManyToOne
    @JoinColumn(name="cid")
	@NotNull(message="Category is mandatory")
	private Category category;
	@NotNull(message="Sub Category is mandatory")
	private String subCategory;
	
	public String getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}
	@Transient 
	private MultipartFile image;
    public Product()
     {
	
     }
	
		public Product(int pId, String pName, String pDescription, int pQuantity, double pPrice, Date pMfg, MultipartFile image) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.pDescription = pDescription;
		this.pQuantity = pQuantity;
		this.pPrice = pPrice;
		this.pMfg = pMfg;
		this.image = image;
	}
    
	
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDesciption) {
		this.pDescription = pDesciption;
	}
	public int getpQuantity() {
		return pQuantity;
	}
	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}
	public double getpPrice() {
		return pPrice;
	}
	
	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}
	public Date getpMfg() {
		return pMfg;
	}
	public void setpMfg(Date pMfg) {
		this.pMfg = pMfg;
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}

	}



