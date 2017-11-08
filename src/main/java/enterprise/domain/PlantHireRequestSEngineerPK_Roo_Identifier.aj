// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package enterprise.domain;

import enterprise.domain.PlantHireRequestSEngineerPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect PlantHireRequestSEngineerPK_Roo_Identifier {
    
    declare @type: PlantHireRequestSEngineerPK: @Embeddable;
    
    @Column(name = "plant_hire_request", nullable = false)
    private Long PlantHireRequestSEngineerPK.plantHireRequest;
    
    @Column(name = "s_engineer", nullable = false)
    private Long PlantHireRequestSEngineerPK.sEngineer;
    
    public PlantHireRequestSEngineerPK.new(Long plantHireRequest, Long sEngineer) {
        super();
        this.plantHireRequest = plantHireRequest;
        this.sEngineer = sEngineer;
    }

    private PlantHireRequestSEngineerPK.new() {
        super();
    }

    public Long PlantHireRequestSEngineerPK.getPlantHireRequest() {
        return plantHireRequest;
    }
    
    public Long PlantHireRequestSEngineerPK.getSEngineer() {
        return sEngineer;
    }
    
}