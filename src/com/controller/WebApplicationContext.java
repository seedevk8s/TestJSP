package com.controller;

//Model Ŭ���� ��Ƽ� ��������
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import com.common.Model;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class WebApplicationContext {
	
	private Map clsMap = new HashMap();

	public WebApplicationContext(String path1) {
		try
		{
			SAXParserFactory spf= SAXParserFactory.newInstance();
			SAXParser sp = spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			sp.parse(new File(path1), hm);
			
			clsMap=hm.map;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}	
	}

	public WebApplicationContext(InputStream is){
		SAXParserFactory spf = SAXParserFactory.newInstance();
		try {
			SAXParser sp = spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			sp.parse(is, hm);
			clsMap = hm.map;
		} catch (ParserConfigurationException | SAXException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	//��û Ŭ���� ����
	public Model getBean(String id)
	{
		//Ŭ���� ����
		return (Model)clsMap.get(id);
	}	
}















