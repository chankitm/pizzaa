// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.domain;

import com.example.pizza.domain.Base;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Base_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Base.entityManager;
    
    public static final EntityManager Base.entityManager() {
        EntityManager em = new Base().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Base.countBases() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Base o", Long.class).getSingleResult();
    }
    
    public static List<Base> Base.findAllBases() {
        return entityManager().createQuery("SELECT o FROM Base o", Base.class).getResultList();
    }
    
    public static Base Base.findBase(Long id) {
        if (id == null) return null;
        return entityManager().find(Base.class, id);
    }
    
    public static List<Base> Base.findBaseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Base o", Base.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Base.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Base.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Base attached = Base.findBase(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Base.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Base.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Base Base.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Base merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
