package br.edu.infnet.appservico.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import br.edu.infnet.appservico.model.Cliente;

@Repository
public class ClienteDao extends GenericDao<Cliente> {
	
	public List<Cliente> getAtivos(){
		CriteriaBuilder cb = getEm().getCriteriaBuilder();
		CriteriaQuery<Cliente> query = cb.createQuery(Cliente.class);
		Root<Cliente> qcliente = query.from(Cliente.class);
		query.select(qcliente).where(cb.equal(qcliente.get("ativo"), true));		
		return getEm().createQuery(query).getResultList();

	}
	

	
}
