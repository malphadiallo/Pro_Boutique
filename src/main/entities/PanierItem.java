package main.entities;

import business.entity.BoutiqueItem;

public class PanierItem {
	private String codeProduit;
	private String labelProduit;
	private int nb;
	private double prix;
	public PanierItem(String codeProduit, String labelProduit, int nb, double prix) {
		super();
		this.codeProduit = codeProduit;
		this.labelProduit = labelProduit;
		this.nb = nb;
		this.prix = prix;
	}
	public PanierItem(BoutiqueItem bi) {
		this.codeProduit = bi.getCode();
		this.labelProduit = bi.getLabel();
		this.nb = 1;
		this.prix = this.nb*bi.getPrice();
	}
	public String getCodeProduit() {
		return codeProduit;
	}
	public void setCodeProduit(String codeProduit) {
		this.codeProduit = codeProduit;
	}
	public String getLabelProduit() {
		return labelProduit;
	}
	public void setLabelProduit(String labelProduit) {
		this.labelProduit = labelProduit;
	}
	public int getNb() {
		return nb;
	}
	public void setNb(int nb) {
		this.nb = nb;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	@Override
	public String toString() {
		return "PanierItem [codeProduit=" + codeProduit + ", labelProduit=" + labelProduit + ", nb=" + nb + ", prix="
				+ prix + "]";
	}
	
	

}
