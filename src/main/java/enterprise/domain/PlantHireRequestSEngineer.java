package enterprise.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(identifierType = PlantHireRequestSEngineerPK.class, versionField = "", table = "plant_hire_request_s_engineer", schema = "public")
@RooDbManaged(automaticallyDelete = true)
public class PlantHireRequestSEngineer {
}
