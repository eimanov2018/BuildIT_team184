// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package enterprise.domain;

import enterprise.domain.PlantHireRequestPlantPK;
import javax.persistence.Column;
import javax.persistence.Embeddable;

privileged aspect PlantHireRequestPlantPK_Roo_Identifier {
    
    declare @type: PlantHireRequestPlantPK: @Embeddable;
    
    @Column(name = "plant_hire_request", nullable = false)
    private Long PlantHireRequestPlantPK.plantHireRequest;
    
    @Column(name = "plant", nullable = false)
    private Long PlantHireRequestPlantPK.plant;
    
    public PlantHireRequestPlantPK.new(Long plantHireRequest, Long plant) {
        super();
        this.plantHireRequest = plantHireRequest;
        this.plant = plant;
    }

    private PlantHireRequestPlantPK.new() {
        super();
    }

    public Long PlantHireRequestPlantPK.getPlantHireRequest() {
        return plantHireRequest;
    }
    
    public Long PlantHireRequestPlantPK.getPlant() {
        return plant;
    }
    
}