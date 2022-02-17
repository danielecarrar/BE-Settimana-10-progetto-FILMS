package it.film.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import it.film.entity.Film;

public class FilmDao implements IFilmDao {

	private EntityManager em = EntityManagerHelper.getEntityManager();

	/**
	 * 1) aggiunge un film al database
	 * 
	 * @author Daniele Carraro
	 */
	public void aggiungiFilm(Film film) {
		em.getTransaction().begin();
		em.persist(film);
		em.getTransaction().commit();
	}

	/**
	 * 2)
	 * 
	 * @param il nome del regista da cercare
	 * @author Daniele Carraro
	 * @return la lista dei film prodotti da quel regista
	 */
	public List<Film> trovaFilmByRegista(String regista) {
		Query query = em.createQuery("SELECT f FROM Film f WHERE f.regista = '" + regista + "'");
		List<Film> film = query.getResultList();
		return film;
	}

	/**
	 * 3)
	 * 
	 * @return tutti i film presenti nel database
	 * @author Daniele Carraro
	 */
	public List<Film> trovaTutti() {
		Query query = em.createNamedQuery("trovatutti");
		List<Film> listaFilm = query.getResultList();
		return listaFilm;
	}

	/**
	 * 4) elimina un film dal database
	 * 
	 * @author Daniele Carraro
	 * @param un intero id, la chiave primaria
	 */
	public void eliminaFilm(int id) {
		em.getTransaction().begin();
		em.remove(em.find(Film.class, id));
		em.getTransaction().commit();
	}
}