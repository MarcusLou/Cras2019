
package br.com.cras.dao;

import br.com.cras.dominio.Evento;
import java.sql.SQLException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;

/**
 *
 * @author Ronnie
 */
public class EventoDAO {

    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(Evento evento) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(evento);
        em.getTransaction().commit();
        em.close();

    }

    public List<Evento> buscar() throws SQLException {
        /*  EntityManager em = getEM();

        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(Evento.class));

        List<Evento> lista = em.createQuery(criteria).getResultList();

        return lista;
         */
        EntityManager em = getEM();
        List<Evento> lista;
        try {
            Query q = em.createNamedQuery("Eventos.ativos");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }

        return lista;

    }

    public List<Evento> buscarNome(String nomeDoEvento) throws SQLException {
        List<Evento> retorno = new ArrayList<>();
        List<Evento> auxiliar;

        try {
            auxiliar = this.buscar();
            int tamanho = auxiliar.size();
            for (int k = 0; k < tamanho; k++) {
                if (nomeDoEvento.equals(auxiliar.get(k).getNomeEvento())) {
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

    public Evento getEventoById(int id) {
        EntityManager em = getEM();
        Evento evento = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            evento = em.find(Evento.class, id);
        } finally {
            em.close();
        }
        return evento;
    }

    public void update(Evento evento) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            System.out.println("Salvando Evento.");
            evento = em.merge(evento);
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public void Editar(Evento evento) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(evento);
        em.getTransaction().commit();
        em.close();
    }

}


