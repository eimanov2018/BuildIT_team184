package enterprise.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(table = "plant", schema = "public")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "plantHireRequests" })
public class Plant {
}
