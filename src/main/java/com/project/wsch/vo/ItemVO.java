package com.project.wsch.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data 
public class ItemVO {
	private int no;
	private String name;
	private String category;
	private double abv;
	private String flavor;
	private int sweet;
	private int body;
	private String materials;
	private String storeLink;
	private int price;
	
	private String desc1;
	private String desc2;
	private String desc3;
	
	/* no	name	category	abv	flavor	sweet	body	materials	storeLink	price	desc1	desc2	desc3*/
	 
}

