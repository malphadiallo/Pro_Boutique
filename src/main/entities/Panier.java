package main.entities;

import java.util.ArrayList;
import java.util.List;

public class Panier {
	private List<PanierItem> items = new ArrayList<>();
	public List<PanierItem> getItems() {
		return items;
	}
	public void setItems(List<PanierItem> items) {
		this.items = items;
	}
	
}
