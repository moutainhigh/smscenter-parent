/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.sanerzone.smscenter.biz.entity;

import java.io.Serializable;

/**
 * 号段Entity
 * @author zhukc
 * @version 2017-06-27
 */
public class SmsPhoneInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String phone;			// 号段
	private String phoneType;		// 运营商
	private String phoneProv;		// 归属省
	private String phoneCity;		// 归属市
	private String phoneCityCode;	// 省市代码
	private String zip;				// 邮编
	private String types;			// 类型
	private String areaCode;		// 区号

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(String phoneType) {
		this.phoneType = phoneType;
	}
	
	public String getPhoneProv() {
		return phoneProv;
	}

	public void setPhoneProv(String phoneProv) {
		this.phoneProv = phoneProv;
	}
	
	public String getPhoneCity() {
		return phoneCity;
	}

	public void setPhoneCity(String phoneCity) {
		this.phoneCity = phoneCity;
	}
	
	public String getPhoneCityCode() {
		return phoneCityCode;
	}

	public void setPhoneCityCode(String phoneCityCode) {
		this.phoneCityCode = phoneCityCode;
	}
	
	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}
	
	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	
}