package br.com.cras.dominio;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import br.com.cras.dominio.Evento;
import static java.util.Objects.isNull;
        
/**
 *
 * @author Ronnie
 */
public class EventoBuilder {
   
    public int id;
    public String nomeEvento;
    public String nomeCoordenador;
    public int cod_cras;
    public String endereco;
    public String dataInicio;
    public String dataTermino;
    public String horario;
    public String duracao;
    public String descricao;
    public boolean status;
    
    public EventoBuilder(String nomeEvento) {
         if (isNull(nomeEvento)) {
            throw new IllegalArgumentException("Não é possível criar uma notificacao sem nome");
         }
        this.nomeEvento = nomeEvento;
    }
    
    public Evento build() {
        return new Evento(this);
    }

    public EventoBuilder setId(Integer id) {
        this.id = id;
        return this;
    }

    public EventoBuilder setCodCras(int cod_Cras) {
        this.cod_cras = cod_Cras;
        return this;
    }

    public EventoBuilder setDescricao(String descricao) {
        this.descricao = descricao;
        return this;
    }

   
    }

   
   
    
   


