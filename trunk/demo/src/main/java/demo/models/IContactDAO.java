package main.java.demo.models;


import java.util.*;


public interface IContactDAO {

	// return contact id
	int sava(Contact contact);

	Contact get(int id);

	int remove(int id);
	
	Collection<Contact> listAll();
}
