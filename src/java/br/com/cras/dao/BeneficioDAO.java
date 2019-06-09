
package br.com.cras.dao;

import br.com.cras.dominio.Beneficio;
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
public class BeneficioDAO {

    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(Beneficio beneficio) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(beneficio);
        em.getTransaction().commit();
        em.close();

    }

    public List<Beneficio> buscar() throws SQLException {
        /*  EntityManager em = getEM();

        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(Beneficio.class));

        List<Beneficio> lista = em.createQuery(criteria).getResultList();

        return lista;
         */
        EntityManager em = getEM();
        List<Beneficio> lista;
        try {
            Query q = em.createNamedQuery("Beneficios.ativos");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }
        
        return lista;

    }

    public List<Beneficio> buscarNome(String nomeDoBeneficio) throws SQLException {
        List<Beneficio> retorno = new ArrayList<>();
        List<Beneficio> auxiliar;

        try {
            auxiliar = this.buscar();
            int tamanho = auxiliar.size();
            for (int k = 0; k < tamanho; k++) {
                if (nomeDoBeneficio.equals(auxiliar.get(k).getNome())) {
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

    public Beneficio getBeneficioById(int id) {
        EntityManager em = getEM();
        Beneficio beneficio = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            beneficio = em.find(Beneficio.class, id);
        } finally {
            em.close();
        }
        return beneficio;
    }

    public void update(Beneficio beneficio) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            beneficio = em.merge(beneficio);
            // Finaliza a transação.
            em.getTransaction().commit();
            System.out.println("Salvando Beneficio.");
        } finally {
            em.close();
        }
    }

    public void Editar(Beneficio beneficio) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(beneficio);
        em.getTransaction().commit();
        em.close();
    }

}


