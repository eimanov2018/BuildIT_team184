package enterprise.web;
import enterprise.domain.PlantHireRequestSEngineer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/planthirerequestsengineers")
@Controller
@RooWebScaffold(path = "planthirerequestsengineers", formBackingObject = PlantHireRequestSEngineer.class)
public class PlantHireRequestSEngineerController {
}
