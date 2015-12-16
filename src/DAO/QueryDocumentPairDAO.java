package DAO;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bson.Document;

import com.mongodb.Block;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;

import Tools.MongoDB;

import util.QueryDocumentsPair;
public class QueryDocumentPairDAO {
	
	public static Map<Integer,QueryDocumentsPair> getAll()
	{
		final Map<Integer,QueryDocumentsPair> qdmap=new HashMap<Integer,QueryDocumentsPair>(); 
		
		MongoDatabase db=MongoDB.getDatabase();
		FindIterable<Document> iterable = db.getCollection("docs").find();
		iterable.forEach(new Block<Document>() {
		    @Override
		    public void apply(final Document document) {
		    	int id=Integer.parseInt((String)document.get("id"));
		    	QueryDocumentsPair qd=new QueryDocumentsPair(id,(String)document.get("query"),(String)document.get("discription"),(String)document.get("document1"),(String)document.get("document2"));
		    	System.out.println(document.get("discription"));
		    	qdmap.put(id,qd);
		    }
		});
		return qdmap;
	}
	public static void main(String args[])
	{
		System.out.println(getAll().size());
	}
	

}
