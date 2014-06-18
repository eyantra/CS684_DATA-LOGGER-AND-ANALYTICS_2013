/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package tease.dao;

/**
 *
 * @author nishi11
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import tease.bean.Student;
import java.sql.SQLException;
import tease.helper.DBConnection;
import java.util.Calendar;
import java.sql.*;
import tease.bean.SoilMoisture;
//import java.util.*;

/**
 * Student table containing bare bones student data
 */
public class SoilMoistureDAO {
    //declaring class variables
    private Connection con;
    private ResultSet res;
    private PreparedStatement pstmt;
    private Statement stmt;
    int i;
    int noOfRows;
    public SoilMoistureDAO() {
        i=0;
        con = DBConnection.getConnection();
    }

    /** shows the details of all rows one by one from a Student table
     *
     *@return Student - an object of Student class
     */

     public SoilMoisture getBasicSoilMoisture() {
         SoilMoisture soilMoisture = null;
        
         if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select serial_no, time_stamp, soil_moisture from data_table" ;
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    soilMoisture = new SoilMoisture();
                    soilMoisture.setSerial_number(res.getInt("serial_no"));
                    soilMoisture.setTime_stamp(res.getString("time_stamp"));
                }
                return soilMoisture;
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return soilMoisture;
    }

    /** Show the details of student based on student id
     *
     * @param idStudent  unique id of the student
     *
     * @return Student - an object of student class.
     */
    public Student getStudentByIdStudent(int idStudent) {
        Student student = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
            try {
                String query = "select firstName,lastName,rollNumber,birthDate,gender,email,mobile from student where idStudent=?";
                //create a statement
                pstmt = con.prepareStatement(query);
                //set input parameter
                pstmt.setInt(1, idStudent);
                res = pstmt.executeQuery();
                //extract data from the ResultSet
                if(res.next()) {
                    student = new Student();
                    student.setIdStudent(idStudent);
                    student.setFirstName(res.getString("firstName"));
                    student.setLastName(res.getString("lastName"));
                    student.setRollNumber(res.getString("rollNumber"));
                    student.setBirthDate(res.getDate("birthDate"));
                    student.setGender(res.getString("gender").charAt(0));
                    student.setEmail(res.getString("email"));
                    student.setMobile(res.getLong("mobile"));
                }
            }catch(SQLException sqle) {
                sqle.printStackTrace();
            }finally {
                //It's important to close the connectionlist when you are done with it
                DBConnection.closeStatementSet(pstmt);
                DBConnection.closeResultSet(res);
                DBConnection.closeConnection(con);
            }
        }
        return student;
    }

    /** shows the details of the student based on the parameter passed
     *
     * @param idStudent unique id of student
     * @param firstName the first name of student
     * @param lastName the last name of student
     * @param rollNumber the roll number of student
     * @param birthDate the date of birth of student
     * @param gender the gender of student
     * @param email the email id of student
     * @param mobile the mobile number of student
     *
     * @return Student[] - an array of Student object
     */
    public Student[] getStudentByParameter(Integer idStudent, String firstName, String lastName,String rollNumber, Date birthDate, char gender, String email, long mobile) {
        Student[] student = null;
        boolean IsIdStudent = false;
        boolean IsFirstName = false;
        boolean IsLastName = false;
        boolean IsRollNumber = false;
        boolean IsBirthDate = false;
        boolean IsGender = false;
        boolean IsEmail = false;
        boolean IsMobile = false;
        boolean flag = false;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
            try {
        String query = "select * from student where";
        if(idStudent != null) {
            IsIdStudent = true;
            flag = true;
            query += " idStudent ='" +idStudent+"'";
        }
        if(firstName != null) {
            IsFirstName = true;
            if(flag == true) {
            query += " or firstName='" +firstName+"'";
            }
            else {
                        query +=" firstName='" +firstName+"'";
                        flag = true;
                    }
        }
        if(lastName != null) {
            IsLastName = true;
            if(flag == true) {
            query += " or lastName='" +lastName+"'";
            }
            else {
                        query +=" lastName='" +lastName+"'";
                        flag = true;
                    }
        }
        if(rollNumber != null) {
            IsRollNumber = true;
            if(flag == true) {
            query += " or rollNumber='" +rollNumber+"'";
            }
            else {
                        query +=" rollNumber='" +rollNumber+"'";
                        flag = true;
                    }
        }
        if(birthDate != null) {
            IsBirthDate = true;
            if(flag == true) {
            query += " or birthDate='" +birthDate+"'";
            }
            else {
                        query +=" birthDate='" +birthDate+"'";
                        flag = true;
                    }
        }
        
        if(gender != '\u0000') {
            IsGender = true;
            if(flag == true) {
            query += "or gender ='" +gender+"'";
            }
            else {
                        query +=" gender='" +gender+"'";
                        flag = true;
                    }
            
        }
        if(email != null) {
            IsEmail = true;
            if(flag == true) {
            query += " or email='" +email+"'";
            }
            else {
                        query +=" email='" +email+"'";
                        flag = true;
                    }
        }
        if(mobile >0l) {
            IsMobile = true;
            if(flag == true) {
            query += " or mobile=" +mobile;
            }
            else {
                        query +=" mobile=" +mobile;
                        flag = true;
                    }
        }
        pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                res.last();
                int n= res.getRow();
                if(n >0)
                {
                res.beforeFirst();
                query +=";";
                System.out.println(query);
                int j=0;
                student = new Student[n];
                while(res.next()) {
                    student[j] = new Student();
                    student[j].setIdStudent(res.getInt("idStudent"));
                    student[j].setFirstName(res.getString("firstName"));
                    student[j].setLastName(res.getString("lastName"));
                    student[j].setRollNumber(res.getString("rollNumber"));
                    student[j].setBirthDate(res.getDate("birthDate"));
                    student[j].setGender(res.getString("gender").charAt(0));
                    student[j].setEmail(res.getString("email"));
                    student[j].setMobile(res.getLong("mobile"));
                    j++;
                }
                return student;
                }
                return null;
           } catch (SQLException sqle) {
                sqle.printStackTrace();
            } finally {
                //It's important to close the connection when you are done with it
                DBConnection.closeStatementSet(pstmt);
                DBConnection.closeResultSet(res);
                DBConnection.closeConnection(con);
            }
        }
      return null;
    }
 
}