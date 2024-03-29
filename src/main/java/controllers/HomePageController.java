package controllers;

import core.services.ChildService;
import dto.ChildDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/")
public class HomePageController {

    private ChildService childService;

    @Autowired
    public HomePageController(ChildService childService) {
        this.childService = childService;
    }


    @GetMapping
    public String getHomePage(Model model){

        List<ChildDTO> childrenList = childService.getAllChildren();
        model.addAttribute("children", childrenList);
        return "home";
    }
}
