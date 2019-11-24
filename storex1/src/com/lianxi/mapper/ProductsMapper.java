package com.lianxi.mapper;

import com.lianxi.entity.Product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface ProductsMapper {
     Product queryProductByName(String name);
     Product queryProductById(@Param(value="id")String id);
     int deleteProductById(int id);
     int addProduct(Product student);
     int updateProductById(Product student);
     int updateImgById(Map<String, Object> map);
     List<Product> queryProductByPage(Map<String, Object> map);
     List<Product> queryAllProduct(@Param(value="categoty")String categoty);
}
