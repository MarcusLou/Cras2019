/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;
import br.com.cras.dao.MembroFamiliaDAO;
import br.com.cras.dominio.MembroFamilia;
import java.sql.SQLException;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Marcus
 */

@Controller //anotação do spring controller

public class MembroFamiliaController {
//--------------------------------------Renderização das telas do MembroFamilia---------------------------------------------------------------------
    
    @RequestMapping("/renderizarCadastrarMembroFamilia")
    public String renderizarCadastrarMembroFamilia() {

        return "cadastrarmembrofamilia";
    }
    
    
    @RequestMapping("/renderizarBuscarMembroFamilia")
    public String renderizarBuscaMembroFamilia(Model model) throws SQLException {
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
            model.addAttribute("buscaMembroFamilia", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarmembrofamilia";
    }
   
    @RequestMapping(value="/renderizarAcessarMembroFamilia/{id}")  
    public String renderizarAcessarMembroFamilia(@PathVariable int id, Model model) throws SQLException  {  
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
             model.addAttribute("membroFamiliaSelecionada", dao.getMembroFamiliaById2(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "acessarmembrofamilia";
    }
    
           
    @RequestMapping(value="/renderizarEditarMembroFamilia/{id}")  
    public String renderizarEdicaoMembroFamilia(@PathVariable int id, ModelMap model) throws SQLException  {  
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
             model.addAttribute("membroFamilia", dao.getMembroFamiliaById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editarmembrofamilia";
    } 
    
     @RequestMapping("/renderizarExibirMembroFamilia")
    public String renderizarExibirMembroFamilias(Model model) {

        MembroFamiliaDAO dao = new MembroFamiliaDAO();

        try {
            model.addAttribute("listaMembroFamilia", dao.buscar());

        } catch (Exception e) {
            System.out.println(e);
        }

        return "exibirmembrofamilia";
    }

    @RequestMapping(value="/renderizarRemoverMembroFamilia/{id}")  
    public String renderizarRemoverMembroFamilia(@PathVariable int id, ModelMap model) throws SQLException  {  
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
             model.addAttribute("membroFamilia", dao.getMembroFamiliaById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "removermembrofamilia";
    } 

//--------------------------------------Cadastrar MembroFamilia---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarMembroFamilia") //anotação para mapear o método
    public String cadastrarMembroFamilia(Model model, MembroFamilia membroFamilia) {
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {

            dao.adicionar(membroFamilia);
            String retorno = "Membro da Família Cadastrado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarMembroFamilia";
            model.addAttribute("retorno2", retorno2);
            // model.addAttribute("retorno", membroFamilia.getJustificativa());
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar MembroFamilia---------------------------------------------------------------------
    
    
    //rever
    @RequestMapping("/buscarMembroFamilia")
    public String buscarMembroFamilia(Model model, @RequestParam("nome") String nome) throws SQLException {
        List<MembroFamilia> membroFamilias;
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
            model.addAttribute("buscaMembroFamilia", dao.buscarNome(nome));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarmembrofamilia";
    }

//-------------------------------------Editar MembroFamilia---------------------------------------------------------------------
    
    @RequestMapping(value="/editarMembroFamilia",method = RequestMethod.POST)  
    public String editarMembroFamilia(@ModelAttribute("membroFamilia") MembroFamilia emp, ModelMap model) throws Exception{  
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            dao.update(emp); 
            String retorno = "Membro da Família Atualizado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarMembroFamilia";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }   
    
    //-------------------------------------Remover MembroFamilia---------------------------------------------------------------------
   
     

    @RequestMapping(value="/removerMembroFamilia",method = RequestMethod.POST)  
    public String removerFamilia(@ModelAttribute("membroFamilia") MembroFamilia emp, ModelMap model) throws Exception{  
        MembroFamiliaDAO dao = new MembroFamiliaDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            emp.setStatus(false);
            dao.update(emp);
            String retorno ="Membro da Família Removido";
            model.addAttribute("retorno", retorno); 
            String retorno2 = "renderizarBuscarMembroFamilia";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }  
    
//    ---------------------------------------------------------------------------------------------------------------------
    
   


  


}
