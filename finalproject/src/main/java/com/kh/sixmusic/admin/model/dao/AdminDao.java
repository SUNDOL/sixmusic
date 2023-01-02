package com.kh.sixmusic.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;

@Repository
public class AdminDao {

	public int addToProduct(SqlSessionTemplate sqlSession, Product p) {
		return sqlSession.insert("adminMapper.addToProduct",p);
	}
	
	public int selectSeqProduct(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectSeqProduct");
	}
	
	public int addToProduct(SqlSessionTemplate sqlSession, ArrayList<ProductAttachment> patList) {
		return sqlSession.insert("adminMapper.addToProduct",patList);
	}

	public int removeProduct(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.update("adminMapper.removeProduct",productNo);
	}

	public int removeMember(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.update("adminMapper.removeMember",memberNo);
	}

	public int grandPoint(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("adminMapper.grandPoint",m);
	}

	public int modifyMemberGrade(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("adminMapper.modifyMemberGrade",m);
	}


	

}
