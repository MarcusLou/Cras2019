/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import br.com.cras.dao.BeneficioDAO;
import br.com.cras.dominio.Beneficio;
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
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author Marcus
 */

@Controller //anotação do spring controller

public class BeneficioController {
//--------------------------------------Renderização das telas do Beneficio---------------------------------------------------------------------
    
    @RequestMapping("/renderizarCadastrarBeneficio")
    public String renderizarCadastrarBeneficio() {

        return "cadastrarbeneficio";
    }
    
    @RequestMapping("/renderizarBuscarBeneficio")
    public String renderizarBuscaBeneficio(Model model) throws SQLException {
        BeneficioDAO dao = new BeneficioDAO();
        try {
            model.addAttribute("buscaBeneficio", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarbeneficio";
    }
   
    @RequestMapping(value="/renderizarEditarBeneficio/{id}")  
    public String renderizarEdicaoBeneficio(@PathVariable int id, ModelMap model) throws SQLException  {  
        BeneficioDAO dao = new BeneficioDAO();
        try {
             model.addAttribute("beneficio", dao.getBeneficioById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editarbeneficio";
    } 
    
    @RequestMapping(value="/renderizarRemoverBeneficio/{id}")  
    public String renderizarRemoverBeneficio(@PathVariable int id, ModelMap model) throws SQLException  {  
        BeneficioDAO dao = new BeneficioDAO();
        try {
             model.addAttribute("beneficio", dao.getBeneficioById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "removerbeneficio";
    } 
    
     @RequestMapping("/renderizarExibirBeneficio")
    public String renderizarExibirBeneficios(Model model) {

        BeneficioDAO dao = new BeneficioDAO();

        try {
            model.addAttribute("listaBeneficio", dao.buscar());

        } catch (Exception e) {
            System.out.println(e);
        }

        return "exibirbeneficio";
    }

    

//--------------------------------------Cadastrar Beneficio---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarBeneficio") //anotação para mapear o método
    public String cadastrarBeneficio(Model model, Beneficio beneficio) {
        BeneficioDAO dao = new BeneficioDAO();

        try {

            dao.adicionar(beneficio);
            String retorno = "Benefício cadastrado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarBeneficio";
            model.addAttribute("retorno2", retorno2);
            // model.addAttribute("retorno", beneficio.getJustificativa());
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar Beneficio---------------------------------------------------------------------
    
    
    
    @RequestMapping("/buscarBeneficio")
    public String buscarBeneficio(Model model, @RequestParam("nome") String nome) throws SQLException {
        List<Beneficio> beneficios;
        BeneficioDAO dao = new BeneficioDAO();
        try {
            model.addAttribute("buscaBeneficio", dao.buscarNome(nome));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarbeneficio";
    }

//-------------------------------------Editar Beneficio---------------------------------------------------------------------
    
    @RequestMapping(value="/editarBeneficio",method = RequestMethod.POST)  
    public String editarBeneficio(@ModelAttribute("beneficio") Beneficio emp, ModelMap model) throws Exception{  
        BeneficioDAO dao = new BeneficioDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            dao.update(emp); 
            String retorno = "Benefício atualizado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarBeneficio";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }   
    
    //-------------------------------------Remover Beneficio---------------------------------------------------------------------
   
     @RequestMapping(value="/removerBeneficio",method = RequestMethod.POST)  
    public String removerBeneficio(@ModelAttribute("beneficio") Beneficio emp, ModelMap model) throws Exception{  
        BeneficioDAO dao = new BeneficioDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            emp.setStatus(false);
            dao.update(emp);
            String retorno ="Beneficio removido";
            model.addAttribute("retorno", retorno); 
            String retorno2 = "renderizarBuscarBeneficio";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }  
 
    
//    ---------------------------------------------------------------------------------------------------------------------
    
   


  


}
