/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import br.com.cras.dao.DespesasDAO;
import br.com.cras.dominio.Despesas;
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
 * @author Ronnie
 */
@Controller //anotação do spring controller
public class DespesasController {

    @RequestMapping("/renderizarCadastrarDespesas")
    public String renderizarCadastrarDespesas() {

        return "cadastrardespesas";
    }

    @RequestMapping("/renderizarBuscarDespesas")
    public String renderizarBuscarDespesas(Model model) throws SQLException {
        DespesasDAO dao = new DespesasDAO();
        try {
            model.addAttribute("despesas", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscardespesas";
    }
    
    @RequestMapping(value="/renderizarEditarDespesas/{id}")  
    public String renderizarEditarDespesas(@PathVariable int id, ModelMap model) throws SQLException  {  
        DespesasDAO dao = new DespesasDAO();
        try {
             model.addAttribute("despesas", dao.getDespesasById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editardespesas";
    } 
  
@RequestMapping(value="/renderizarRemoverDespesas/{id}")  
    public String renderizarRemoverDespesas(@PathVariable int id, ModelMap model) throws SQLException  {  
        DespesasDAO dao = new DespesasDAO();
        try {
             model.addAttribute("despesas", dao.getDespesasById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "removerdespesas";
    } 
    

//--------------------------------------Cadastrar Despesas---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarDespesas") //anotação para mapear o método
    public String cadastrarDespesas(Model model, Despesas despesas) {
        DespesasDAO dao = new DespesasDAO();

        try {

            dao.adicionar(despesas);
            String retorno = "Despesas cadastrado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarDespesas";
            model.addAttribute("retorno2", retorno2);
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar Despesas---------------------------------------------------------------------
    
    
    
    @RequestMapping("/buscarDespesas")
    public String buscarDespesas(Model model, @RequestParam("nomeMembro") String nome) throws SQLException {
        List<Despesas> despesas;
        DespesasDAO dao = new DespesasDAO();
        try {
            model.addAttribute("buscaDespesas", dao.buscarNome(nome));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscardespesas";
    }

//-------------------------------------Editar Despesas---------------------------------------------------------------------
    
    @RequestMapping(value="/editarDespesas",method = RequestMethod.POST)  
    public String editarAtendimento(@ModelAttribute("despesas") Despesas emp, ModelMap model) throws Exception{  
        
            System.out.println("teste1");
            DespesasDAO dao = new DespesasDAO();
        
        try {
        
            System.out.println("teste2");
            System.out.println("id is"+emp.getId());
            dao.update(emp); 
            String retorno = "Despesas atualizadas";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarDespesas";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
   
            System.out.println("teste3");
            System.out.println(e);
        }
        return "mensagem";
    }

    //-------------------------------------Remover Despesas---------------------------------------------------------------------
    @RequestMapping(value = "/removerDespesas", method = RequestMethod.POST)
    public String removerDespesas(@ModelAttribute("despesas") Despesas emp, ModelMap model) throws Exception {
        DespesasDAO dao = new DespesasDAO();
        try {

            System.out.println("id is" + emp.getId());
            emp.setStatus(false);
            dao.update(emp);
            String retorno = "Despesas removidas";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarDespesas";
            model.addAttribute("retorno2", retorno2);
        } catch (Error e) {
            System.out.println(e);
        }
        return "mensagem";
    }

//    ---------------------------------------------------------------------------------------------------------------------
}
