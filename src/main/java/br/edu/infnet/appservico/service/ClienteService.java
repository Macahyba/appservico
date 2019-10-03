package br.edu.infnet.appservico.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.appservico.dao.ClienteDao;
import br.edu.infnet.appservico.dao.GenericDao;
import br.edu.infnet.appservico.model.Cliente;

@Service
public class ClienteService extends GenericService<Cliente> {
	
	ClienteDao dao;
	Cliente cliente;
	
	@Autowired
	public ClienteService(GenericDao<Cliente> genericDao) {
		super(genericDao);
		this.dao = (ClienteDao) genericDao; 	
	}
	
	@Transactional
	public void desativar(Integer id) {
		
		cliente = dao.getOne(id);
		cliente.setAtivo(false);
		dao.edit(cliente);
	}
	
	@Transactional
	public void ativar(Integer id) {
		
		cliente = dao.getOne(id);
		cliente.setAtivo(true);
		dao.edit(cliente);
		
	}
	
	@Transactional
	public List<Cliente> getAtivos() {
		
		return dao.getAtivos();
	}
	
}
