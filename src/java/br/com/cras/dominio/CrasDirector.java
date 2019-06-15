package br.com.cras.dominio;

/**
 *
 * @author S013040
 */
public class CrasDirector {
    protected FamiliaBuilder membro;
    
    public CrasDirector(FamiliaBuilder composicao){
        this.membro = composicao;    
    }
    
    public void criarFamilia(){
        membro.buildId();
        membro.buildCep();
        membro.buildCod_cras();
        membro.buildComodos_moradia();
        membro.buildCondicoes_moradia();
        membro.buildDataCad();
        membro.buildEndereco();
        membro.buildIdFuncionario();
        membro.buildObservacoes();
        membro.buildRenda_familiar();
        membro.buildResponsavel_familiar();
        membro.buildSituacao_familiar();
        membro.buildStatus();
        membro.buildTelefone_fixo();
        membro.buildTipo_moradia();
        
        
    }
}
