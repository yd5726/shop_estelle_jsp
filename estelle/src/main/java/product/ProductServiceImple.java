package product;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vo.ProductVO;

@Service
public class ProductServiceImple implements ProductService{
	
	@Autowired private ProductDAO dao;

	@Override
	public List<ProductVO> product_list() {
		return dao.product_list();
	}
	/*
	@Override
	public List<ProductVO> kcode_list(int kcode) {
		return dao.kcode_list(kcode);
	}
	*/
	@Override
	public List<ProductVO> kcode_list(HashMap<String, String> tempMap) {
		return dao.kcode_list(tempMap);
	}

}
