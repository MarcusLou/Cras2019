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
@Table(name = "tbl_Beneficios")

@NamedQueries(
        @NamedQuery (name= "Beneficios.ativos", query = "SELECT c FROM Beneficio c WHERE c.status=true")
)

public class Beneficio implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column(name = "nome")
    private String nome;
    
    @Column(name = "justificativa")
    private String justificativa;
    
    @Column(name = "cod_cras")
    private int cod_cras;
    
    @Column(name = "data_inicio")
    private String data_inicio;
    
    @Column(name = "data_renovacao")
    private String data_renovacao;
        
    @Column(name = "valor")
    private String valor;
    
    @Column(name = "numero_guia")
    private int numero_guia;
    
    @Column(name = "familiaID")
    private int familiaID;
    
    @Column(name = "idFuncionario")
    private int idFuncionario;

    @Column(name="status") //0 false 1 true
    private boolean status;

    public Beneficio(){
        this.status=true;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getJustificativa() {
        return justificativa;
    }

    public void setJustificativa(String justificativa) {
        this.justificativa = justificativa;
    }

    public int getCod_cras() {
        return cod_cras;
    }

    public void setCod_cras(int cod_cras) {
        this.cod_cras = cod_cras;
    }

    public String getData_inicio() {
        return data_inicio;
    }

    public void setData_inicio(String data_inicio) {
        this.data_inicio = data_inicio;
    }

    public String getData_renovacao() {
        return data_renovacao;
    }

    public void setData_renovacao(String data_renovacao) {
        this.data_renovacao = data_renovacao;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public int getNumero_guia() {
        return numero_guia;
    }

    public void setNumero_guia(int numero_guia) {
        this.numero_guia = numero_guia;
    }

    public int getFamiliaID() {
        return familiaID;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }
    
    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setFamiliaID(int familiaID) {
        this.familiaID = familiaID;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
    

    
}
