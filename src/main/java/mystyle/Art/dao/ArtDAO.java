package mystyle.Art.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mystyle.Art.model.ArtModel;


@Repository
@Transactional
public class ArtDAO {
	
	@Autowired
	@PersistenceContext
	private EntityManager em;
	
	//want to list users and results - purpose of using dao here!
	
	public List<ArtModel> findByName(String name) {

		return em.createQuery("FROM ArtModel ORDER BY name ASC", ArtModel.class).getResultList();
	}
	
	
	public ArtModel findById(Long id) {
		return em.find(ArtModel.class, id);
	}
	
	public List<ArtModel> findAll() {

		return em.createQuery("FROM ArtModel", ArtModel.class).getResultList();
	}

}
