package br.com.cras.dao;



import br.com.cras.dominio.Familia;
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
public class FamiliaDAO {

    public EntityManager getEM() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CrasPU");
        return factory.createEntityManager();
    }

    public void adicionar(Familia familia) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.persist(familia);
        em.getTransaction().commit();
        em.close();

    }

    public List<Familia> buscar() throws SQLException {
        /*  EntityManager em = getEM();

        CriteriaQuery criteria = em.getCriteriaBuilder().createQuery();
        criteria.select(criteria.from(Familia.class));

        List<Familia> lista = em.createQuery(criteria).getResultList();

        return lista;
         */
        EntityManager em = getEM();
        List<Familia> lista;
        try {
            Query q = em.createNamedQuery("Familias.ativos");
            lista = q.getResultList();
        } catch (Exception e) {
            lista = new ArrayList<>();
        }
        
        return lista;

    }
//rever
    public List<Familia> buscarNomeResponsavel_familiar(String responsavel_familiar) throws SQLException {
        List<Familia> retorno = new ArrayList<>();
        List<Familia> auxiliar;

        try {
            auxiliar = this.buscar();
            int tamanho = auxiliar.size();
            for (int k = 0; k < tamanho; k++) {
                if (responsavel_familiar.equals(auxiliar.get(k).getResponsavel_familiar())) {
                    retorno.add(auxiliar.get(k));
                }
            }
            /*
            for (int k = 0; k < tamanho; k++) {         
                if (nomeDoFamilia!=null&& auxiliar!=null&&nomeDoFamilia.contains(auxiliar.get(k).getNome())){
                    retorno.add(auxiliar.get(k));
                }
            }
             */

        } catch (SQLException | Error e) {
            System.out.println(e);
        }
        return retorno;
    }

    public Familia getFamiliaById(int id) {
        EntityManager em = getEM();
        Familia familia = null;
        try {
            //Consulta uma pessoa pelo seu ID.
            familia = em.find(Familia.class, id);
        } finally {
            em.close();
        }
        return familia;
    }

    public void update(Familia familia) throws Exception {
        EntityManager em = getEM();
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            familia = em.merge(familia);
            // Finaliza a transação.
            em.getTransaction().commit();
            System.out.println("Salvando Familia.");
        } finally {
            em.close();
        }
    }

    public void Editar(Familia familia) throws SQLException {
        EntityManager em = getEM();
        em.getTransaction().begin();
        em.merge(familia);
        em.getTransaction().commit();
        em.close();
    }

}


