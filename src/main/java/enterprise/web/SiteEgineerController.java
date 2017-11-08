package enterprise.web;
import enterprise.domain.SiteEgineer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/siteegineers")
@Controller
@RooWebScaffold(path = "siteegineers", formBackingObject = SiteEgineer.class)
public class SiteEgineerController {
}
