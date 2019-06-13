/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dominio;

/**
 *
 * @author Ronnie
 */
public class Despesas {
    
    private int id;
    private String MembroFamilia;
    private String nome;
    private float valor;
    private String data_vencimento;
    private int familiaId;

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

    public int getFamiliaId() {
        return familiaId;
    }

    public void setFamiliaId(int familiaId) {
        this.familiaId = familiaId;
    }

    public String getMembroFamilia() {
        return MembroFamilia;
    }

    public void setMembroFamilia(String MembroFamilia) {
        this.MembroFamilia = MembroFamilia;
    }
}
