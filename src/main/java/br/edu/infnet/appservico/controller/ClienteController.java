package br.edu.infnet.appservico.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.infnet.appservico.model.Cliente;
import br.edu.infnet.appservico.service.ClienteService;

@Controller
public class ClienteController {
	
	@Autowired
	ClienteService service;
	
	@RequestMapping(value = "cliente/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("listaCliente", service.getAll());
		return "cliente/list";
	}

	@RequestMapping(value = "cliente/form", method = RequestMethod.GET)
	public String form(Model model, @ModelAttribute("cliente")Cliente cliente) {
		return "cliente/form";
	}
	
	@RequestMapping(value = "cliente/add", method = RequestMethod.POST)
	public String add(Model model, @Valid @ModelAttribute("cliente")Cliente cliente, BindingResult result) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("error", "Favor preencher todos os campos!");
			return "cliente/form";
		}
		service.save(cliente);
		return "redirect:/cliente/list";
	}

	@RequestMapping(value = "cliente/edit/{id}", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") Integer id ) {
		model.addAttribute("cliente", service.getOne(id));
		return "cliente/edit";
	}
	
	@RequestMapping(value = "cliente/update", method = RequestMethod.POST)
	public String update(Model model, @Valid @ModelAttribute("cliente")Cliente cliente, BindingResult result) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("error", "Favor preencher todos os campos!");
			return "cliente/edit";
		}
		
		service.edit(cliente);
		return "redirect:/cliente/list";
	}
	
	@RequestMapping(value = "cliente/delete/{id}", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable("id") Integer id) {
		service.delete(id);
		return "redirect:/cliente/list";
	}
	
	@RequestMapping(value = "cliente/disable/{id}", method = RequestMethod.GET)
	public String desativar(Model model, @PathVariable("id") Integer id) {
		service.desativar(id);
		return "redirect:/cliente/list";
	}
	
	@RequestMapping(value = "cliente/enable/{id}", method = RequestMethod.GET)
	public String ativar(Model model, @PathVariable("id") Integer id) {
		service.ativar(id);
		return "redirect:/cliente/list";
	}
	
	public ClienteService getService() {
		return service;
	}

	public void setService(ClienteService service) {
		this.service = service;
	}


	
}
