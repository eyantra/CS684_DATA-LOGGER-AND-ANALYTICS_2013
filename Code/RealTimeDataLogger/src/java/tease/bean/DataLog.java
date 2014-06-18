/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package tease.bean;

/**
 *
 * @author Lucky
 */
public class DataLog {
    private int serial_no;
    private String time_stamp;
    private float temperature;
    private float humidity;
    private float pressure;
    private float luminosity;
    //private int n=serial_no; 
    private float temperature1;
    private float humidity1;
    private float pressure1;
    private float luminosity1;
    /**
     * @return the serial_no
     */
    public int getSerial_no() {
        return serial_no;
    }

    /**
     * @param serial_no the serial_no to set
     */
    public void setSerial_no(int serial_no) {
        this.serial_no = serial_no;
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
     * @return the temperature
     */
    public float getTemperature() {
        return temperature;
    }

    /**
     * @param temperature the temperature to set
     */
    public void setTemperature(float temperature) {
        temperature1 =temperature;
        this.temperature = temperature;
        
    }

    /**
     * @return the humidity
     */
    public float getHumidity() {
        return humidity;
    }

    /**
     * @param humidity the humidity to set
     */
    public void setHumidity(float humidity) {
        this.humidity = humidity;
    }

    /**
     * @return the pressure
     */
    public float getPressure() {
        return pressure;
    }

    /**
     * @param pressure the pressure to set
     */
    public void setPressure(float pressure) {
        this.pressure = pressure;
    }

    /**
     * @return the luminosity
     */
    public float getLuminosity() {
        return luminosity;
    }

    /**
     * @param luminosity the luminosity to set
     */
    public void setLuminosity(float luminosity) {
        this.luminosity = luminosity;
    }
    
    public float getCurrentLuminosity() {

        return luminosity1;
    }
    
    public float getCurrentTemperature() {

        return temperature1;
    }     
    public float getCurrentPressure() {

        return pressure1;
    }
    
    public float getCurrentHumidity() {

        return humidity1;
    }        
}
