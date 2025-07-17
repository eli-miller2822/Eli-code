/*
 * File: GradienceRepository.java
 */
package com.uwec.gradiance.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.io.Serializable;

/**
 * Base Spring Data repository interface for all entities.
 * Extend this interface in your specific repositories, or inject directly with entity types.
 */
@NoRepositoryBean
public interface GradienceRepository<T, ID extends Serializable>
        extends JpaRepository<T, ID> {
    // Inherit all CRUD & paging methods from JpaRepository
}