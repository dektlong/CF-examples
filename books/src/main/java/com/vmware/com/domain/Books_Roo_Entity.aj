// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.vmware.com.domain;

import com.vmware.com.domain.Books;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Books_Roo_Entity {
    
    declare @type: Books: @Entity;
    
    @PersistenceContext
    transient EntityManager Books.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Books.id;
    
    @Version
    @Column(name = "version")
    private Integer Books.version;
    
    public Long Books.getId() {
        return this.id;
    }
    
    public void Books.setId(Long id) {
        this.id = id;
    }
    
    public Integer Books.getVersion() {
        return this.version;
    }
    
    public void Books.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Books.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Books.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Books attached = this.entityManager.find(this.getClass(), this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Books.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public Books Books.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Books merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Books.entityManager() {
        EntityManager em = new Books().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Books.countBookses() {
        return entityManager().createQuery("select count(o) from Books o", Long.class).getSingleResult();
    }
    
    public static List<Books> Books.findAllBookses() {
        return entityManager().createQuery("select o from Books o", Books.class).getResultList();
    }
    
    public static Books Books.findBooks(Long id) {
        if (id == null) return null;
        return entityManager().find(Books.class, id);
    }
    
    public static List<Books> Books.findBooksEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("select o from Books o", Books.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
