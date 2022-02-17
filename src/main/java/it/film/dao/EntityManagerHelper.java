package it.film.dao;
//questa classe istanzierà un Entity Manager

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EntityManagerHelper {

	// EntityManagerFactory permette di creare un EntityManager
	private static EntityManagerFactory emfactory;

	public static EntityManager getEntityManager() {
		return getEmfactory().createEntityManager();
	}

	public static EntityManagerFactory getEmfactory() {
		if (emfactory == null) {
			emfactory = Persistence.createEntityManagerFactory("filmPS");
		}
		return emfactory;
	}
}