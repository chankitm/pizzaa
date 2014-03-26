// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.example.pizza.model;

import com.example.pizza.model.ColorObject;
import com.example.pizza.model.ColorObjectKey;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ColorObject_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ColorObject.entityManager;
    
    public static final EntityManager ColorObject.entityManager() {
        EntityManager em = new ColorObject().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ColorObject.countColorObjects() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ColorObject o", Long.class).getSingleResult();
    }
    
    public static List<ColorObject> ColorObject.findAllColorObjects() {
        return entityManager().createQuery("SELECT o FROM ColorObject o", ColorObject.class).getResultList();
    }
    
    public static ColorObject ColorObject.findColorObject(ColorObjectKey id) {
        if (id == null) return null;
        return entityManager().find(ColorObject.class, id);
    }
    
    public static List<ColorObject> ColorObject.findColorObjectEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ColorObject o", ColorObject.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ColorObject.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ColorObject.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ColorObject attached = ColorObject.findColorObject(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ColorObject.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ColorObject.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ColorObject ColorObject.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ColorObject merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
