package com.bulutmd.LokumcuBaba;
 
import java.util.Map;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.sql.*;
import java.lang.Exception;
import org.springframework.web.bind.annotation.ModelAttribute; 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class RestController {

	class Franchiser{
		//Column Fields
		private String tc;
		private String fullName;
		private String address;
		private String phone;
		private String email;
		private int birthYear;
		private int birthMonth;
		private int birthDay;
		private boolean franchisExp;
		private String reason;
		private String location;
		private int amount;
		private String additional;

		//constructors
		public Franchiser(){
			
		}
		
		/*public Franchiser(String tc,String fullName,String address,String phone,String email,Date birth,
		boolean franchisExp,String reason,String location,
		int amount,String additional){
			this.tc = tc;
			this.fullName= fullName;
			this.address = address;
			this.phone = phone;
			this.email = email;
			this.birth = birth;
			this.franchisExp = franchisExp;
			this.reason = reason;
			this.location = location;
			this.amount = amount;
			this.additional = additional;
		}*/

		//Getters and setters for jsp form tag
		public void setTc(String tc){
			this.tc = tc;
		}

		public String getTc(){
			return tc;
		}

		public void setAddress(String address){
		    this.address = address;
		}
		
		public String getAddress(){
		    return address;
		}

		public void setPhone(String phone){
		    this.phone = phone;
		}
		
		public String getPhone(){
		    return phone;
		}

		public String getEmail() {
		    return email;
		}
		
		public void setEmail(String email) {
		    this.email = email;
		}

		public int getBirthDay() {
		    return birthDay;
		}
		
		public void setBirthDay(int birthDay) {
		    this.birthDay = birthDay;
		}

		public int getBirthMonth() {
		    return birthMonth;
		}

		public void setBirthMonth(int birthMonth) {
		    this.birthMonth = birthMonth;
		}

		public int getBirthYear() {
		    return birthYear;
		}

		public void setBirthYear(int birthYear) {
		    this.birthYear = birthYear;
		}

		public boolean getFranchisExp() {
		    return franchisExp;
		}
		
		public void setFranchisExp(boolean franchisExp) {
		    this.franchisExp = franchisExp;
		}

		public String getReason() {
		    return reason;
		}
		
		public void setReason(String reason) {
		    this.reason = reason;
		}

		public String getLocation() {
		    return location;
		}
		  
		public void setLocation(String location) {
		    this.location = location;
		}

		public int getAmount() {
		    return amount;
		}
		     
		public void setAmount(int amount) {
		    this.amount = amount;
		}      

		public String getAdditional() {
		    return additional;
		}
		
		public void setAdditional(String additional) {
		    this.additional = additional;
		}

		public String getFullName() {
		    return fullName;
		}
		
		public void setFullName(String fullName) {
		    this.fullName = fullName;
		}
	}
 
    @GetMapping("/")
    public ModelAndView index() {
        return new ModelAndView("home","fr",new Franchiser());
    }

 	@PostMapping("/add")
 	public ModelAndView log(@ModelAttribute Franchiser fr) throws Exception{
 		String url = "jdbc:mysql://localhost:3306/Lokumcu";
 		String name = "root";
 		String pwd = "toor";
 		String date = fr.getBirthYear() + "/" + fr.getBirthMonth() + "/" + fr.getBirthDay();
 		int exp;
 		if(fr.getFranchisExp()){
 			exp = 1;
 		}else{
 			exp = 0;
 		}
 		String query ="Insert into Franchisers(TC,FULLNAME,ADDRESS,PHONE,EMAIL,BIRTH,FRANCHISEXP,REASON,LOCATION,AMOUNT,ADDITIONAL) VALUES('"+fr.getTc()+"','"+fr.getFullName()+"','"+fr.getAddress()+"','"+fr.getPhone()+"','"+fr.getEmail()+"','"+ date +"',"+ exp +",'"+fr.getReason()+"','"+fr.getLocation()+"',"+fr.getAmount()+",'"+fr.getAdditional()+"');";
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection con = DriverManager.getConnection(url,name,pwd);
 		Statement st = con.createStatement();
 		st.executeUpdate(query);
 		return new ModelAndView("home","fr",new Franchiser());
 	}
}
