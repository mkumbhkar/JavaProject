package com.mk.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mk.model.Client;

public class ClientController {

	public static boolean AddNewRecord(Client A)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="insert into client(name,username,emailid,password,enrollmentno,gender,dob,address,mobileno,interest,occupation,institute,branch) "
				+ "values('"+A.getName()+"','"+A.getUsername()+"','"+A.getEmailid()+"','"+A.getPassword()+"','"+A.getEnrollmentno()+"','"+A.getGender()+"','"+A.getDob()+"','"+A.getAddress()+"','"+A.getMobileno()+"','"+A.getInterest()+"','"+A.getOccupation()+"','"+A.getInstitute()+"','"+A.getBranch()+"')";
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return false;
	}
	}

	public static ResultSet DisplayAll()
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from client";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("DisplayAll "+e);
		return null;
	}}
		
	public static Client DisplayByID(int id)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from client where emailid="+id;
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query, cn);
		if(rs.next())
		{Client A=new Client();
		 A.setUserid(rs.getString(1));
		 A.setName(rs.getString(2));
		 A.setUsername(rs.getString(3));
		 A.setEmailid(rs.getString(4));
		 A.setPassword(rs.getString(5));
		 A.setEnrollmentno(rs.getString(6));
		 A.setGender(rs.getString(7));
		 A.setMobileno(rs.getString(10));
		 A.setDob(rs.getString(8));
		 A.setAddress(rs.getString(9));
		 A.setInterest(rs.getString(11));
		 A.setOccupation(rs.getString(12));
		 A.setInstitute(rs.getString(13));
		 A.setBranch(rs.getString(14));
		
		 return(A);
		}
		return(null);
	}catch(Exception e){
		System.out.println("DisplayById "+e);
		return null;
	}}

	/*
	public static boolean EditRecord(Agency A)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="update agency set agencyname='"+A.getAgencyname()+"',ownername='"+A.getOwnername()+"',address='"+A.getAddress()+"',state='"+A.getState()+"',city='"+A.getCity()+"',contactperson='"+A.getContactperson()+"',mobileno='"+A.getMobileno()+"',phoneno='"+A.getPhoneno()+"',emailid='"+A.getEmailid()+"',status='"+A.getStatus()+"' where agencyid="+A.getAgencyid(); 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return false;
	}
	}
*/
	public static boolean DeleteRecord(String cid)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="delete from client where userid="+cid; 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("AddNewRecord "+e);
		return false;
	}
	}
/*
	public static boolean EditRegistration(Agency A)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="update agency set registrationid='"+A.getRegistrationid()+"',registrationid_proof='"+A.getRegistrationid_proof()+"' where agencyid="+A.getAgencyid(); 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("Edit Regid "+e);
		return false;
	}
	}
	public static boolean EditIdProof(Agency A)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="update agency set identity='"+A.getIdentity()+"',identity_proof='"+A.getIdentity_proof()+"' where agencyid="+A.getAgencyid(); 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("Edit Proof "+e);
		return false;
	}
	}
	public static boolean EditLogo(Agency A)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="update agency set Logo='"+A.getLogo()+"' where agencyid="+A.getAgencyid(); 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("Edit Logo "+e);
		return false;
	}
	}	*/
	public static Client CheckLogin(String id,String pwd)
	{ try
		{Connection cn=DBHelper.openConnection();
		String query="select * from client where emailid='"+id+"' and password='"+pwd+"'";
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query,cn);
		if(rs.next())
		{Client A=new Client();
		 A.setUserid(rs.getString(1));
		 A.setName(rs.getString(2));
		 A.setUsername(rs.getString(3));
		 A.setEmailid(rs.getString(4));
		 A.setPassword(rs.getString(5));
		 A.setEnrollmentno(rs.getString(6));
		 A.setGender(rs.getString(7));
		 A.setMobileno(rs.getString(10));
		 A.setDob(rs.getString(8));
		 A.setAddress(rs.getString(9));
		 A.setInterest(rs.getString(11));
		 A.setOccupation(rs.getString(12));
		 A.setInstitute(rs.getString(13));
		 A.setBranch(rs.getString(14));
		
		 return(A);}
		else {return null;}
		}catch(Exception e)
	    {System.out.println("CheckLogin"+e);
	    return null;}
		
	}


}
