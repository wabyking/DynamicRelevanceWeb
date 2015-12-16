package Tools;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public class MongoDB {
	public static MongoDatabase getDatabase(){//172.26.153.185
		MongoClient mongoClient = new MongoClient("127.0.0.1" , 27017);
		MongoDatabase db = mongoClient.getDatabase("test");
		return db;
	}

}
