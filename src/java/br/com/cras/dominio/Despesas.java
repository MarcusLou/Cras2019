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
@Table(name = "tbl_Despesas")

@NamedQueries(
        @NamedQuery (name= "Despesas.ativas", query = "SELECT c FROM Despesas c WHERE c.status=true")
)

public class Despesas implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column(name = "familiaID")
    private int familiaID;
    
    @Column(name = "nomeMembro")
    private String nomeMembro;
    
    @Column(name = "cpfMembro")
    private String cpf_membro;
    
    @Column(name = "tipo")
    private String tipo;
    
    @Column(name = "valor")
    private float valor;
    
    @Column(name = "data_vencimento")
    private String data_vencimento;
    
    @Column(name = "status")
    private boolean status;

    
    public Despesas(){
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

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public String getData_vencimento() {
        return data_vencimento;
    }

    public void setData_vencimento(String data_vencimento) {
        this.data_vencimento = data_vencimento;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
   
}
