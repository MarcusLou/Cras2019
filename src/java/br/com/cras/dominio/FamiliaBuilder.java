/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dominio;



public abstract class FamiliaBuilder{
    
    protected Familia familia;
    public FamiliaBuilder(){
        familia=new Familia();
    }
    
    public abstract void buildId();
    
    public abstract void buildResponsavel_familiar();
    
    public abstract void buildEndereco();
    
    public abstract void buildObservacoes();
    
    public abstract void buildCod_cras();
    
    public abstract void buildDataCad();
    
    public abstract void buildTelefone_fixo();
    
    public abstract void buildTipo_moradia();
    
    public abstract void buildCondicoes_moradia();
    
    public abstract void buildSituacao_familiar();
        
    public abstract void buildRenda_familiar();
        
    public abstract void buildCep();
        
    public abstract void buildComodos_moradia();
        
    public abstract void buildIdFuncionario();
        
    public abstract void buildStatus();
        
    public Familia getFamilia(){
        return familia;
    }   
}
