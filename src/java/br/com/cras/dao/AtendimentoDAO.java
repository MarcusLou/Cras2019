/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dao;

import br.com.cras.dominio.Atendimento;
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
public class AtendimentoDAO {
    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(Atendimento atendimento) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(atendimento);
        em.getTransaction().commit();
        em.close();

    }

    public List<Atendimento> buscar() throws SQLException {
      
        EntityManager em = getEM();
        List<Atendimento> lista;
        try {
            Query q = em.createNamedQuery("Atendimento.ativos");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }
        
        return lista;

    }

    public List<Atendimento> buscarNome(String nomeMembro) throws SQLException {
        List<Atendimento> retorno = new ArrayList<>();
        List<Atendimento> auxiliar;

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

    public Atendimento getAtendimentoById(int id) {
        EntityManager em = getEM();
        Atendimento beneficio = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            beneficio = em.find(Atendimento.class, id);
        } finally {
            em.close();
        }
        return beneficio;
    }

    public void update(Atendimento atendimento) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            atendimento = em.merge(atendimento);
            // Finaliza a transação.
            em.getTransaction().commit();
            System.out.println("Salvando Atendimento.");
        } finally {
            em.close();
        }
    }

    public void Editar(Atendimento atendimento) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(atendimento);
        em.getTransaction().commit();
        em.close();
    }
}
