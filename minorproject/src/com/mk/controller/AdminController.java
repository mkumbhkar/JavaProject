package com.mk.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mk.model.Admin;

public class AdminController {
	public static Admin checkPassword(String adminid,String pwd)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="select * from admin where adminid='"+adminid+"' and password='"+pwd+"'";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		if(rs.next())
		{Admin A=new Admin();
		A.setAdminid(rs.getString(1));
		A.setAdminname(rs.getString(2));
		A.setPassword(rs.getString(3));
		return(A);
		}
		return null;
			
		
	
	}catch(Exception e)
	{
	return(null);	
	}

	}

	public static boolean AddNewAdmin(Admin A) {
		// TODO Auto-generated method stub
		try{
			Connection cn=DBHelper.openConnection();
			String query="insert into admin(adminname,password,mobileno,emailid) "
					+ "values('"+A.getAdminname()+"','"+A.getPassword()+"','"+A.getMobileno()+"','"+A.getEmailid()+"')";
			boolean st=DBHelper.executeUpdate(query, cn);
			return(st);
			
			
		}catch(Exception e){
			System.out.println("AddNewAdmin "+e);
			return false;
		}
	}}
