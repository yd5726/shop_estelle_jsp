package product;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import vo.ProductVO;

@Repository
public class ProductDAO implements ProductService{
	@Autowired @Qualifier("minju") private SqlSession sql;

	@Override
	public List<ProductVO> product_list() {
		return sql.selectList("product.list");
	}
	/*
	@Override
	public List<ProductVO> kcode_list(int kcode) {
		return sql.selectList("product.kcode_list", kcode);
	}
	*/
	@Override
	public List<ProductVO> kcode_list(HashMap<String, String> tempMap) {
		return sql.selectList("product.kcode_list",tempMap);
	}
}
