package br.com.cadastro.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.cadastro.dao.ProdutoDAO;

import br.com.cadastro.model.Produto;


@Controller
public class ProdutoController {
	
    @Autowired
    ProdutoDAO daoProdutos;
    
	@RequestMapping("listaProdutos")
    public String lista(Model modelProduto) throws ClassNotFoundException {
        modelProduto.addAttribute("produtos", daoProdutos.lista());
        return "produto/lista";
    }

	@RequestMapping("novoProduto")
	public String form() {
		return "produto/insere";
	}
	
	@RequestMapping("adicionaProduto")
	public String adiciona(@Valid Produto produto, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("idproduto") || result.hasFieldErrors("idfabricante") || result.hasFieldErrors("iddistribuidora") || result.hasFieldErrors("nome") ||result.hasFieldErrors("dosagem") || result.hasFieldErrors("dtinclusao")|| result.hasFieldErrors("dtfabricacao")|| result.hasFieldErrors("dtvalidade")|| result.hasFieldErrors("lote")|| result.hasFieldErrors("precolot")|| result.hasFieldErrors("qtdLote")|| result.hasFieldErrors("precoqtd")){
			 return "produto/insere";
	     }
		daoProdutos.adiciona(produto);
		return "redirect:listaProdutos";
	}

	
	
	
	@RequestMapping("editaProduto")
  public String edita(Long idproduto, Model modelProduto) throws ClassNotFoundException {
	       modelProduto.addAttribute("produto", daoProdutos.buscaPorId(idproduto));
           return "produto/edita";
         }
	
	@RequestMapping("alteraProduto")
		public String altera(@Valid Produto produto, BindingResult result) throws ClassNotFoundException {
		if(result.hasFieldErrors("idproduto") || result.hasFieldErrors("idfabricante") || result.hasFieldErrors("iddistribuidora") || result.hasFieldErrors("nome") ||result.hasFieldErrors("dosagem") || result.hasFieldErrors("dtinclusao")|| result.hasFieldErrors("dtfabricacao")|| result.hasFieldErrors("dtvalidade")|| result.hasFieldErrors("lote")|| result.hasFieldErrors("precolot")|| result.hasFieldErrors("qtdLote")|| result.hasFieldErrors("precoqtd")) {
				 return "produto/edita";
			    }
			daoProdutos.altera(produto);
		    return "redirect:listaProdutos";
           }
	
	
	
	 @RequestMapping("removeProduto")
      public String remove(Produto produto) throws ClassNotFoundException {
     	daoProdutos.remove(produto);
         return "redirect:listaProdutos";
     }
   
}