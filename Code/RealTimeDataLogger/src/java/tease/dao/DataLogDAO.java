/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tease.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
//import tease.bean.Student;
import java.sql.SQLException;
import tease.helper.DBConnection;
import java.util.Calendar;
import java.sql.*;
import tease.bean.DataLog;
/**
 *
 * @author Lucky
 */
public class DataLogDAO {

    private Connection con;
    private ResultSet res;
    private PreparedStatement pstmt;
    private Statement stmt;
    int i;
    int noOfRows;
    public DataLogDAO() {
        i=0;
       // noOfRows = count();
        con = DBConnection.getConnection();
    }
    
    public DataLog getDataLog() {
         DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select * from data_logger.data_table order by serial_no limit "+i+","+ (i+1) ;
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(res.getInt(1));
                    datalog.setPressure(res.getFloat(16));
                }
                return datalog;
        
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return datalog;
    }
    
    public DataLog getDataLogTemperature() {
         DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select * from data_logger.data_table order by serial_no limit "+i+","+ (i+1);
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(res.getInt(1));
                    datalog.setSerial_no(res.getInt("serial_no"));
                    datalog.setTime_stamp(res.getString("time_stamp"));
                    datalog.setTemperature(res.getFloat("temperature"));
                    //datalog.setHumidity(res.getFloat("relative_humidity"));
                    //datalog.setPressure(res.getFloat("barometric_pressure"));
                    //datalog.setLuminosity(res.getFloat("solar_radiation"));
                }
                return datalog;
        
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return datalog;
    }
     
    public DataLog getDataLogHumidity() {
         DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select * from data_logger.data_table order by serial_no desc limit 20";
                 //con = DBConnection.getConnection();
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(res.getInt(1));
                    datalog.setSerial_no(res.getInt("serial_no"));
                    datalog.setTime_stamp(res.getString("time_stamp"));
                    datalog.setHumidity(res.getFloat("humidity"));
                    datalog.setTemperature(res.getFloat("temperature"));
                    datalog.setPressure(res.getFloat("pressure"));
                    datalog.setLuminosity(res.getFloat("luminosity"));
                }
                return datalog;
        
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return datalog;
    }
    
    public DataLog getDataLogPressure() {
         DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select * from data_logger.data_table order by serial_no limit "+i+","+ (i+1);
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(res.getInt(1));
                    datalog.setSerial_no(res.getInt("serial_no"));
                    datalog.setTime_stamp(res.getString("time_stamp"));
                    datalog.setPressure(res.getFloat("pressure"));
                    //datalog.setTemperature(res.getFloat("temperature"));
                    //datalog.setHumidity(res.getFloat("relative_humidity"));
                    //datalog.setLuminosity(res.getFloat("solar_radiation"));
                }
                return datalog;
        
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return datalog;
    }
         
	public DataLog getDataLogLuminosity() {
         DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select * from data_logger.data_table order by serial_no limit "+i+","+ (i+1);
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(res.getInt(1));
                    datalog.setSerial_no(res.getInt("serial_no"));
                    datalog.setTime_stamp(res.getString("time_stamp"));
                    datalog.setLuminosity(res.getFloat("luminosity"));
                    //datalog.setTemperature(res.getFloat("temperature"));
                    //datalog.setHumidity(res.getFloat("relative_humidity"));
                    //datalog.setPressure(res.getFloat("barometric_pressure"));
                    
                }
                return datalog;
        
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return datalog;
    }
    
    public DataLog getDataLogTimestamp() {
         DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
                 try {
                 String query = "select * from data_logger.data_table order by serial_no limit "+i+","+ (i+1);
                //create a statement
                i++;
                pstmt = con.prepareStatement(query);
                res = pstmt.executeQuery();
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(res.getInt(1));
                    datalog.setSerial_no(res.getInt("serial_no"));
                    datalog.setTime_stamp(res.getString("time_stamp"));
                    datalog.setTemperature(res.getFloat("temperature"));
                    //datalog.setHumidity(res.getFloat("relative_humidity"));
                    //datalog.setPressure(res.getFloat("barometric_pressure"));
                    //datalog.setLuminosity(res.getFloat("solar_radiation"));
                }
                return datalog;
        
             }catch (SQLException sqle) {
                sqle.printStackTrace();
              }
        }
      return datalog;
    }

        public DataLog getDataLogById(int idStudent) {
        DataLog datalog = null;
        if(DBConnection.isClosed(con))
            con = DBConnection.getConnection();
         if(!DBConnection.isClosed(con)) {
            try {
                String query = "select barometric_pressure from data_table where idStudent=?";
                //create a statement
                pstmt = con.prepareStatement(query);
                //set input parameter
                pstmt.setInt(1, idStudent);
                res = pstmt.executeQuery();
                //extract data from the ResultSet
                if(res.next()) {
                    datalog = new DataLog();
                    //datalog.setId(idStudent);
                    datalog.setPressure(res.getFloat(16));
                    
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
        return datalog;
    }

}
