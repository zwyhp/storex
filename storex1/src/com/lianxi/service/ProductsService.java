package com.lianxi.service;

import com.lianxi.entity.PageBean;
import com.lianxi.entity.Product;

import java.util.List;
import java.util.Map;

public interface ProductsService {
    Product queryProductByName(String name);
    Product queryProductById(String id);
    int deleteProductById(int id);
    int addProduct(Product product);
    int updateProductById(Product product);
    int updateImgById(String id, String filepath);
    PageBean queryProductByPage(String categoty,int offset,int pageSize);
}
