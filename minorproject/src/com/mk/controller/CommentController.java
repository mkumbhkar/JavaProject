package com.mk.controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mk.model.Comment;
import com.mk.model.Post;

public class CommentController {
	
	public static boolean AddNewComment(Comment A)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="insert into comment(postid,userid,content,date,username) "
				+ "values('"+A.getPostid()+"','"+A.getUserid()+"','"+A.getContent()+"','"+A.getDate()+"','"+A.getUsername()+"')";
	System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("AddNewComment "+e);
		return false;
	}
	}
	
	public static ResultSet DisplayAllComments()
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from comment order by commentid DESC";
		ResultSet rs=DBHelper.executeQuery(query, cn);
	
		 return(rs);
		
	}catch(Exception e){
		System.out.println("DisplayAllComments "+e);
		return null;
	}}


		
	public static ResultSet DisplayCommentByPostID(String id)
	{try{
		Connection cn=DBHelper.openConnection();
		String query="select * from comment where postid="+id;
		ResultSet rs=DBHelper.executeQuery(query, cn);
		
		 return(rs);
		
	}catch(Exception e){
		System.out.println("DisplayCommentByPostID "+e);
		return null;
	}}

	
	public static boolean DeleteCommentByID(String id)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="delete from comment where commentid="+id; 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("DeleteCommentByID "+e);
		return false;
	}
	}
	
	
	
	public static boolean EditComment(Comment A)
	{
	try{
		Connection cn=DBHelper.openConnection();
		String query="update Comment set content='"+A.getContent()+
				"' where commentid="+A.getCommentid(); 
		System.out.println(query);
		boolean st=DBHelper.executeUpdate(query, cn);
		return(st);
		
		
	}catch(Exception e){
		System.out.println("EditComment "+e);
		return false;
	}
	}



}
