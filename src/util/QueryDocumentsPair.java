package util;

import java.io.Serializable;

import Tools.TagAdapter;

public class QueryDocumentsPair implements Serializable{
	int id;
	String query;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	String interferedDocument;
	String document;
	int option;
	String discription;
	public int getOption() {
		return option;
	}
	public String getDiscription() {
		return TagAdapter.convert(discription);
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public void setOption(int option) {
		this.option = option;
	}
	public QueryDocumentsPair(int id,String query,String discription,String d1,String d2)
	{
		this.id=id;
		this.query=query;
		this.discription=discription;
		this.interferedDocument=d1;
		this.document=d2;
	}
	public String getQuery() {
		//return TagAdapter.convert(query);
		return query;
	}
	public void setQuery(String query) {
		this.query = query;
	}
	public String getInterferedDocument() {
		return TagAdapter.convert(interferedDocument);
	}
	public void setInterferedDocument(String interferedDocument) {
		this.interferedDocument = interferedDocument;
	}
	public String getDocument() {
		return TagAdapter.convert(document);
	}
	public void setDocument(String document) {
		this.document = document;
	}
	
	

}
