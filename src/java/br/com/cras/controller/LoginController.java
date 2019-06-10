/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.cras.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Ronnie
 */

@Controller

public class LoginController {

    @RequestMapping("/renderizarLogin")
    public String renderizarLogin() {

        return "login";
    }

    @RequestMapping("/teste")
    public String renderizarRonnie() {
        return "ronnie";
    }

    @RequestMapping("/index")
    public String index(Model model) {
        return "index";
    }

    @RequestMapping("/boasvindas")
    public String boasvindas() {

        return "boasvindas";
    }

}
