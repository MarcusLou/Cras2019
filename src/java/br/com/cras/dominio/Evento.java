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

@Entity
@Table(name = "tbl_Eventos")

@NamedQueries(
        @NamedQuery (name= "Eventos.ativos", query = "SELECT c FROM Evento c WHERE c.status=true")
)

public class Evento implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column(name = "nomeEvento")
    private String nomeEvento;
    
    @Column(name = "nomeCoordenador")
    private String nomeCoordenador;
    
    @Column(name = "cod_cras")
    private int cod_cras;
    
    @Column(name = "endereco")
    private String endereco;
    
    @Column(name = "dataInicio")
    private String dataInicio;
    
    @Column(name = "dataTermino")
    private String dataTermino;
    
    @Column(name = "horario")
    private String horario;
    
    @Column(name = "duracao")
    private String duracao;
    
    @Column(name = "descricao")
    private String descricao;

    @Column(name="status") //0 false 1 true
    private boolean status;

    public Evento(){
        this.status=true;
    }
    
    public Evento(EventoBuilder eventoBuilder){
     this.id = eventoBuilder.id;
     this.cod_cras=eventoBuilder.cod_cras;
     this.descricao=eventoBuilder.descricao;
     this.nomeEvento=eventoBuilder.nomeEvento;
    }

   
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeEvento() {
        return nomeEvento;
    }

    public void setNomeEvento(String nomeEvento) {
        this.nomeEvento = nomeEvento;
    }

    public String getNomeCoordenador() {
        return nomeCoordenador;
    }

    public void setNomeCoordenador(String nomeCoordenador) {
        this.nomeCoordenador = nomeCoordenador;
    }

    public int getCod_cras() {
        return cod_cras;
    }

    public void setCod_cras(int cod_cras) {
        this.cod_cras = cod_cras;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(String dataInicio) {
        this.dataInicio = dataInicio;
    }

    public String getDataTermino() {
        return dataTermino;
    }

    public void setDataTermino(String dataTermino) {
        this.dataTermino = dataTermino;
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
    

    
}
