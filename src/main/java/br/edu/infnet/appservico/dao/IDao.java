package br.edu.infnet.appservico.dao;

import java.util.List;

public interface IDao<T> {

	void save(T t);
	
	void delete(Integer id);
	
	void edit(T t);
	
	T getOne(Integer id);
	
	List<T> getAll();
	
}
