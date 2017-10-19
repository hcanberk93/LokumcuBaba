package com.EinsteinCanavari.LokumcuBaba.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Email;

public class BasvuruForm {
    @NotEmpty(message = "Lütfen adınızı ve soyadınızı girin.")
     @Size(min=5,max=70,message = "Minimum: 5 Maksimum: 70 karakter...")
    String adSoyad;

    @NotEmpty(message = "Lütfen TC Kimlik numaranızı girin.")
    @Size(min=11,max=11,message = "TC Kimlik numarasi 11 karakterlidir.")
    String tcKimlik;

    @NotEmpty(message = "Lütfen adresinizi girin.")
    @Size(min=15,max=200,message = "Minimum: 15 Maksimum: 200 karakter...")
    String adres;

    @NotEmpty(message = "Lütfen telefon numaranızı girin.")
    @Size(min=10,max=10,message = "Telefon numaranız 10 karakterlidir (İlk 0'ı yazmayın)")
    String telefon;

    @NotEmpty(message = "Lütfen E-Posta adresinizi girin.")
    @Email(message = "Girilen E-Posta adresi geçersizdir.")
    String ePosta;

    @NotEmpty(message = "Lutfen doğum tarihinizi girin.")
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    String dTarihi;

    Boolean pTicaret;

    @NotEmpty(message = "Lütfen tercih nedeninizi girin.")
    @Size(max=50,message = "Lütfen 50 karakteri geçmeyin")
    String tSebep;


    @Size(min=3,max=20,message = "Minimum: 3 Maksimum: 20 karakter...")
    @NotNull(message = "Lütfen bayiilik şehrini girin.")
    String tSehir;

    @NotNull(message = "Lütfen bayiilik ilçesini girin.")
    @Size(min=4,max=40,message = "Minimum: 4 Maksimum: 40 karakter...")
    String tIlce;

    @NotNull(message = "Lütfen bayiilik semtini girin.")
    @Size(min=4,max=40,message = "Minimum: 4 Maksimum: 40 karakter...")
    String tSemt;

    @NotNull(message = "Lütfen yatırım miktarınızı girin.")
    int Ymiktar;

    String ilave;

    public BasvuruForm() {
    }

    public BasvuruForm(@NotNull(message = "Lutfen adinizi ve soyadinizi girin.") @Size(min = 5, max = 70, message = "Minimum: 5 Maksimum: 70 karakter...") String adSoyad, @NotNull(message = "Lutfen TC Kimlik numaranizi girin.") @Size(min = 11, max = 11, message = "TC Kimlik numarasi 11 karakterlidir.") String tcKimlik, @NotNull(message = "Lütfen adresinizi girin.") @Size(min = 15, max = 200, message = "Minimum: 15 Maksimum: 200 karakter...") String adres, @NotNull(message = "Lütfen telefon numaranizi girin.") @Size(min = 10, max = 10, message = "telefon numaraniz 10 karakterlidir (İlk 0'ı yazmayın)") String telefon, @NotNull(message = "Lütfen E-Posta adresinizi girin.") @Email(message = "Girilen E-Posta adresi geçersizdir.") String ePosta, @NotNull(message = "Lutfen dogum tarihinizi girin.") String dTarihi, Boolean pTicaret, @NotNull(message = "Lütfen tercih nedeninizi girin.") @Size(max = 50, message = "Lütfen 50 karakteri geçmeyin") String tSebep, @Size(min = 3, max = 20, message = "Minimum: 3 Maksimum: 20 karakter...") @NotNull(message = "Lütfen bayiilik şehrini girin.") String tSehir, @NotNull(message = "Lütfen bayiilik ilçesini girin.") @Size(min = 4, max = 40, message = "Minimum: 4 Maksimum: 40 karakter...") String tIlce, @NotNull(message = "Lütfen bayiilik semtini girin.") @Size(min = 4, max = 40, message = "Minimum: 4 Maksimum: 40 karakter...") String tSemt, @NotNull(message = "Lütfen yatırım miktarınızı girin.") int ymiktar, String ilave) {
        this.adSoyad = adSoyad;
        this.tcKimlik = tcKimlik;
        this.adres = adres;
        this.telefon = telefon;
        this.ePosta = ePosta;
        this.dTarihi = dTarihi;
        this.pTicaret = pTicaret;
        this.tSebep = tSebep;
        this.tSehir = tSehir;
        this.tIlce = tIlce;
        this.tSemt = tSemt;
        Ymiktar = ymiktar;
        this.ilave = ilave;
    }

    public String getAdSoyad() {
        return adSoyad;
    }

    public void setAdSoyad(String adSoyad) {
        this.adSoyad = adSoyad;
    }

    public String getTcKimlik() {
        return tcKimlik;
    }

    public void setTcKimlik(String tcKimlik) {
        this.tcKimlik = tcKimlik;
    }

    public String getAdres() {
        return adres;
    }

    public void setAdres(String adres) {
        this.adres = adres;
    }

    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

    public String getePosta() {
        return ePosta;
    }

    public void setePosta(String ePosta) {
        this.ePosta = ePosta;
    }

    public String getdTarihi() {
        return dTarihi;
    }

    public void setdTarihi(String dTarihi) {
        this.dTarihi = dTarihi;
    }

    public Boolean getpTicaret() {
        return pTicaret;
    }

    public void setpTicaret(Boolean pTicaret) {
        this.pTicaret = pTicaret;
    }

    public String gettSebep() {
        return tSebep;
    }

    public void settSebep(String tSebep) {
        this.tSebep = tSebep;
    }

    public String gettSehir() {
        return tSehir;
    }

    public void settSehir(String tSehir) {
        this.tSehir = tSehir;
    }

    public String gettIlce() {
        return tIlce;
    }

    public void settIlce(String tIlce) {
        this.tIlce = tIlce;
    }

    public String gettSemt() {
        return tSemt;
    }

    public void settSemt(String tSemt) {
        this.tSemt = tSemt;
    }

    public int getYmiktar() {
        return Ymiktar;
    }

    public void setYmiktar(int ymiktar) {
        Ymiktar = ymiktar;
    }

    public String getIlave() {
        return ilave;
    }

    public void setIlave(String ilave) {
        this.ilave = ilave;
    }
}
