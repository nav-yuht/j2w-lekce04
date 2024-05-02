package cz.czechitas.java2webapps.lekce4.controller;

import cz.czechitas.java2webapps.lekce4.entity.Lekce;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Controller()
@RequestMapping("/lekce")
public class LekceController {
    private LocalDate zacatekKurzu = LocalDate.of(2024, 5,1);
    private LocalTime casOd = LocalTime.of(15,50);
    private LocalTime casDo = LocalTime.of(20,50);
    private final List<Lekce> seznamLekci = List.of(
            new Lekce("Vstup", "Mech a kapradí", zacatekKurzu.minusWeeks(0), casOd, casDo),
            new Lekce("Výstup", "Mech a kapradí", zacatekKurzu.minusWeeks(1), casOd, casDo),
            new Lekce("Příkazy", "Mech a kapradí", zacatekKurzu.minusWeeks(2), casOd, casDo),
            new Lekce("Podmínky", "Mech a kapradí", zacatekKurzu.minusWeeks(3), casOd, casDo),
            new Lekce("Cykly", "Mech a kapradí", zacatekKurzu.minusWeeks(4), casOd, casDo)
    );

    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView modelAndView = new ModelAndView("/lekce/index");
        modelAndView.addObject("seznam", seznamLekci);
        return modelAndView;
    }

    @GetMapping("/detail/{index}")
    public ModelAndView detail(@PathVariable int index) {
        ModelAndView modelAndView = new ModelAndView("/lekce/detail");
        modelAndView.addObject("seznam", seznamLekci.get(index));
        return modelAndView;
    }
}
