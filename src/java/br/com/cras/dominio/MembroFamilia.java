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
@Table(name = "tbl_MembroFamilias")

@NamedQueries(
        @NamedQuery (name= "MembroFamilias.ativos", query = "SELECT c FROM MembroFamilia c WHERE c.status=true")
)

public class MembroFamilia implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    @Column(name = "nome")
    private String nome;
    
    @Column(name = "funcao_familiar")
    private String funcao_familiar;
    
    @Column(name = "sexo")
    private String sexo;
        
    @Column(name = "data_nascimento")
    private String data_nascimento;
    
    @Column(name = "telefone")
    private String telefone;
    
    @Column(name = "celular")
    private String celular;
    
    @Column(name = "relacao_familiar")
    private String relacao_familiar;
        
    @Column(name = "naturalidade")
    private String naturalidade;
    
    @Column(name = "nome_pai")
    private String nome_pai;  
    
    @Column(name = "nome_mae")
    private String nome_mae;    
    
    @Column(name = "certidao_nascimento")
    private String certidao_nascimento;
    
    @Column(name = "cpf")
    private String cpf;
    
    @Column(name = "cor_raca")
    private String cor_raca;
    
    @Column(name = "idFuncionario")
    private int idFuncionario;
    
    @Column(name = "cadastro_unico")
    private String cadastro_unico;
    
    @Column(name = "nis")
    private String nis;
    
    @Column(name = "rg")
    private String rg;
    
    @Column(name = "titulo")
    private String titulo;
    
    @Column(name = "familiaID")
    private int familiaID;

    @Column(name="status") //0 false 1 true
    private boolean status;

    public MembroFamilia(){
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

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    
    public String getFuncao_familiar() {
        return funcao_familiar;
    }

    public void setFuncao_familiar(String funcao_familiar) {
        this.funcao_familiar = funcao_familiar;
    }

    public String getData_nascimento() {
        return data_nascimento;
    }

    public void setData_nascimento(String data_nascimento) {
        this.data_nascimento = data_nascimento;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }
    
    public String getRelacao_familiar() {
        return relacao_familiar;
    }

    public void setRelacao_familiar(String relacao_familiar) {
        this.relacao_familiar = relacao_familiar;
    }

    public String getNaturalidade() {
        return naturalidade;
    }

    public void setNaturalidade(String naturalidade) {
        this.naturalidade = naturalidade;
    }
    
    public String getNome_mae() {
        return nome_mae;
    }

    public void setNome_mae(String nome_mae) {
        this.nome_mae = nome_mae;
    }
    
    public String getNome_pai() {
        return nome_pai;
    }

    public void setNome_pai(String nome_pai) {
        this.nome_pai = nome_pai;
    }
        
    public String getCertidao_nascimento() {
        return certidao_nascimento;
    }

    public void setCertidao_nascimento(String certidao_nascimento) {
        this.certidao_nascimento = certidao_nascimento;
    }        
        
    public String getCPF() {
        return cpf;
    }

    public void setCPF(String cpf) {
        this.cpf = cpf;
    }

    public String getCor_raca() {
        return cor_raca;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCadastro_unico() {
        return cadastro_unico;
    }

    public void setCadastro_unico(String cadastro_unico) {
        this.cadastro_unico = cadastro_unico;
    }

    public String getNis() {
        return nis;
    }

    public void setNis(String nis) {
        this.nis = nis;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getFamiliaID() {
        return familiaID;
    }

    public void setFamiliaID(int familiaID) {
        this.familiaID = familiaID;
    }
    
    public void setCor_raca(String cor_raca) {
        this.cor_raca = cor_raca;
    }
    
    public void setIdFuncionario(int idFuncionario) {
        this.idFuncionario = idFuncionario;
    }
    
    public int getIdFuncionario() {
        return idFuncionario;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
