package com.mk.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mk.model.Client;
import com.mk.model.Post;

public class PostController {
	
	public static boolean AddNewPost(Post A)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="insert into post(userid,posttitle,date,privacy,department,content,countlike,countdislike,username) "
				+ "values('"+A.getUserid()+"','"+A.getPosttitle()+"','"+A.getDate()+"','"+A.getPrivacy()+"','"+A.getDepartment()+"','"+A.getContent()+"','"+A.getCountlike()+"','"+A.getCountdislike()+"','"+A.getUsername()+"')";
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("AddNewPost "+e);
		return false;
	}
	}
	
	public static ResultSet DisplayAll()
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from post ORDER BY postid DESC";
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("DisplayAll "+e);
		return null;
	}}
	
	public static ResultSet DisplayAllPost()
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from post where privacy='Public' ORDER BY postid DESC";
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query, cn);
		return(rs);
		
		
	}catch(Exception e){
		System.out.println("DisplayAllPost "+e);
		return null;
	}}
	public static ResultSet DisplayPostByUserID(String id)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from post where userid="+id+" ORDER BY postid DESC";
		ResultSet rs=DBHelper.executeQuery(query, cn);
		
		 return(rs);
		
	}catch(Exception e){
		System.out.println("DisplayPostByUserId "+e);
		return null;
	}}
	
		
	public static Post DisplayPostByPostID(String id)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from post where postid="+id;
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query, cn);
		if(rs.next())
		{Post A=new Post();
		 A.setPostid(rs.getString(1));
		 A.setUserid(rs.getString(2));
		 A.setPosttitle(rs.getString(3));
		 A.setDate(rs.getString(4));
		 A.setPrivacy(rs.getString(5));
		 A.setDepartment(rs.getString(6));
		 A.setContent(rs.getString(7));
		 A.setCountlike(rs.getString(8));
		 A.setCountdislike(rs.getString(9));
		 A.setUsername(rs.getString(10));
		
		 return(A);
		}
		return(null);
	}catch(Exception e){
		System.out.println("DisplayPostByPostId "+e);
		return null;
	}}
	
	public static ResultSet DisplayPostByDepartment(String departmnt)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from post where department='"+departmnt+"' ORDER BY postid DESC";
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query, cn);
		
		 return(rs);
		
		
	}catch(Exception e){
		System.out.println("DisplayPostByDepartment "+e);
		return null;
	}}
	
	public static ResultSet DisplayPrivatePostByDepartment(String departmnt)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from post where privacy='Private' and department='"+departmnt+"' ORDER BY postid DESC";
		System.out.println(query);
		ResultSet rs=DBHelper.executeQuery(query, cn);
		
		 return(rs);
		
		
	}catch(Exception e){
		System.out.println("DisplayPostByDepartment "+e);
		return null;
	}}
	
	public static boolean DeletePostByPostID(String id)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="delete from post where postid="+id; 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("DeletePostByPostID "+e);
		return false;
	}
	}
	
	public static boolean DeletePostByUserID(int id)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="delete from post where userid="+id; 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("DeletePostByUserID "+e);
		return false;
	}
	}
	
	public static boolean EditPost(Post A)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="update post set posttitle='"+A.getPosttitle()+"',privacy='"+A.getPrivacy()+"',department='"+A.getDepartment()+"',content='"+A.getContent()+
				"' where postid="+A.getPostid(); 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("EditPost "+e);
		return false;
	}
	}


}
