// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package enterprise.domain;

import enterprise.domain.PlantHireRequestSEngineerPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect PlantHireRequestSEngineerPK_Roo_Json {
    
    public String PlantHireRequestSEngineerPK.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String PlantHireRequestSEngineerPK.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static PlantHireRequestSEngineerPK PlantHireRequestSEngineerPK.fromJsonToPlantHireRequestSEngineerPK(String json) {
        return new JSONDeserializer<PlantHireRequestSEngineerPK>()
        .use(null, PlantHireRequestSEngineerPK.class).deserialize(json);
    }
    
    public static String PlantHireRequestSEngineerPK.toJsonArray(Collection<PlantHireRequestSEngineerPK> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String PlantHireRequestSEngineerPK.toJsonArray(Collection<PlantHireRequestSEngineerPK> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<PlantHireRequestSEngineerPK> PlantHireRequestSEngineerPK.fromJsonArrayToPlantHireRequestSEngineerPKs(String json) {
        return new JSONDeserializer<List<PlantHireRequestSEngineerPK>>()
        .use("values", PlantHireRequestSEngineerPK.class).deserialize(json);
    }
    
}
