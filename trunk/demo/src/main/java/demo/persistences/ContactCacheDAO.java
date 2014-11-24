package main.java.demo.persistences;

import java.util.*;

import main.java.demo.models.Contact;
import main.java.demo.models.IContactDAO;

public class ContactCacheDAO implements IContactDAO {

	private Map<Integer, Contact> map = new HashMap<Integer, Contact>();
	private static int globalId = 1;
	
	// return contact id
	public int sava(Contact contact)
	{
		// new item
		if (!map.containsKey(contact.getId()))
		{
			contact.setId(globalId++);
		}
		
		map.put(contact.getId(), contact);
		
		return contact.getId();
	}

	public Contact get(int id)
	{
		if (map.containsKey(id))
		{
			return map.get(id);
		}
		
		return null;
	}

	public int remove(int id)
	{
		if (map.containsKey(id))
		{
			map.remove(id);
			
			return id;
		}
		
		return 0;
	}
	
	public Collection<Contact> listAll()
	{
		return map.values();
	}
}
