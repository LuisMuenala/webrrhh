package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.distribuida.entities.ContratacionDetalle;


@Repository
public class ContratacionDetalleDAOImpl implements ContratacionDetalleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	@Transactional
	public List<ContratacionDetalle > findAll(){
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from ContratacionDetalle ",ContratacionDetalle.class).getResultList();
	}

	@Override
	@Transactional
	public ContratacionDetalle findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(ContratacionDetalle.class,id);
	}
	
	@Override
	@Transactional
	public void add(ContratacionDetalle  contratacionDetalle) {
	Session session=sessionFactory.getCurrentSession();	// TODO Auto-generated method stub
	session.saveOrUpdate(contratacionDetalle);
	
	}
	
	@Override
	@Transactional
	public void up(ContratacionDetalle contratacionDetalle) {
		Session session=sessionFactory.getCurrentSession();	// TODO Auto-generated method stub
		session.saveOrUpdate(contratacionDetalle);
		// TODO Auto-generated method stub

	}
	
	@Override
	@Transactional
	public void del(int id) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
		// TODO Auto-generated method stub

	}

}
