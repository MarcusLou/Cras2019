/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import br.com.cras.dao.EventoDAO;
import br.com.cras.dominio.Evento;
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

public class EventoController {
//--------------------------------------Renderização das telas do Evento---------------------------------------------------------------------
    
    @RequestMapping("/renderizarCadastrarEvento")
    public String renderizarCadastrarEvento() {

        return "cadastrarevento";
    }
    
    @RequestMapping("/renderizarBuscarEvento")
    public String renderizarBuscaEvento(Model model) throws SQLException {
        EventoDAO dao = new EventoDAO();
        try {
            model.addAttribute("buscaEvento", dao.buscar());
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarevento";
    }
   
    @RequestMapping(value="/renderizarEditarEvento/{id}")  
    public String renderizarEdicaoEvento(@PathVariable int id, ModelMap model) throws SQLException  {  
        EventoDAO dao = new EventoDAO();
        try {
             model.addAttribute("evento", dao.getEventoById(id));
        } catch (Error e) {
            System.out.println(e);
        }     
	return "editarevento";
    } 
    
     @RequestMapping("/renderizarExibirEvento")
    public String renderizarExibirEventos(Model model) {

        EventoDAO dao = new EventoDAO();

        try {
            model.addAttribute("listaEvento", dao.buscar());

        } catch (Exception e) {
            System.out.println(e);
        }

        return "exibirevento";
    }


//--------------------------------------Cadastrar Evento---------------------------------------------------------------------
    
    @RequestMapping("/cadastrarEvento") //anotação para mapear o método
    public String cadastrarEvento(Model model, Evento evento) {
        EventoDAO dao = new EventoDAO();

        try {

            dao.adicionar(evento);
            String retorno = "Cadastrado realizado";
            model.addAttribute("retorno", retorno);
            // model.addAttribute("retorno", evento.getNomeCoordenador());
        } catch (SQLException e) {
            System.out.println(e);

        } catch (Error e) {
            System.out.println(e);

        }
        return "mensagem";
    }

    //-------------------------------------Buscar Evento---------------------------------------------------------------------
    
    
    
    @RequestMapping("/buscarEvento")
    public String buscarEvento(Model model, @RequestParam("nomeEvento") String nome) throws SQLException {
        List<Evento> eventos;
        EventoDAO dao = new EventoDAO();
        try {
            model.addAttribute("buscaEvento", dao.buscarNome(nome));
        } catch (Error e) {
            System.out.println(e);
        }
        return "buscarevento";
    }

//-------------------------------------Editar Evento---------------------------------------------------------------------
    
    @RequestMapping(value="/editarEvento",method = RequestMethod.POST)  
    public String editarEvento(@ModelAttribute("evento") Evento emp) throws Exception{  
        EventoDAO dao = new EventoDAO();
        /*
        try{
        String retorno ="Edição realizada"; 
        Model model = null;
        model.addAttribute("retorno", retorno);
        }
        catch (Error e){
            System.out.println("Erro: arquivo não editado");
        }
        */
        System.out.println("id is"+emp.getId());
        dao.update(emp);  
        return "mensagemAtualizado";  
    }   
    
    //-------------------------------------Remover Evento---------------------------------------------------------------------
   
     

    @RequestMapping(value="/removerEvento/{id}")  
    public String removerEvento(@PathVariable int id, ModelMap model) throws SQLException, Exception  {  
        EventoDAO dao = new EventoDAO();
        
        try {
            Evento evento = dao.getEventoById(id); 
            evento.setStatus(false);
            dao.update(evento);
             
        } catch (Error e) {
            System.out.println(e);
        }     
        
        String retorno ="Evento removido";
        model.addAttribute("retorno", retorno);
        return "mensagem";
    } 
    
//    ---------------------------------------------------------------------------------------------------------------------
    
}
