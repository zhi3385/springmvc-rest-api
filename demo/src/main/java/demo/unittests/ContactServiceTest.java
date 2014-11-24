package main.java.demo.unittests;

import main.java.demo.common.AppContext;
import main.java.demo.models.*;

import org.junit.Assert;
import org.junit.Test;

public class ContactServiceTest {

	@Test
	public void testCRUD() {
		ContactService contactService = AppContext.GetContext().getBean(ContactService.class);
		
		Contact contact = new Contact();
		contact.setFirstName("Jack");
		contact.setLastName("Tom");
		
		int id = contactService.sava(contact);
		
		Contact retrievedContact = contactService.get(id);
		Assert.assertNotNull(retrievedContact);
		
		Assert.assertEquals(id, retrievedContact.getId());
		
		Assert.assertEquals(1, contactService.listAll().size());

		contactService.remove(id);
		
		Assert.assertNull(contactService.get(id));
		Assert.assertEquals(0, contactService.listAll().size());
	}

}