package main.service;




import javax.servlet.http.HttpSession;

import business.entity.BoutiqueItem;
import main.entities.Panier;
import main.entities.PanierItem;

public class PanierService {
	public void add(HttpSession  session,BoutiqueItem item) {
		Panier p = (Panier)session.getAttribute("PANIER");
		if (p == null) {
			p = new Panier();
			session.setAttribute("PANIER", p);
		}
		p.getItems().add(new PanierItem(item));
	}
	public Panier getPanier(HttpSession session) {
		Panier p = (Panier)session.getAttribute("PANIER");
		if (p == null) {
			p = new Panier();
			session.setAttribute("PANIER", p);
		}
		
		return p;
	}
}
