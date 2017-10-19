package com.EinsteinCanavari.LokumcuBaba.controller;

import com.EinsteinCanavari.LokumcuBaba.model.BasvuruForm;
import com.EinsteinCanavari.LokumcuBaba.service.BasvuruManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.validation.Valid;
import java.sql.SQLException;

@Controller
public class FormController extends WebMvcConfigurerAdapter {

    @RequestMapping(value = "BasvuruForm", method = RequestMethod.GET)
    public BasvuruForm basvuruForm() {
        return new BasvuruForm();
    }

    @RequestMapping(value = "basvuruekle", method = RequestMethod.POST)
    public ModelAndView createUser(@ModelAttribute("FormEntity") @Valid BasvuruForm basvuruForm, BindingResult result, ModelMap model) throws SQLException {
        if (result.hasErrors()) {
            return new ModelAndView("BasvuruForm");
        }
        BasvuruManager bm = new BasvuruManager();
        if (!bm.TCKimlikCheck(basvuruForm.getTcKimlik())){
            model.addAttribute("message","Daha önce kaydolmuşsunuz, ilginize teşekkür ederiz.");
        }
        else{
        bm.DBInsert(basvuruForm);
        model.addAttribute("message","Kaydınız başarılı bir şekilde gerçekleşmiştir.");
        }
        return new ModelAndView("BasvuruEkle");
    }

}
