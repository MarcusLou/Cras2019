/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import br.com.cras.dao.AgendaAdministrativaDAO;
import br.com.cras.dao.AtendimentoDAO;
import br.com.cras.dominio.Atendimento;
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
public class AtendimentoController {

    @RequestMapping("/renderizarCadastrarAtendimento")
    public String renderizarCadastrarAgendaAdministrativa() {

        return "cadastraratendimento";
    }

    @RequestMapping("/renderizarBuscarAtendimento")
    public String renderizarBuscarAtendimento(Model model) throws SQLException {
        AtendimentoDAO dao = new AtendimentoDAO();
        try {
            model.addAttribute("buscaAtendimento", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscaratendimento";
    }
    
    @RequestMapping(value="/renderizarEditarAtendimento/{id}")  
    public String renderizarEditarAtendimento(@PathVariable int id, ModelMap model) throws SQLException  {  
        AtendimentoDAO dao = new AtendimentoDAO();
        try {
             model.addAttribute("atendimento", dao.getAtendimentoById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editaratendimento";
    } 
   @RequestMapping(value="/renderizarRemoverAtendimento/{id}")  
    public String renderizarRemoverAtendimento(@PathVariable int id, ModelMap model) throws SQLException  {  
        AtendimentoDAO dao = new AtendimentoDAO();
        try {
             model.addAttribute("atendimento", dao.getAtendimentoById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "removeratendimento";
    } 
    

//--------------------------------------Cadastrar Atendimento---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarAtendimento") //anotação para mapear o método
    public String cadastrarAtendimento(Model model, Atendimento atendimento) {
        AtendimentoDAO dao = new AtendimentoDAO();

        try {

            dao.adicionar(atendimento);
            String retorno = "Atendimento cadastrado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarAtendimento";
            model.addAttribute("retorno2", retorno2);
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar Atendimento---------------------------------------------------------------------
    
    
    
    @RequestMapping("/buscarAtendimento")
    public String buscarAtendimento(Model model, @RequestParam("nomeMembro") String nome) throws SQLException {
        List<Atendimento> atendimentos;
        AtendimentoDAO dao = new AtendimentoDAO();
        try {
            model.addAttribute("buscaAtendimento", dao.buscarNome(nome));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscaratendimento";
    }

//-------------------------------------Editar Atendimento---------------------------------------------------------------------
    
    @RequestMapping(value="/editarAtendimento",method = RequestMethod.POST)  
    public String editarAtendimento(@ModelAttribute("atendimento") Atendimento emp, ModelMap model) throws Exception{  
        
            System.out.println("teste1");
            AtendimentoDAO dao = new AtendimentoDAO();
        
        try {
        
            System.out.println("teste2");
            System.out.println("id is"+emp.getId());
            dao.update(emp); 
            String retorno = "Atendimento atualizado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarAtendimento";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
             
            System.out.println("teste3");
            System.out.println(e);
        } 
        return "mensagem";  
    }   
    
    //-------------------------------------Remover Atendimento---------------------------------------------------------------------
   
     

   
    
    @RequestMapping(value="/removerAtendimento",method = RequestMethod.POST)  
    public String removerAtendimento(@ModelAttribute("atendimento") Atendimento emp, ModelMap model) throws Exception{  
        AtendimentoDAO dao = new AtendimentoDAO();
        try {
        
            System.out.println("id is"+emp.getId());
            emp.setStatus(false);
            dao.update(emp);
            String retorno ="Atendimento removido";
            model.addAttribute("retorno", retorno); 
            String retorno2 = "renderizarBuscarAtendimento";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
            System.out.println(e);
        } 
        return "mensagem";  
    }  
    
//    ---------------------------------------------------------------------------------------------------------------------
    
    
}
