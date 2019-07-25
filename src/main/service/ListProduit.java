package main.service;


import java.sql.SQLException;
import java.util.List;
import business.entity.BoutiqueItem;
import persistence.dao.BoutiqueDao;

public class ListProduit {
  private BoutiqueDao bdao=new BoutiqueDao();
  private BoutiqueItem bi=new BoutiqueItem();
  
  public ListProduit() {
	  bdao = new BoutiqueDao();
}
public List<BoutiqueItem> list() throws Exception, SQLException{
	  
		return bdao.findAll();
	}
  public BoutiqueItem findById(long id)throws  Exception, SQLException{
		return bdao.findById(id);
	}
}
