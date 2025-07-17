/*
 * File: GradienceDao.java
 */
package com.uwec.gradiance.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Generic DAO using JPA EntityManager for any entity type.
 */
@Repository
@Transactional
public class GradienceDao {
    @PersistenceContext
    private EntityManager em;

    /**
     * Save or update an entity.
     */
    public <T> T save(T entity) {
        return em.merge(entity);
    }

    /**
     * Find an entity by its primary key.
     */
    public <T> T findById(Class<T> clazz, Object id) {
        return em.find(clazz, id);
    }

    /**
     * Delete an entity instance.
     */
    public <T> void delete(T entity) {
        T managed = em.contains(entity) ? entity : em.merge(entity);
        em.remove(managed);
    }

    /**
     * Retrieve all instances of a given entity type.
     */
    public <T> List<T> findAll(Class<T> clazz) {
        var cb = em.getCriteriaBuilder();
        var cq = cb.createQuery(clazz);
        var root = cq.from(clazz);
        cq.select(root);
        return em.createQuery(cq).getResultList();
    }
}
