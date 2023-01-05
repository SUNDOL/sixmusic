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
import com.kh.sixmusic.product.model.vo.ProductGroup;

@Repository
public class AdminDao {

	public int addToProduct(SqlSessionTemplate sqlSession, Product p) {
		return sqlSession.insert("adminMapper.addToProduct",p);
	}
	
	public int selectSeqProduct(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("adminMapper.selectSeqProduct");
	}
	
	public String groupName(SqlSessionTemplate sqlSession, int groupNo) {
		return sqlSession.selectOne("adminMapper.groupName", groupNo);
	}
	
	public int addToProductImage(SqlSessionTemplate sqlSession, ArrayList<ProductAttachment> patList) {

		int result = 0;
		for (ProductAttachment pat:patList) {
			result += sqlSession.insert("adminMapper.addToProductImage",pat);
		}
		return result;
	}
	
	
	public int addToGroup(SqlSessionTemplate sqlSession, ProductGroup pg) {
		return sqlSession.insert("adminMapper.addToGroup",pg);
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
	public ArrayList<Brand> selectBrand(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectBrand");
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

	public int modiBrand(SqlSessionTemplate sqlSession, Brand b) {
		return sqlSession.update("adminMapper.modiBrand", b);
	}

	public int modiModel(SqlSessionTemplate sqlSession, Model m) {
		return sqlSession.update("adminMapper.modiModel", m);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ArrayList<Model> selectModel(SqlSessionTemplate sqlSession, int brandNo) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectModel", brandNo);
	}








}
