/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dominio;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Ronnie
 */


@Entity
@Table(name = "tbl_AgendaAdministrativa")

@NamedQueries(
        @NamedQuery (name= "AgendaAdministrativa.ativos", query = "SELECT c FROM AgendaAdministrativa c WHERE c.status=true")
)
public class AgendaAdministrativa implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "nomeFuncionario")
    private String nomeFuncionario;

    @Column(name = "tipoAgendamento")
    private String tipoAgendamento;

    @Column(name = "cod_cras")
    private int cod_cras;

    @Column(name = "data_agenda")
    private String data_agenda;
    
    @Column(name = "horario")
    private String horario;
    
    @Column(name = "duracao")
    private String duracao;
    
    @Column(name = "descricao")
    private String descricao;
    
    @Column(name = "status")
    private boolean status;
    
    public AgendaAdministrativa(){
        this.status = true;
    }
    
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeFuncionario() {
        return nomeFuncionario;
    }

    public void setNomeFuncionario(String nomeFuncionario) {
        this.nomeFuncionario = nomeFuncionario;
    }

    public String getTipoAgendamento() {
        return tipoAgendamento;
    }

    public void setTipoAgendamento(String tipoAgendamento) {
        this.tipoAgendamento = tipoAgendamento;
    }

    public int getCod_cras() {
        return cod_cras;
    }

    public void setCod_cras(int cod_cras) {
        this.cod_cras = cod_cras;
    }

    public String getData_agenda() {
        return data_agenda;
    }

    public void setData_agenda(String data_agenda) {
        this.data_agenda = data_agenda;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getDuracao() {
        return duracao;
    }

    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
