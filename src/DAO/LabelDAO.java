package DAO;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import Tools.MongoDB;

import com.mongodb.Block;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import static java.util.Arrays.asList;
import util.Label;
import util.QueryDocumentsPair;

public class LabelDAO {
	public static void label(String name,Label label)
	{
		MongoDatabase db=MongoDB.getDatabase();
		
		db.getCollection("label").updateOne(new Document("name", name),
		        new Document("$set", new Document(label.getId()+".order"+label.getOrder(), label.getValue())));
	}
	public static void addUser(String name,List<QueryDocumentsPair> qds)
	{
		MongoDatabase db=MongoDB.getDatabase();
		List<Document> list=new ArrayList<Document>();
		for(int i=0;i<qds.size();i++)
		{
			QueryDocumentsPair qd=qds.get(i);
			Document doc=new Document();
			if(qd.getOption() ==1)
			{
				doc.append("order1", -1).append("order0", -1);
			}
			else
				doc.append("order1", -1);
			doc.append("id",qd.getId() );
			list.add(doc);
			
		}
		db.getCollection("label").insertOne(new Document("name",name).append("score",asList(list)));
	}
	
	
	public static void main(String args[])
	{
		label("waby",null);
	}
}
