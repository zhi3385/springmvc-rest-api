package main.java.demo.models;

import java.util.Collection;

public class ContactService {

	private IContactDAO _dao;
	
	public ContactService(IContactDAO contactDAO)
	{
		_dao = contactDAO;
	}
	
	// return contact id
	public int sava(Contact contact)
	{
		return _dao.sava(contact);
	}

	public Contact get(int id)
	{
		return _dao.get(id);
	}

	public int remove(int id)
	{
		return _dao.remove(id);
	}
	
	public Collection<Contact> listAll()
	{
		return _dao.listAll();
	}

	
}
