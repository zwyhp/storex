package com.lianxi.service.impl;

import com.lianxi.entity.PageBean;
import com.lianxi.entity.Product;
import com.lianxi.mapper.ProductsMapper;
import com.lianxi.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;




@Service
public class ProductsServiceImp implements ProductsService {
    @Autowired
    private ProductsMapper productsMapper;
     
    @Override
    public Product queryProductByName(String name) {
        return null;
    }

    @Override
	public Product queryProductById(String id) {
   
    	return productsMapper.queryProductById(id);
		
	}
    @Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateProductById(Product product) {
		
		return 0;
	}

    @Override
    public int deleteProductById(int id) {
        return 0;
    }

   	@Override
	public PageBean queryProductByPage(String categoty, int offset, int pageSize) {
		PageBean pageBean = new PageBean();
		pageBean.setEveryPageProCount(pageSize);
		pageBean.setCurrentPage(offset);
		pageBean.setCategory(categoty);
		Map<String, Object> map = new HashMap<>();
		map.put("categoty", categoty);
		map.put("offset", offset-1);
		map.put("pageSize", pageSize);
		List<Product> relust = productsMapper.queryProductByPage(map);
		pageBean.setPageCount(productsMapper.queryAllProduct(categoty).size()/pageSize+1);
		pageBean.setTotalCount(productsMapper.queryAllProduct(categoty).size());
		
		pageBean.setLstProduct(relust);
		return pageBean;
	}

	@Override
	public int updateImgById(String id, String filepath) {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("imgurl", filepath);
		productsMapper.updateImgById(map);
		return 0;
	}
}
