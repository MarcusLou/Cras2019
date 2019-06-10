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
@Table(name = "tbl_Familias")

@NamedQueries(
        @NamedQuery (name= "Familias.ativos", query = "SELECT c FROM Familia c WHERE c.status=true")
)

public class Familia implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column(name = "responsavel_familiar")
    private int responsavel_familiar;
    
    @Column(name = "endereco")
    private String endereco;
    
    @Column(name = "cod_cras")
    private int cod_cras;
    
    @Column(name = "data")
    private String data;
    
    @Column(name = "telefone_fixo")
    private String telefone_fixo;
        
    @Column(name = "situacao_familiar")
    private String situacao_familiar;
    
    @Column(name = "renda_familiar")
    private String renda_familiar;
    
    
    
    @Column(name = "cep")
    private int cep;
    
    @Column(name = "comodos_moradia")
    private int comodos_moradia;
    
    @Column(name = "idFuncionario")
    private int idFuncionario;

    @Column(name="status") //0 false 1 true
    private boolean status;

    public Familia(){
        this.status=true;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getResponsavel_familiar() {
        return responsavel_familiar;
    }

    public void setResponsavel_familiar(int responsavel_familiar) {
        this.responsavel_familiar = responsavel_familiar;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public int getCod_cras() {
        return cod_cras;
    }

    public void setCod_cras(int cod_cras) {
        this.cod_cras = cod_cras;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getTelefone_fixo() {
        return telefone_fixo;
    }

    public void setTelefone_fixo(String telefone_fixo) {
        this.telefone_fixo = telefone_fixo;
    }

    public String getSituacao_familiar() {
        return situacao_familiar;
    }

    public void setSituacao_familiar(String situacao_familiar) {
        this.situacao_familiar = situacao_familiar;
    }

        
    public String getRenda_familiar() {
        return renda_familiar;
    }

    public void setRenda_familiar(String renda_familiar) {
        this.renda_familiar = renda_familiar;
    }
        
        
    public int getCep() {
        return cep;
    }

    public void setCep(int cep) {
        this.cep = cep;
    }

    public int getComodos_moradia() {
        return comodos_moradia;
    }

    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }
    
    public int getIdFuncionario() {
        return idFuncionario;
    }

    public void setComodos_moradia(int comodos_moradia) {
        this.comodos_moradia = comodos_moradia;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    
    

    
}
