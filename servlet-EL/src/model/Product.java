package model;

public class Product {

	private String[] productList = {"java","oracle","웹표준","jsp","spring"};
	
	// 변수 설정
	private int num1 = 10;
	private int num2 = 20;
	
	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}

	public String[] getProductList() {
		return productList;
	}
}