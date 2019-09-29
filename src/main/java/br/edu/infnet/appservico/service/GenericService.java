package br.edu.infnet.appservico.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.appservico.dao.GenericDao;

@Service
public abstract class GenericService<T> {

	@Autowired
	private GenericDao<T> dao;
	
	public GenericService(GenericDao<T> dao) {
		this.dao = dao;
	}
	
	public GenericService() {
	}
	
	@Transactional(propagation = Propagation.REQUIRED)
	public void save(T t) {
		dao.save(t);
	}
	
	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Integer id) {
		dao.delete(id);
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void edit(T t) {
		dao.edit(t);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public T getOne(Integer id) {
		return dao.getOne(id);
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public List<T> getAll() {
		return dao.getAll();
	}

//	public GenericDao<T> getDao() {
//		return dao;
//	}
//
//	public void setDao(GenericDao<T> dao) {
//		this.dao = dao;
//	}

}
