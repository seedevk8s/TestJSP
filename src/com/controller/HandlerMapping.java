package com.controller;

import java.util.*;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class HandlerMapping extends DefaultHandler{
	
	Map map = new HashMap();

	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try
		{
			//�Ľ̵�
			if(qName.equals("bean"))
			{
				//�Ӽ� ��������
				String id=attributes.getValue("id");
				String cls=attributes.getValue("class");
				//�޸� �Ҵ�
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();
				
				//����
				map.put(id, obj);
			}
		}
		catch(Exception ex){}
	}

	
}















