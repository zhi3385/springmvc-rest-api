package main.java.demo.controllers;

import java.util.*;

import main.java.demo.common.AppContext;
import main.java.demo.models.Contact;
import main.java.demo.models.ContactService;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;

@RestController
public class ContactController {
    
	private ContactService service = AppContext.GetContext().getBean(ContactService.class);
    
	@RequestMapping(value = "/contacts/list")
    public Collection<Contact> list(@RequestParam(value="areacode", defaultValue="") String areacode) {
				
		Collection<Contact> all = service.listAll();
		if (!"".equals(areacode))
		{
			// this filter should be performed at database size, this sample filter it in service layer
			Collection<Contact> filteredList = new ArrayList<Contact>();
			Iterator<Contact> it = all.iterator();
			while (it.hasNext())
			{
				Contact c = it.next();
				if (!"".equals(c.getPhoneNumber()) && c.getPhoneNumber().startsWith(areacode))
				{
					filteredList.add(c);
				}				
			}
			
			return filteredList;
		}
		
		return all;
    }
    
	@RequestMapping(value = "/contacts/get")
    public Contact get(@RequestParam(value="id", defaultValue="0") int id) {
		return service.get(id);
    }

	@RequestMapping(value = "/contacts/put", method = RequestMethod.PUT)
    public Map<String, Integer> save(@RequestBody Contact c) {
		
		Map<String, Integer> result = new HashMap<String, Integer>();
		
		result.put("id", 0);
		if (c != null)
		{
			int insertedId = service.sava(c);
			result.put("id", insertedId);
		}
		
		return result;
    }
    
	@RequestMapping(value = "/contacts/delete", method = RequestMethod.DELETE)
    public Map<String, Integer> delete(@RequestParam(value="id", defaultValue="0") int id) {
		
		Map<String, Integer> result = new HashMap<String, Integer>();
		
		int deletedId = service.remove(id);
		result.put("id", deletedId);
		
		return result;
    }
}
