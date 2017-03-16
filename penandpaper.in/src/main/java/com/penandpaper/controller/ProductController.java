package com.penandpaper.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.penandpaper.model.Product;
import com.penandpaper.service.ProductService;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.validation.Valid;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.penandpaper.service.CategoryService;
import com.penandpaper.dao.ProductDao;
@Controller
public class ProductController {
@Autowired
private ProductService productService;
@Autowired
private CategoryService categoryService;	
	public ProductController(){
	System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
}

//http://localhost:8080/penandpaper.in/admin/product/productform
@RequestMapping("/admin/product/productform")
public String getProductForm(Model model){
	//Product product = new Product();
	model.addAttribute("product",new Product());
	model.addAttribute("categories",categoryService.getCategories());
	return "productform";
}

@RequestMapping("/admin/product/addProduct")
public String saveProduct(@Valid @ModelAttribute(value="product") Product product, BindingResult result, Model model){
	model.addAttribute("product",new Product());
	model.addAttribute("categories",categoryService.getCategories());
	System.out.println("inside save method");
	if(result.hasErrors())
			
		return "productform";
	productService.saveProduct(product);
	MultipartFile prodImage=product.getImage();
	if(!prodImage.isEmpty()){
		Path paths=
Paths.get("E:\\penandpaper_in\\penandpaper.in\\src\\main\\webapp\\Resources\\images\\"+ product.getpId()+".png");
	try {
		prodImage.transferTo(new File(paths.toString()));
	} catch (IllegalStateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
return "redirect:/admin/product/getAllProducts";
}

	

@RequestMapping("/admin/product/getAllProducts")
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	model.addAttribute("categories",categoryService.getCategories());
	return "productlist";
}
@RequestMapping("/admin/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "viewproduct";
}

@RequestMapping("/admin/product/deleteproduct/{pId}")
public String deleteProduct(@PathVariable int pId){
	productService.deleteProduct(pId);
	return "redirect:/admin/product/getAllProducts";
}


/**
 *    to display the form to edit product details
 */
@RequestMapping("/admin/product/editform/{pId}")
public String editProductForm(@PathVariable int pId,Model model){
	Product product=productService.getProductById(pId);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
}
@RequestMapping("/admin/product/editProduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,
		BindingResult result){
	if(result.hasErrors())
		return "productform";
	productService.updateProduct(product);
	return "redirect:/admin/product/getAllProducts";
}

@RequestMapping("/admin/product/productsByCategory")
public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
		Model model){
	List<Product> products=productService.getAllProducts();
		model.addAttribute("productList",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productlist";
}

}

