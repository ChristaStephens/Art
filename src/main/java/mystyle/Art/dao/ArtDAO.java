package mystyle.Art.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ArtDAO {
	
	@Autowired
	@PersistenceContext
	private EntityManager em;
	

}
