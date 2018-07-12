package Local;

import java.util.Date;

public class Order {
private String title,fname,phone,category,subcategory;
private Date startdate,expiredate;
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getSubcategory() {
	return subcategory;
}
public void setSubcategory(String subcategory) {
	this.subcategory = subcategory;
}
public Date getStartdate() {
	return startdate;
}
public void setStartdate(Date startdate) {
	this.startdate = startdate;
}
public Date getExpiredate() {
	return expiredate;
}
public void setExpiredate(Date expiredate) {
	this.expiredate = expiredate;
}
}
