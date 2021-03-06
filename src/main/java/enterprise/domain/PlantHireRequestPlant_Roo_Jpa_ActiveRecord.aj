// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package enterprise.domain;

import enterprise.domain.PlantHireRequestPlant;
import enterprise.domain.PlantHireRequestPlantPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PlantHireRequestPlant_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PlantHireRequestPlant.entityManager;
    
    public static final List<String> PlantHireRequestPlant.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager PlantHireRequestPlant.entityManager() {
        EntityManager em = new PlantHireRequestPlant().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PlantHireRequestPlant.countPlantHireRequestPlants() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PlantHireRequestPlant o", Long.class).getSingleResult();
    }
    
    public static List<PlantHireRequestPlant> PlantHireRequestPlant.findAllPlantHireRequestPlants() {
        return entityManager().createQuery("SELECT o FROM PlantHireRequestPlant o", PlantHireRequestPlant.class).getResultList();
    }
    
    public static List<PlantHireRequestPlant> PlantHireRequestPlant.findAllPlantHireRequestPlants(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PlantHireRequestPlant o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PlantHireRequestPlant.class).getResultList();
    }
    
    public static PlantHireRequestPlant PlantHireRequestPlant.findPlantHireRequestPlant(PlantHireRequestPlantPK id) {
        if (id == null) return null;
        return entityManager().find(PlantHireRequestPlant.class, id);
    }
    
    public static List<PlantHireRequestPlant> PlantHireRequestPlant.findPlantHireRequestPlantEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PlantHireRequestPlant o", PlantHireRequestPlant.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PlantHireRequestPlant> PlantHireRequestPlant.findPlantHireRequestPlantEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PlantHireRequestPlant o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PlantHireRequestPlant.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PlantHireRequestPlant.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PlantHireRequestPlant.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PlantHireRequestPlant attached = PlantHireRequestPlant.findPlantHireRequestPlant(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PlantHireRequestPlant.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PlantHireRequestPlant.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PlantHireRequestPlant PlantHireRequestPlant.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PlantHireRequestPlant merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
