package br.edu.infnet.appservico.service;

import java.util.List;

public interface IService<T> {

	public void save(T t);
	
	public void delete(Integer id);
	
	public void edit(T t);
	
	public T getOne(Integer id);
	
	public List<T> getAll();
	
}
