package com.kh.sixmusic.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Type;
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

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList<Category> selectAllCategory(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectAllCategory");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList<Brand> selectAllBrand(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectAllBrand");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList<Type> selectAllType(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectAllType");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList<Product> selectAllProduct(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectAllProduct");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList<Model> selectAllModel(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectAllModel");
	}

	public int addToBrand(SqlSessionTemplate sqlSession, String brand) {
		return sqlSession.insert("adminMapper.addToBrand", brand);
	}

	public int addToModel(SqlSessionTemplate sqlSession, Model model) {
		return sqlSession.insert("adminMapper.addToModel", model);
	}

	public int selectSeqBrand(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectSeqBrand");
	}

	public int selectSeqModel(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectSeqModel");
	}



}
