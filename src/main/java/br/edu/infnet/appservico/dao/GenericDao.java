package br.edu.infnet.appservico.dao;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.springframework.stereotype.Repository;

@Repository
public abstract class GenericDao<T> implements IDao<T> {

	@PersistenceContext
	private EntityManager em;
	
	private Class<T> classe;
	
	public GenericDao() {
		this.classe = ((Class<T>)((ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[0]);
	}
	
	
	@Override
	public void save(T t) {
		em.persist(t);
	}

	@Override
	public void delete(Integer id) {
		em.remove(getOne(id));
	}

	@Override
	public void edit(T t) {
		em.merge(t);	
	}

	@Override
	public T getOne(Integer id) {
		return em.find(classe, id);
	}

	@Override
	public List<T> getAll() {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<T> query = cb.createQuery(classe);
		query.from(classe);
		return em.createQuery(query).getResultList();
	}


	public EntityManager getEm() {
		return em;
	}


	public void setEm(EntityManager em) {
		this.em = em;
	}

}
