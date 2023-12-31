package com.test.java;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.edge.EdgeDriver;

public class Ex04 {
	public static void main(String[] args) {
		
		//Selenium(셀레니움)
		//- 테스트 자동화 도구
		//https://googlechromelabs.github.io/chrome-for-testing/#stable
		
		//1. C:\class\dev\chromedriver.exe
		//2. lib > jar들 복사
		
		//m1();
		//m2();
		m3();
		
	}

	private static void m3() {
		String webDriverID = "webdriver.edge.driver";
		String path = "C:\\class\\dev\\msedgedriver.exe";
				
		System.setProperty(webDriverID, path);
		
		
		//브라우저 참조 객체
		WebDriver driver = new EdgeDriver();
		
		String url = "http://localhost:8090/memo/list.do";
		
		driver.get(url);

		WebElement btn = driver.findElement(By.id("btn1"));
		btn.click();
	
		WebElement result = driver.findElement(By.id("result"));
		System.out.println(result.getText());
		
	}

	private static void m2() {
		String webDriverID = "webdriver.edge.driver";
		String path = "C:\\class\\dev\\msedgedriver.exe";
				
		System.setProperty(webDriverID, path);
		
		
		//브라우저 참조 객체
		WebDriver driver = new EdgeDriver();
		
		String url = "http://lms1.sist.co.kr/worknet/SLogin.asp";
		
		driver.get(url);
		
		WebElement id = driver.findElement(By.id("strLoginID"));
		WebElement pw = driver.findElement(By.id("strLoginPwd"));
		
		id.sendKeys("이재용");
		pw.sendKeys("2428");
		
		WebElement btn = driver.findElement(By.cssSelector("#content > div > form > table > tbody > tr > td > div > div.login-form > div.login-btn > input"));
		btn.click();
		
		//페이지 전환 > 딜레이 발생
		try {
//			driver.wait(1000);
			Thread.sleep(1000);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		WebElement td = driver.findElement(By.cssSelector("#content > div > div > div > div.panel-body > form > table > thead > tr:nth-child(5) > td:nth-child(2)"));
		System.out.println(td.getText());
		
		
	}

	private static void m1() {
		String webDriverID = "webdriver.edge.driver";
		String path = "C:\\class\\dev\\msedgedriver.exe";
				
		System.setProperty(webDriverID, path);
		
		
		//브라우저 참조 객체
		WebDriver driver = new EdgeDriver();
		
		String url = "http://naver.com";
		
		driver.get(url);
		
		//네이버 검색 창
		WebElement query = driver.findElement(By.id("query"));
		query.sendKeys("셀레니움");
		
		WebElement btn = driver.findElement(By.className("btn_search"));
		btn.click();
		
		
	}
}
