/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dominio;

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
@Table(name = "tbl_Atendimento")

@NamedQueries(
        @NamedQuery (name= "Atendimento.ativos", query = "SELECT c FROM Atendimento c WHERE c.status=true")
)

public class Atendimento {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column(name = "familiaID")
    private int familiaID;
    
    @Column(name = "nomeMembro")
    private String nomeMembro;
    
    @Column(name = "cpfMembro")
    private String cpf_membro;
    
    @Column(name = "data_atendimento")
    private String data_atendimento;
    
    @Column(name = "horario")
    private String horario;
    
    @Column(name = "duracao")
    private String duracao;
    
    @Column(name = "endereco")
    private String endereco;
    
    @Column(name = "descricao")
    private String descricao;
    
    @Column(name = "status")
    private boolean status;

    public Atendimento(){
        this.status=true;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getFamiliaID() {
        return familiaID;
    }

    public void setFamiliaID(int familiaID) {
        this.familiaID = familiaID;
    }

    public String getNomeMembro() {
        return nomeMembro;
    }

    public void setNomeMembro(String nomeMembro) {
        this.nomeMembro = nomeMembro;
    }

    public String getCpf_membro() {
        return cpf_membro;
    }

    public void setCpf_membro(String cpf_membro) {
        this.cpf_membro = cpf_membro;
    }

    public String getData_atendimento() {
        return data_atendimento;
    }

    public void setData_atendimento(String data_atendimento) {
        this.data_atendimento = data_atendimento;
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

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    

}
