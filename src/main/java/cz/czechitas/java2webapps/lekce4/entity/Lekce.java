package cz.czechitas.java2webapps.lekce4.entity;

import java.time.LocalDate;
import java.time.LocalTime;

public class Lekce {
    private String nazevLekce;
    private String misto;
    private LocalDate zacatekKurzu;
    private LocalTime casOd;
    private LocalTime casDo;

    public Lekce() {
    }

    public Lekce(String nazevLekce, String misto, LocalDate zacatekKurzu, LocalTime casOd, LocalTime casDo) {
        this.nazevLekce = nazevLekce;
        this.misto = misto;
        this.zacatekKurzu = zacatekKurzu;
        this.casOd = casOd;
        this.casDo = casDo;
    }

    public String getNazevLekce() {
        return nazevLekce;
    }

    public void setNazevLekce(String nazevLekce) {
        this.nazevLekce = nazevLekce;
    }

    public String getMisto() {
        return misto;
    }

    public void setMisto(String misto) {
        this.misto = misto;
    }

    public LocalDate getZacatekKurzu() {
        return zacatekKurzu;
    }

    public void setZacatekKurzu(LocalDate zacatekKurzu) {
        this.zacatekKurzu = zacatekKurzu;
    }

    public LocalTime getCasOd() {
        return casOd;
    }

    public void setCasOd(LocalTime casOd) {
        this.casOd = casOd;
    }

    public LocalTime getCasDo() {
        return casDo;
    }

    public void setCasDo(LocalTime casDo) {
        this.casDo = casDo;
    }
}
