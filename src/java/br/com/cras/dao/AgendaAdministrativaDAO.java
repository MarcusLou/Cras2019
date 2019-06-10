/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.dao;

import br.com.cras.dominio.AgendaAdministrativa;
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
public class AgendaAdministrativaDAO {
    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(AgendaAdministrativa agendaAdministrativa) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(agendaAdministrativa);
        em.getTransaction().commit();
        em.close();

    }

    public List<AgendaAdministrativa> buscar() throws SQLException {
        /*  EntityManager em = getEM();

        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(Evento.class));

        List<Evento> lista = em.createQuery(criteria).getResultList();

        return lista;
         */
        EntityManager em = getEM();
        List<AgendaAdministrativa> lista;
        try {
            Query q = em.createNamedQuery("AgendaAdministrativa.ativos");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }

        return lista;

    }

    public List<AgendaAdministrativa> buscarNome(String nomeDoFuncionario) throws SQLException {
        List<AgendaAdministrativa> retorno = new ArrayList<>();
        List<AgendaAdministrativa> auxiliar;

        try {
            auxiliar = this.buscar();
            int tamanho = auxiliar.size();
            for (int k = 0; k < tamanho; k++) {
                if (nomeDoFuncionario.equals(auxiliar.get(k).getNomeFuncionario())) {
                    retorno.add(auxiliar.get(k));
                }
            }
            /*
            for (int k = 0; k < tamanho; k++) {         
                if (nomeDoEvento!=null&& auxiliar!=null&&nomeDoEvento.contains(auxiliar.get(k).getNomeEvento())){
                    retorno.add(auxiliar.get(k));
                }
            }
             */

        } catch (SQLException | Error e) {
            System.out.println(e);
        }
        return retorno;
    }

    public AgendaAdministrativa getAgendaAdministrativaById(int id) {
        EntityManager em = getEM();
        AgendaAdministrativa agendaAdministrativa = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            agendaAdministrativa = em.find(AgendaAdministrativa.class, id);
        } finally {
            em.close();
        }
        return agendaAdministrativa;
    }

    public void update(AgendaAdministrativa agendaAdministrativa) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            System.out.println("Salvando Agenda.");
            agendaAdministrativa = em.merge(agendaAdministrativa);
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void Editar(AgendaAdministrativa agendaAdministrativa) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(agendaAdministrativa);
        em.getTransaction().commit();
        em.close();
    }
}
