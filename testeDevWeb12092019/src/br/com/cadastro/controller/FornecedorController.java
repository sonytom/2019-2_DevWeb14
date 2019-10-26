package br.com.cadastro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.FabricanteDAO;
import br.com.cadastro.dao.FornecedorDAO;
import br.com.cadastro.dao.UsuarioDAO;
import br.com.cadastro.model.Fabricante;
import br.com.cadastro.model.Fornecedor;
import br.com.cadastro.model.Usuario;

@Controller
public class FornecedorController {
	
    @Autowired
    FornecedorDAO daofornecedor;
    
	@RequestMapping("listafornecedores")
    public String lista(Model modelFornecedor) throws ClassNotFoundException {
        modelFornecedor.addAttribute("fornecedores", daofornecedor.lista());
        return "fornecedor/lista";
    }

	@RequestMapping("novoFornecedor")
	public String form() {
		return "fornecedor/insere";
	}
	
	@RequestMapping("adicionaFornecedores")
	public String adiciona(@Valid Fornecedor fornecedor, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("id") || result.hasFieldErrors("nome") || result.hasFieldErrors("cnpj") || result.hasFieldErrors("telefone") || result.hasFieldErrors("e-mail")) {
			 return "fornecedor/insere";
	     }
		daofornecedor.adiciona(fornecedor);
		return "redirect:listaFornecedores";
	}
	
	@RequestMapping("editaFornecedores")
    public String edita(int id, Model modelFornecedor) throws ClassNotFoundException {
        modelFornecedor.addAttribute("fornecedor", daofornecedor.buscaPorId(id));
        return "fornecedor/edita";
    }
	
	@RequestMapping("alteraFornecedor")
	public String altera(@Valid Fornecedor fornecedor, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("id") || result.hasFieldErrors("nome") || result.hasFieldErrors("cnpj") || result.hasFieldErrors("telefone") || result.hasFieldErrors("e-mail")) {
			 return "fornecedor/edita";
	     }
		daofornecedor.altera(fornecedor);
        return "redirect:listaFornecedores";
    }
	
    @RequestMapping("removeFornecedor")
    public String remove(Fornecedor fornecedor) throws ClassNotFoundException {
    	daofornecedor.remove(fornecedor);
        return "redirect:listaFornecedores";
    }
    
}