package com.anket.model;

import java.sql.Date;

public class FormEntity {
	private String Ad;
    private int Tc;
    private int Tel;
    private String Adres;
    private String Email;
    private Date Dt;
    private boolean Perakende;
    private String Tercih;
    private String Ililcesemt;
    private double Miktar;
    private String Ek;
	public String getAd() {
		return Ad;
	}
	public void setAd(String ad) {
		Ad = ad;
	}
	public int getTc() {
		return Tc;
	}
	public void setTc(int tc) {
		Tc = tc;
	}
	public int getTel() {
		return Tel;
	}
	public void setTel(int tel) {
		Tel = tel;
	}
	public String getAdres() {
		return Adres;
	}
	public void setAdres(String adres) {
		Adres = adres;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Date getDt() {
		return Dt;
	}
	public void setDt(Date dt) {
		Dt = dt;
	}
	public boolean isPerakende() {
		return Perakende;
	}
	public void setPerakende(boolean perakende) {
		Perakende = perakende;
	}
	public String getTercih() {
		return Tercih;
	}
	public void setTercih(String tercih) {
		Tercih = tercih;
	}
	public String getIlilcesemt() {
		return Ililcesemt;
	}
	public void setIlilcesemt(String ililcesemt) {
		Ililcesemt = ililcesemt;
	}
	public double getMiktar() {
		return Miktar;
	}
	public void setMiktar(double miktar) {
		Miktar = miktar;
	}
	public String getEk() {
		return Ek;
	}
	public void setEk(String ek) {
		Ek = ek;
	}

}
