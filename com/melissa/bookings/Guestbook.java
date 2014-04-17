package com.melissa.bookings;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.naming.*;
import java.sql.*;
import javax.sql.*;
import java.io.IOException;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

    public class Guestbook {
      
        private String name, date, mail, comment, entry_date;
        
        public String getName() { 
            return name;
        }
        public void setName(String n) {
            name = n;
            System.out.println("name = " + name);
        }
        public String getDate() { 
            return date;
        }
        public void setDate(String d) {
            date = d;
        }
        public String getMail() { 
            return mail;
        }
        public void setMail(String m) {
            mail = m;
        }
        public String getComment() { 
            return comment;
        }
        public void setComment(String c) {
            comment = c;
        }
        public String getEntryDate() { 
            return entry_date;
        }
        public void setEntryDate(String e_d) {
            entry_date = e_d;
            System.out.println("entry_date = " + entry_date);
        }
        
        public void newEntry() {
            
            try {
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date today = new Date();
                String derby_entry_date = dateFormat.format(today);
                System.out.println("entry date = " + derby_entry_date);
                
                Context i = new InitialContext();
                Context e = (Context) i.lookup("java:/comp/env");
                DataSource d = (DataSource) e.lookup("jdbc/riad");
                Connection con = d.getConnection();
                
                String sql = "insert into guestbook values (?,?,?,?,?)";
                PreparedStatement pstat = con.prepareStatement(sql);
                pstat.setString(1, name);
                pstat.setString(2, date);
                pstat.setString(3, mail);
                pstat.setString(4, comment);
                pstat.setString(5, derby_entry_date);
                pstat.executeUpdate();
                pstat.close();
                con.close();
            } catch (Exception e) {
                System.out.println("exception: " + e);
            }
            
        }
        
        public void deleteEntry() {
            
            try {               
                /*Context i = new InitialContext();
                Context e = (Context) i.lookup("java:/comp/env");
                DataSource d = (DataSource) e.lookup("jdbc/riad");
                Connection con = d.getConnection();*/
                System.out.println("name = " + name);
                System.out.println("date = " + date);
                System.out.println("mail = " + mail);
                System.out.println("comment = " + comment);
                System.out.println("entry_date = " + entry_date);
                
                /*String sql = "delete from guestbook where name=?, season=?, email=?, review=?, date=?";
                PreparedStatement pstat = con.prepareStatement(sql);
                pstat.setString(1, name);
                pstat.setString(2, date);
                pstat.setString(3, mail);
                pstat.setString(4, comment);
                pstat.setString(5, entry_date);
                pstat.executeUpdate();
                pstat.close();
                con.close();*/
            } catch (Exception e) {
                System.out.println("exception: " + e);
            }
            
        }
    }
            


