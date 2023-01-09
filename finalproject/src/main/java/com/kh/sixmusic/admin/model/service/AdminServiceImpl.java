package com.kh.sixmusic.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.sixmusic.admin.model.dao.AdminDao;
import com.kh.sixmusic.data.model.vo.Brand;
import com.kh.sixmusic.data.model.vo.Category;
import com.kh.sixmusic.data.model.vo.Model;
import com.kh.sixmusic.data.model.vo.Type;
import com.kh.sixmusic.member.model.vo.Member;
import com.kh.sixmusic.product.model.vo.Product;
import com.kh.sixmusic.product.model.vo.ProductAttachment;
import com.kh.sixmusic.product.model.vo.ProductGroup;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDao AdminDao;

	@Override
	public int addToProduct(Product p) {
		if (p.getGroupNo() != 0) {
			String name = AdminDao.groupName(sqlSession, p.getGroupNo());
			p.setName(name);
		}
		int result = AdminDao.addToProduct(sqlSession, p);
		if (result > 0) {
			result = AdminDao.selectSeqProduct(sqlSession);
			ProductGroup pg = new ProductGroup(p.getGroupNo(), result);
			result *= AdminDao.addToGroup(sqlSession, pg);
		}
		return result;
	}

	@Override
	public int addToProductImage(ArrayList<ProductAttachment> patList) {
		int result = AdminDao.addToProductImage(sqlSession, patList);
		return result;
	}

	@Override
	public int removeProduct(int productNo) {
		return AdminDao.removeProduct(sqlSession, productNo);
	}

	@Override
	public int removeMember(int memberNo) {
		return AdminDao.removeMember(sqlSession, memberNo);
	}

	@Override
	public int grandPoint(Member m) {
		return AdminDao.grandPoint(sqlSession, m);
	}

	@Override
	public int modifyMemberGrade(Member m) {
		return AdminDao.modifyMemberGrade(sqlSession, m);
	}


	@Override
	public ArrayList<Brand> selectBrand() {
		return AdminDao.selectBrand(sqlSession);
	}


	@Override
	public int addToBrand(String brand) {
		int result = AdminDao.addToBrand(sqlSession, brand);
		if (result>0) {
			result = AdminDao.selectSeqBrand(sqlSession);
		}
		return result;
	}

	@Override
	public int addToModel(Model model) {
		int result = AdminDao.addToModel(sqlSession, model);
		if (result>0) {
			result = AdminDao.selectSeqModel(sqlSession);
		}
		return result;
	}

	@Override
	public int modiBrand(Brand b) {
		return AdminDao.modiBrand(sqlSession, b);
	}

	@Override
	public int modiModel(Model m) {
		return AdminDao.modiModel(sqlSession, m);
	}

	@Override
	public ArrayList<Model> selectModel(int brandNo) {
		return AdminDao.selectModel(sqlSession,brandNo);
	}

	@Override
	public int changeToProduct(Product p) {
		return AdminDao.changeToProduct(sqlSession,p);
	}

}
