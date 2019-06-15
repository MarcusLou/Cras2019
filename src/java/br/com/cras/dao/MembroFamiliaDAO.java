package br.com.cras.dao;



import br.com.cras.dominio.MembroFamilia;
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
public class MembroFamiliaDAO {

    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(MembroFamilia membroFamilia) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(membroFamilia);
        em.getTransaction().commit();
        em.close();

    }

    public List<MembroFamilia> buscar() throws SQLException {
        /*  EntityManager em = getEM();

        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(MembroFamilia.class));

        List<MembroFamilia> lista = em.createQuery(criteria).getResultList();

        return lista;
         */
        EntityManager em = getEM();
        List<MembroFamilia> lista;
        try {
            Query q = em.createNamedQuery("MembroFamilias.ativos");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }
        
        return lista;

    }
//rever
    public List<MembroFamilia> buscarNome(String nome) throws SQLException {
        List<MembroFamilia> retorno = new ArrayList<>();
        List<MembroFamilia> auxiliar;

        try {
            auxiliar = this.buscar();
            int tamanho = auxiliar.size();
            for (int k = 0; k < tamanho; k++) {
                if (nome.equals(auxiliar.get(k).getNome())) {
                    retorno.add(auxiliar.get(k));
                }
            }
            /*
            for (int k = 0; k < tamanho; k++) {         
                if (nomeDoMembroFamilia!=null&& auxiliar!=null&&nomeDoMembroFamilia.contains(auxiliar.get(k).getNome())){
                    retorno.add(auxiliar.get(k));
                }
            }
             */

        } catch (SQLException | Error e) {
            System.out.println(e);
        }
        return retorno;
    }

    public MembroFamilia getMembroFamiliaById(int id) {
        EntityManager em = getEM();
        MembroFamilia membroFamilia = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            membroFamilia = em.find(MembroFamilia.class, id);
        } finally {
            em.close();
        }
        return membroFamilia;
    }

    public void update(MembroFamilia membroFamilia) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            membroFamilia = em.merge(membroFamilia);
            // Finaliza a transação.
            em.getTransaction().commit();
            System.out.println("Salvando MembroFamilia.");
        } finally {
            em.close();
        }
    }

    public void Editar(MembroFamilia membroFamilia) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(membroFamilia);
        em.getTransaction().commit();
        em.close();
    }

}


