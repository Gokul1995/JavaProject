
package com.ecom.daoImpl;



import info.ecom.dao.UserDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class UserDaoImpl implements UserDao {
   public DbConnection connect=new DbConnection();
   Connection con;
    public User verifyUser(User user){
        try {
            Connection con = connect.getConnection();
            String qry = "select * from user where email=? and pass=?";
            PreparedStatement pst = con.prepareStatement(qry);
            pst.setString(1, user.getUserName());
            pst.setString(2, user.getUserPassword());
            
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                User verifiedUser = new User();
                verifiedUser.setUserId(rs.getInt("id"));
                System.out.println("LEVEL"+rs.getInt("level"));
                verifiedUser.setUserName(rs.getString("name"));
                verifiedUser.setUserPassword(rs.getString("pass"));
                verifiedUser.setEmail(rs.getString("email"));
                verifiedUser.setUserLevel(rs.getInt("level"));
                verifiedUser.setUserId(rs.getInt("id"));
                return verifiedUser;
                
            }
            
        } catch (SQLException e) {
        }
    return null;
    
    }
    public void registerUser(User user){
        try {
            System.out.println("register user called");
            System.out.println(user.getUserName());
            System.out.println(user.getUserPassword());
            System.out.println(user.getEmail());
            
             con = connect.getConnection();
        	
             
              
                String qry = "insert into user(name,email,pass,level,address,phone) values(?,?,?,?,?,?)";
                
                PreparedStatement pst = con.prepareStatement(qry);
                System.out.println("registring User");
                int k=0;
                pst.setString(1,user.getUserName());
                pst.setString(2,user.getEmail());
                pst.setString(3, user.getUserPassword());
                pst.setInt(4,k);
                pst.setString(5,user.getAddress());
                pst.setString(6, user.getPhone());
                
                
                pst.executeUpdate();
            
         
        } catch (Exception e) {
        	System.out.println("Connection"+con);
             System.out.println("user register error"+e);
        }
    
    }
     public List<User> getUserList(){
        try {
            Connection con = connect.getConnection();
            String qry = "select * from user where level=0";
             PreparedStatement pst = con.prepareStatement(qry);
            ResultSet rs = pst.executeQuery();
            List<User> userList = new ArrayList();
            while(rs.next()){
            User user = new User();
            user.setUserId(rs.getInt("id"));
            user.setUserName(rs.getString("name"));     
            user.setUserPassword(rs.getString("pass"));
            user.setEmail(rs.getString("email"));
            user.setAddress(rs.getString("address"));
            user.setPhone("phone");
            
            
            userList.add(user);
            }
            return userList;
        } catch (SQLException e) {
        }
    return null;
    }
     public void deleteUser(int id){
         try {
             Connection con = connect.getConnection();
                 String qry = "delete from users where id=?";
                 PreparedStatement pst = con.prepareStatement(qry);
                 
                 pst.setInt(1, id);
                 pst.execute();
             
         } catch (Exception e) {
         System.out.println("Delete User error"+e);
        }
     
     }
     public void promote(int id){
         try {
             Connection con = connect.getConnection(); 
                 String qry = "update users set level=1 where id=?";
                 PreparedStatement pst = con.prepareStatement(qry);
                 
                 pst.setInt(1, id);
                 pst.executeUpdate();
             
         } catch (Exception e) {
             System.out.println("Promote Error"+e);
         }
     }
     public void demote(int id){
         try {
            Connection con = connect.getConnection();
                 String qry = "update users set level=0 where id=?";
                 PreparedStatement pst = con.prepareStatement(qry);
                 
                 pst.setInt(1, id);
                 pst.executeUpdate();
             
         } catch (Exception e) {
             System.out.println("Demote error"+e);
         }
     }
	
	}
    

