/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import br.com.cras.dao.AgendaAdministrativaDAO;
import br.com.cras.dominio.AgendaAdministrativa;
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

/**
 *
 * @author Ronnie
 */

@Controller //anotação do spring controller
public class AgendaAdministrativaController {
    
    @RequestMapping("/renderizarCadastrarAgendaAdministrativa")
    public String renderizarCadastrarAgendaAdministrativa() {

        return "cadastraragendaadministrativa";
    }
    
    
    @RequestMapping("/renderizarBuscarAgendaAdministrativa")
    public String renderizarBuscarAgendaAdministrativa(Model model) throws SQLException {
        AgendaAdministrativaDAO  dao = new AgendaAdministrativaDAO();
        try {
            model.addAttribute("buscaAgendaAdministrativa", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscaragendaadministrativa";
    }

    @RequestMapping(value="/renderizarEditarAgendaAdministrativa/{id}")  
    public String renderizarEdicaoAgendaAdministrativa(@PathVariable int id, ModelMap model) throws SQLException  {  
        AgendaAdministrativaDAO dao = new AgendaAdministrativaDAO();
        try {
             model.addAttribute("AgendaAdministrativa", dao.getAgendaAdministrativaById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editaragendaadministrativa";
    } 
    

//--------------------------------------Cadastrar Agenda Administrativa---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarAgendaAdministrativa") //anotação para mapear o método
    public String cadastrarAgendaAdministrativa(Model model, AgendaAdministrativa agendaAdministrativa) {
        AgendaAdministrativaDAO dao = new AgendaAdministrativaDAO();

        try {

            dao.adicionar(agendaAdministrativa);
            String retorno = "Agenda Administrativa cadastrada";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarAgendaAdministrativa";
            model.addAttribute("retorno2", retorno2);
           
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar Agenda Administrativa---------------------------------------------------------------------
    
    
    
    @RequestMapping("/buscarAgendaAdministrativa")
    public String buscarAgendaAdministrativa(Model model, @RequestParam("nomeFuncionario") String nomeFuncionario) throws SQLException {
        List<AgendaAdministrativa> agendaAdministrativas;
        AgendaAdministrativaDAO dao = new AgendaAdministrativaDAO();
        try {
            model.addAttribute("buscaAgendaAdministrativa", dao.buscarNome(nomeFuncionario));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscaragendaadministrativa";
    }

//-------------------------------------Editar Beneficio---------------------------------------------------------------------
    
    @RequestMapping(value="/editarAgendaAdministrativa",method = RequestMethod.POST)  
    public String editarAgendaAdministrativa(@ModelAttribute("AgendaAdministrativa") AgendaAdministrativa emp, ModelMap model) throws Exception{  
        
            System.out.println("teste1");
            AgendaAdministrativaDAO dao = new AgendaAdministrativaDAO();
        
        try {
        
            System.out.println("teste2");
            System.out.println("id is"+emp.getId());
            dao.update(emp); 
            String retorno = "Benefício atualizado";
            model.addAttribute("retorno", retorno);
            String retorno2 = "renderizarBuscarAgendaAdministrativa";
            model.addAttribute("retorno2", retorno2);
         } catch (Error e) {
             
            System.out.println("teste3");
            System.out.println(e);
        } 
        return "mensagem";  
    }   
    
    //-------------------------------------Remover Beneficio---------------------------------------------------------------------
   
     

    @RequestMapping(value="/removerAgendaAdministrativa/{id}", method = RequestMethod.GET)  
    public String removerAgendaAdministrativa(@PathVariable int id, Model model) throws SQLException, Exception  {  
        AgendaAdministrativaDAO dao = new AgendaAdministrativaDAO();
        
        try {
            AgendaAdministrativa agendaAdministrativa = dao.getAgendaAdministrativaById(id); 
            agendaAdministrativa.setStatus(false);
            dao.update(agendaAdministrativa);
            String retorno ="Agenda Administrativa removida";
            model.addAttribute("retorno", retorno); 
            String retorno2 = "http://localhost:8080/Cras/renderizarBuscarAgendaAdministrativa";
            model.addAttribute("retorno2", retorno2);
        } catch (Error e) {
            System.out.println(e);
        }     
        
        return "mensagem";
    } 
    
//    ---------------------------------------------------------------------------------------------------------------------
    


}
