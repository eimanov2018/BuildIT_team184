// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package enterprise.web;

import enterprise.domain.PlantHireRequest;
import enterprise.domain.SiteEgineer;
import enterprise.web.SiteEgineerController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect SiteEgineerController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SiteEgineerController.create(@Valid SiteEgineer siteEgineer, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, siteEgineer);
            return "siteegineers/create";
        }
        uiModel.asMap().clear();
        siteEgineer.persist();
        return "redirect:/siteegineers/" + encodeUrlPathSegment(siteEgineer.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SiteEgineerController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SiteEgineer());
        return "siteegineers/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String SiteEgineerController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("siteegineer", SiteEgineer.findSiteEgineer(id));
        uiModel.addAttribute("itemId", id);
        return "siteegineers/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SiteEgineerController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("siteegineers", SiteEgineer.findSiteEgineerEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SiteEgineer.countSiteEgineers() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("siteegineers", SiteEgineer.findAllSiteEgineers(sortFieldName, sortOrder));
        }
        return "siteegineers/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SiteEgineerController.update(@Valid SiteEgineer siteEgineer, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, siteEgineer);
            return "siteegineers/update";
        }
        uiModel.asMap().clear();
        siteEgineer.merge();
        return "redirect:/siteegineers/" + encodeUrlPathSegment(siteEgineer.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String SiteEgineerController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, SiteEgineer.findSiteEgineer(id));
        return "siteegineers/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String SiteEgineerController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SiteEgineer siteEgineer = SiteEgineer.findSiteEgineer(id);
        siteEgineer.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/siteegineers";
    }
    
    void SiteEgineerController.populateEditForm(Model uiModel, SiteEgineer siteEgineer) {
        uiModel.addAttribute("siteEgineer", siteEgineer);
        uiModel.addAttribute("planthirerequests", PlantHireRequest.findAllPlantHireRequests());
    }
    
    String SiteEgineerController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
