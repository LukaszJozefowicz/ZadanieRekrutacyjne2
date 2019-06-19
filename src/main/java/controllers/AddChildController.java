package controllers;

import core.services.ChildService;
import dto.ChildDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/add")
public class AddChildController {

    private ChildService childService;

    @Autowired
    public AddChildController(ChildService childService) {
        this.childService = childService;
    }

    @GetMapping
    public String showForm() {
        return "addChild";
    }

    @PostMapping
    public String addChild(ChildDTO childDTO) {
        childService.addChild(childDTO);
        return "redirect:/";
    }
}
