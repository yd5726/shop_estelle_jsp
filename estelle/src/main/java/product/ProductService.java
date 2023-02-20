package product;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import vo.ProductVO;

@Service
public interface ProductService {
	List<ProductVO> product_list();
	List<ProductVO> kcode_list(HashMap<String, String> tempMap);
}
