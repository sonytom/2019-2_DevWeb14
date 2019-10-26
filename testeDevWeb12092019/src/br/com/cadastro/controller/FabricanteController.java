package br.com.cadastro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.FabricanteDAO;
import br.com.cadastro.dao.UsuarioDAO;
import br.com.cadastro.model.Fabricante;
import br.com.cadastro.model.Usuario;

@Controller
public class FabricanteController {
	
    @Autowired
    FabricanteDAO daofabricante;
    
	@RequestMapping("listafabricantes")
    public String lista(Model modelFabricante) throws ClassNotFoundException {
        modelFabricante.addAttribute("fabricantes", daofabricante.lista());
        return "fabricante/lista";
    }

	@RequestMapping("novoFabricante")
	public String form() {
		return "fabricante/insere";
	}
	
	@RequestMapping("adicionaFabricantes")
	public String adiciona(@Valid Fabricante fabricante, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("id") || result.hasFieldErrors("nome") || result.hasFieldErrors("cnpj") || result.hasFieldErrors("telefone") || result.hasFieldErrors("e-mail")) {
			 return "fabricante/insere";
	     }
		daofabricante.adiciona(fabricante);
		return "redirect:listaFabricantes";
	}
	
	@RequestMapping("editaFabricantes")
    public String edita(int id, Model modelFabricante) throws ClassNotFoundException {
        modelFabricante.addAttribute("usuario", daofabricante.buscaPorId(id));
        return "usuario/edita";
    }
	
	@RequestMapping("alteraFabricantes")
	public String altera(@Valid Fabricante fabricante, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("id") || result.hasFieldErrors("nome") || result.hasFieldErrors("cnpj") || result.hasFieldErrors("telefone") || result.hasFieldErrors("e-mail")) {
			 return "fabricante/edita";
	     }
		daofabricante.altera(fabricante);
        return "redirect:listaFabricantes";
    }
	
    @RequestMapping("removeFabricante")
    public String remove(Fabricante fabricante) throws ClassNotFoundException {
    	daofabricante.remove(fabricante);
        return "redirect:listaFabricantes";
    }
    
}