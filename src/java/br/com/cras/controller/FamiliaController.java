/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import br.com.cras.dao.FamiliaDAO;
import br.com.cras.dominio.Familia;
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

public class FamiliaController {
//--------------------------------------Renderização das telas do Familia---------------------------------------------------------------------
    
    @RequestMapping("/renderizarCadastrarFamilia")
    public String renderizarCadastrarFamilia() {

        return "cadastrarfamilia";
    }
    
    @RequestMapping("/renderizarBuscarFamilia")
    public String renderizarBuscaFamilia(Model model) throws SQLException {
        FamiliaDAO dao = new FamiliaDAO();
        try {
            model.addAttribute("buscaFamilia", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarfamilia";
    }
    
   
    @RequestMapping(value="/renderizarAcessarFamilia/{id}")  
    public String renderizarAcessarFamilia(@PathVariable int id, Model model) throws SQLException  {  
        FamiliaDAO dao = new FamiliaDAO();
        try {
             model.addAttribute("familiaSelecionada", dao.getFamiliaById2(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "acessarfamilia";
    }
           
    @RequestMapping(value="/renderizarEditarFamilia/{id}")  
    public String renderizarEdicaoFamilia(@PathVariable int id, ModelMap model) throws SQLException  {  
        FamiliaDAO dao = new FamiliaDAO();
        try {
             model.addAttribute("familia", dao.getFamiliaById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editarfamilia";
    } 
    
     @RequestMapping("/renderizarExibirFamilia")
    public String renderizarExibirFamilias(Model model) {

        FamiliaDAO dao = new FamiliaDAO();

        try {
            model.addAttribute("listaFamilia", dao.buscar());

        } catch (Exception e) {
            System.out.println(e);
        }

        return "exibirfamilia";
    }
    @RequestMapping(value="/renderizarRemoverFamilia/{id}")  
    public String renderizarRemoverFamilia(@PathVariable int id, ModelMap model) throws SQLException  {  
        FamiliaDAO dao = new FamiliaDAO();
        try {
             model.addAttribute("familia", dao.getFamiliaById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "removerfamilia";
    } 
    

//--------------------------------------Cadastrar Familia---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarFamilia") //anotação para mapear o método
    public String cadastrarFamilia(Model model, Familia familia) {
        FamiliaDAO dao = new FamiliaDAO();
        try {

            dao.adicionar(familia);
            String retorno = "Benefício cadastrado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarFamilia";
            model.addAttribute("retorno2", retorno2);
            // model.addAttribute("retorno", familia.getJustificativa());
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar Familia---------------------------------------------------------------------
    
    
    //rever
    @RequestMapping("/buscarFamilia")
    public String buscarFamilia(Model model, @RequestParam("responsavel_familiar") String responsavel_familiar) throws SQLException {
        List<Familia> familias;
        FamiliaDAO dao = new FamiliaDAO();
        try {
            model.addAttribute("buscaFamilia", dao.buscarNomeResponsavel_familiar(responsavel_familiar));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarfamilia";
    }

//-------------------------------------Editar Familia---------------------------------------------------------------------
    
    @RequestMapping(value="/editarFamilia",method = RequestMethod.POST)  
    public String editarFamilia(@ModelAttribute("familia") Familia emp, ModelMap model) throws Exception{  
        FamiliaDAO dao = new FamiliaDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            dao.update(emp); 
            String retorno = "Benefício atualizado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarFamilia";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }   
    
    //-------------------------------------Remover Familia---------------------------------------------------------------------
        
    @RequestMapping(value="/removerFamilia",method = RequestMethod.POST)  
    public String removerFamilia(@ModelAttribute("beneficio") Familia emp, ModelMap model) throws Exception{  
        FamiliaDAO dao = new FamiliaDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            emp.setStatus(false);
            dao.update(emp);
            String retorno ="Familia removida";
            model.addAttribute("retorno", retorno); 
            String retorno2 = "renderizarBuscarFamilia";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }  
    
//    ---------------------------------------------------------------------------------------------------------------------
    
   


  


}
