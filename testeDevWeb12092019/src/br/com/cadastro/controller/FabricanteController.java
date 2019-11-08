package br.com.cadastro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.FabricanteDAO;
import br.com.cadastro.model.Fabricante;

@Controller
public class FabricanteController {
	
    @Autowired
    FabricanteDAO daoFabricante;
    
	@RequestMapping("listaFabricantes")
    public String lista(Model modelFabricante) throws ClassNotFoundException {
        modelFabricante.addAttribute("fabricantes", daoFabricante.lista());
        return "fabricante/lista";
    }

	@RequestMapping("novoFabricante")
	public String form() {
		return "fabricante/insere";
	}
	
	@RequestMapping("adicionaFabricantes")
	public String adiciona(@Valid Fabricante fabricante, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("id") || result.hasFieldErrors("nome")|| result.hasFieldErrors("Cnpj")|| result.hasFieldErrors("telContato")|| result.hasFieldErrors("Email") ) {
			 return "fabricante/insere";
	     }
		daoFabricante.adiciona(fabricante);
		return "redirect:listaFabricantes";
	}
	
	@RequestMapping("editaFabricantes")
    public String edita(int id, Model modelFabricante) throws ClassNotFoundException {
        modelFabricante.addAttribute("fabricante", daoFabricante.buscaPorId(id));
        return "fabricante/edita";
    }
	
	@RequestMapping("alteraFabricante")
	public String altera(@Valid Fabricante fabricante, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("id") || result.hasFieldErrors("nome")|| result.hasFieldErrors("cnpj")|| result.hasFieldErrors("telContato")|| result.hasFieldErrors("Email")) {
			 return "fabricante/edita";
	     }
		daoFabricante.altera(fabricante);
        return "redirect:listaFabricantes";
    }
	
    @RequestMapping("removeFabricante")
    public String remove(Fabricante fabricante) throws ClassNotFoundException {
    	daoFabricante.remove(fabricante);
        return "redirect:listaFabricantes";
    }
    
}