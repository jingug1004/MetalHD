package kr.co.hdmetal.OrderEdit;

import java.util.List;

import kr.co.hdmetal.VO.HDAlldataVO;
import kr.co.hdmetal.VO.HdCommentVO;
import kr.co.hdmetal.VO.HdInsertVO;
import kr.co.hdmetal.VO.HdProductsVO;

public interface OrderEditService {
	HdInsertVO selectOneByNum(String num);

	List<HDAlldataVO> selectListAll();
	
	List<HdProductsVO> selectProductsByNum(String num);

	void updateInfo(HdInsertVO vo);

	void updateList(HdProductsVO vo);
	
	void orderDelete(HdProductsVO vo);

	List<HdInsertVO> loglog(String num);

	List<HdCommentVO> comment(String num);

	


}
