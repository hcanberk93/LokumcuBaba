package com.EinsteinCanavari.LokumcuBaba.controller;

import com.EinsteinCanavari.LokumcuBaba.model.BasvuruForm;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BasvuruController {
    @RequestMapping("/formgoruntule")
    public ModelAndView getBasvuruForm() {
        ModelAndView mv = new ModelAndView("BasvuruForm");
        mv.addObject("FormEntity", new BasvuruForm());
        return mv;
    }
}
