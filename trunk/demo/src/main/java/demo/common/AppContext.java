package main.java.demo.common;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppContext {

	private static ApplicationContext context = null;
	
	public static ApplicationContext GetContext()
	{
		if (context == null)
		{
			context = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		}
		return context;
	}
	
	public static Object getBean(String id)
	{
		return GetContext().getBean(id);
	}
}
