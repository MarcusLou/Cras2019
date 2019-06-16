/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dao;

import br.com.cras.dominio.Atendimento;
import br.com.cras.dominio.Despesas;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Ronnie
 */
public class DespesasDAO {
    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(Despesas despesas) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(despesas);
        em.getTransaction().commit();
        em.close();

    }

    public List<Despesas> buscar() throws SQLException {
      
        EntityManager em = getEM();
        List<Despesas> lista;
        try {
            Query q = em.createNamedQuery("Despesas.ativas");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }
        
        return lista;

    }

    public List<Despesas> buscarNome(String nomeMembro) throws SQLException {
        List<Despesas> retorno = new ArrayList<>();
        List<Despesas> auxiliar;

        try {
            auxiliar = this.buscar();
            int tamanho = auxiliar.size();
            for (int k = 0; k < tamanho; k++) {
                if (nomeMembro.equals(auxiliar.get(k).getNomeMembro())) {
                    retorno.add(auxiliar.get(k));
                }
            }
            /*
            for (int k = 0; k < tamanho; k++) {         
                if (nomeDoBeneficio!=null&& auxiliar!=null&&nomeDoBeneficio.contains(auxiliar.get(k).getNome())){
                    retorno.add(auxiliar.get(k));
                }
            }
             */

        } catch (SQLException | Error e) {
            System.out.println(e);
        }
        return retorno;
    }

    public Despesas getDespesasById(int id) {
        EntityManager em = getEM();
        Despesas despesas = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            despesas = em.find(Despesas.class, id);
        } finally {
            em.close();
        }
        return despesas;
    }

    public void update(Despesas despesas) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            despesas = em.merge(despesas);
            // Finaliza a transação.
            em.getTransaction().commit();
            System.out.println("Salvando Despesas.");
        } finally {
            em.close();
        }
    }

    public void Editar(Despesas despesas) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(despesas);
        em.getTransaction().commit();
        em.close();
    }
}
