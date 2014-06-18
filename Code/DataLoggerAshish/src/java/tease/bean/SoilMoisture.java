/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package tease.bean;

/**
 *
 * @author nishi11
 */
import java.sql.Date;

/**
 * Student table containing bare bones student data
 */
public class SoilMoisture {
    //declaring class variables
    private  int serial_number;
    private String time_stamp;
    private float soil_moisture;

    /**
     * @return the serial_number
     */
    public int getSerial_number() {
        return serial_number;
    }

    /**
     * @param serial_number the serial_number to set
     */
    public void setSerial_number(int serial_number) {
        this.serial_number = serial_number;
    }

    /**
     * @return the time_stamp
     */
    public String getTime_stamp() {
        return time_stamp;
    }

    /**
     * @param time_stamp the time_stamp to set
     */
    public void setTime_stamp(String time_stamp) {
        this.time_stamp = time_stamp;
    }

    /**
     * @return the soil_moisture
     */
    public float getSoil_moisture() {
        return soil_moisture;
    }

    /**
     * @param soil_moisture the soil_moisture to set
     */
    public void setSoil_moisture(float soil_moisture) {
        this.soil_moisture = soil_moisture;
    }

}