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

import br.edu.infnet.appservico.model.Servico;
import br.edu.infnet.appservico.service.ClienteService;
import br.edu.infnet.appservico.service.ServicoService;

@Controller
public class ServicoController {

	@Autowired
	ServicoService service;
	
	@Autowired
	ClienteService clienteService;
	
	@RequestMapping(value = {"/", "index"}, method = RequestMethod.GET)
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping(value = "servico/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("listaServico", (service.getAll()));
		return "servico/list";
	}
	
	@RequestMapping(value = "servico/form", method = RequestMethod.GET)
	public String form(Model model, @ModelAttribute("servico")Servico servico) {
		model.addAttribute("listaClientes", (clienteService.getAtivos()));
		return "servico/form";
	}
	
	@RequestMapping(value = "servico/add", method = RequestMethod.POST)
	public String add(Model model, @Valid @ModelAttribute("servico")Servico servico, BindingResult result) {		
		
		if(result.hasErrors()) {
			
			model.addAttribute("listaClientes", (clienteService.getAtivos()));
			model.addAttribute("error", "Favor preencher todos os campos!");
			return "servico/form";
		}
		
		service.save(servico);
		return "redirect:/servico/list";
	}
	
	@RequestMapping(value = "servico/delete/{id}", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable("id") Integer id) {
		service.delete(id);
		return "redirect:/servico/list";
	}
	
	@RequestMapping(value = "servico/edit/{id}", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") Integer id) {
		model.addAttribute("listaClientes", (clienteService.getAtivos()));
		model.addAttribute("servico", service.getOne(id));
		return "servico/edit";
	}
	
	@RequestMapping(value = "servico/update", method = RequestMethod.POST)
	public String update(Model model, @Valid @ModelAttribute("servico") Servico servico, BindingResult result) {
		
		if(result.hasErrors()) {
			
			model.addAttribute("listaClientes", (clienteService.getAtivos()));
			model.addAttribute("error", "Favor preencher todos os campos!");
			return "servico/edit";
		}
		service.edit(servico);
		return "redirect:/servico/list";
	}
	
}
