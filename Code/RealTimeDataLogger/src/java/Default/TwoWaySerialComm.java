package Default;

import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;

import java.awt.Color;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;
import tease.helper.DBConnection;

public class TwoWaySerialComm
{
    public TwoWaySerialComm()
    {
        super();
    }
    
    void connect ( String portName1, String portName2 ) throws Exception
    {
        CommPortIdentifier portIdentifier1 = CommPortIdentifier.getPortIdentifier(portName1);
        CommPortIdentifier portIdentifier2 = CommPortIdentifier.getPortIdentifier(portName2);
        
        if ( portIdentifier1.isCurrentlyOwned() || portIdentifier2.isCurrentlyOwned() )
        {
            System.out.println("Error: Port is currently in use");
        }
        else
        {
            CommPort commPort1 = portIdentifier1.open(this.getClass().getName(),2000);
            CommPort commPort2 = portIdentifier2.open(this.getClass().getName(),2000);
            
            if ( commPort1 instanceof SerialPort && commPort2 instanceof SerialPort)
            {
                SerialPort serialPort1 = (SerialPort) commPort1;
                SerialPort serialPort2 = (SerialPort) commPort2;
                serialPort1.setSerialPortParams(9600,SerialPort.DATABITS_8,SerialPort.STOPBITS_1,SerialPort.PARITY_NONE);
                serialPort2.setSerialPortParams(9600,SerialPort.DATABITS_8,SerialPort.STOPBITS_1,SerialPort.PARITY_NONE);

                InputStream in1 = serialPort1.getInputStream();
                InputStream in2 = serialPort2.getInputStream();
                //OutputStream out = serialPort.getOutputStream();
                
                (new Thread(new SerialReader(in1,in2))).start();

            }
            else
            {
                System.out.println("Error: Only serial ports are handled by this example.");
            }
        }     
    }
    
    /** */
    public static class SerialReader implements Runnable 
    {
        InputStream in1;
        InputStream in2;
        
        public SerialReader ( InputStream in1, InputStream in2 )
        {
            this.in1 = in1;
            this.in2 = in2;
        }
        
        
        public void run ()
        {
            byte[] buffer1 = new byte[1024];
            byte[] buffer2 = new byte[1024];
            int len = -1;
            int len2 = -1;
            int file_no = 1;
            int graph_no = 1;
            int graph_count = 1;
            DefaultCategoryDataset dataset_temperature;
            DefaultCategoryDataset dataset_pressure;
            DefaultCategoryDataset dataset_humidity;
            DefaultCategoryDataset dataset_luminosity;
            Connection con = null;
            con = DBConnection.getConnection();
            PreparedStatement preparedStatement = null;
            //this is original code till catch(only the try part)
            try
            {
                String file_name = "filename" + file_no;
                String dataset_name = "dataset" + graph_no;
                dataset_temperature = new DefaultCategoryDataset();
                dataset_pressure = new DefaultCategoryDataset();
                dataset_humidity = new DefaultCategoryDataset();
                dataset_luminosity = new DefaultCategoryDataset();
                File file = new File(file_name);
                if (!file.exists()) {
				file.createNewFile();
			}
                FileWriter fw = new FileWriter(file.getAbsoluteFile(),true);
                BufferedWriter bw = new BufferedWriter(fw);
                String temp = "";
                String temp1 = "";
                int count = 0;
                int incr = 0;
                float temperature = 0;
                float pressure = 0;
                float humidity = 0;
                float luminosity = 0;
                String cvsSplitBy = "@";
                String cvsSplitBy1 = "$";
                while ( ( len = this.in1.read(buffer1)) > -1 && ( len2 = this.in2.read(buffer2)) > -1)
                {
                    String result1 = new String(buffer1,0,len,"UTF-8");
                    String result2 = new String(buffer2,0,len2,"UTF-8");
                    if(count == 1000) {
            
            JFreeChart chart_temperature = ChartFactory.createLineChart(
            "Temperature - Past 30 Seconds",
            "Seconds",
            "Temperature",
            dataset_temperature,
            PlotOrientation.VERTICAL,
            false,
            false,
            false);
        chart_temperature.setBackgroundPaint(Color.white);
        CategoryPlot plot_temperature = (CategoryPlot) chart_temperature.getPlot();
        plot_temperature.setBackgroundPaint(Color.white);
        plot_temperature.setRangeGridlinePaint(Color.black);
        ValueAxis range_temperature = plot_temperature.getRangeAxis();
        range_temperature.setRange(30, 35);
        //ChartUtilities.saveChartAsJPEG(new File("graph_temperature" + file_no + ".jpg"), chart_temperature, 2400, 800); 
        ChartUtilities.saveChartAsJPEG(new File("graph_temperature.jpg"), chart_temperature, 2400, 800); 
        
        JFreeChart chart_pressure = ChartFactory.createLineChart(
            "Pressure - Past 30 Seconds",
            "Seconds",
            "Pressure",
            dataset_pressure,
            PlotOrientation.VERTICAL,
            false,
            false,
            false);
        chart_pressure.setBackgroundPaint(Color.white);
        CategoryPlot plot_pressure = (CategoryPlot) chart_pressure.getPlot();
        plot_pressure.setBackgroundPaint(Color.white);
        plot_pressure.setRangeGridlinePaint(Color.black);
        ValueAxis range_pressure = plot_pressure.getRangeAxis();
        range_pressure.setRange(14300.0, 14400.0);
        //ChartUtilities.saveChartAsJPEG(new File("graph_pressure" + file_no + ".jpg"), chart_pressure, 2400, 800); 
        ChartUtilities.saveChartAsJPEG(new File("graph_pressure.jpg"), chart_pressure, 2400, 800); 
        
        JFreeChart chart_humidity = ChartFactory.createLineChart(
            "Humidity - Past 30 Seconds",
            "Seconds",
            "Humidity",
            dataset_humidity,
            PlotOrientation.VERTICAL,
            false,
            false,
            false);
        chart_humidity.setBackgroundPaint(Color.white);
        CategoryPlot plot_humidity = (CategoryPlot) chart_humidity.getPlot();
        plot_humidity.setBackgroundPaint(Color.white);
        plot_humidity.setRangeGridlinePaint(Color.black);
        ValueAxis range_humidity = plot_humidity.getRangeAxis();
        range_humidity.setRange(49, 54);
        //ChartUtilities.saveChartAsJPEG(new File("graph_humidity" + file_no + ".jpg"), chart_humidity, 2400, 800); 
        ChartUtilities.saveChartAsJPEG(new File("graph_humidity.jpg"), chart_humidity, 2400, 800); 
        
        JFreeChart chart_luminosity = ChartFactory.createLineChart(
            "Luminosity - Past 30 Seconds",
            "Seconds",
            "Luminosity",
            dataset_luminosity,
            PlotOrientation.VERTICAL,
            false,
            false,
            false);
        chart_luminosity.setBackgroundPaint(Color.white);
        CategoryPlot plot_luminosity = (CategoryPlot) chart_luminosity.getPlot();
        plot_luminosity.setBackgroundPaint(Color.white);
        plot_luminosity.setRangeGridlinePaint(Color.black);
        ValueAxis range_luminosity = plot_luminosity.getRangeAxis();
        range_luminosity.setRange(3600, 3900);
        //ChartUtilities.saveChartAsJPEG(new File("graph_luminosity" + file_no + ".jpg"), chart_luminosity, 2400, 800); 
       ChartUtilities.saveChartAsJPEG(new File("graph_luminosity.jpg"), chart_luminosity, 2400, 800); 
       
        dataset_temperature.clear();
        dataset_pressure.clear();
        dataset_humidity.clear();
        dataset_luminosity.clear();
        
                        bw.close(); 
                        count = 0;
                        file_no++;
                        file_name = "filename" + file_no;
                        file = new File(file_name);
                         if (!file.exists()) {
				file.createNewFile();
			}
                        fw = new FileWriter(file.getAbsoluteFile(),true);
                        bw = new BufferedWriter(fw);
                    }
                    
                    if(result1.equalsIgnoreCase("$") && !temp.equalsIgnoreCase("")){
                    //System.out.print(temp);
                    //System.out.print(temp1);
                    String[] line = temp.split(cvsSplitBy);
                    String[] line1 = temp1.split(cvsSplitBy1);
                    //System.out.print(line1[0]);
                    //System.out.print("hello");
                    temp = "";
                    temp1= "";
                    pressure += Float.parseFloat(line[1]);
                    luminosity += Float.parseFloat(line[2]);
                    temperature += Float.parseFloat(line[3]); 
                    humidity += Float.parseFloat(line[4]);
                    incr++;
                    if(incr == 1)
                    {
                        pressure = (float) pressure/ (float) 1;
                        //luminosity = (float) luminosity/ (float) 1;
                        temperature = (float) temperature/ (float) 1;
                        humidity = (float) humidity/ (float) 1;
                        String for_luminosity = line1[0];
                        //System.out.print("1:" + for_luminosity + "\n");
                        for_luminosity = for_luminosity.substring(2, 6);
                        //System.out.print("4:" + for_luminosity + "\n");
                        luminosity = Float.parseFloat(for_luminosity);
                        //System.out.print("4:" + for_luminosity.length() + "\n");
                        /*if(for_luminosity.length() == 5)
                        {
                            String for_luminosity1 = for_luminosity.substring(1, for_luminosity.length()-1);
                        System.out.print("2:" + for_luminosity1 + "\n");
                        } 
                        if(for_luminosity.length() == 6)
                        {
                            String for_luminosity1 = for_luminosity.substring(2, for_luminosity.length()-1);
                         System.out.print("3:" + for_luminosity1 + "\n");
                        }*/
                        //System.out.print("Average...........................");
                        //System.out.print(pressure + "\n");
                        //System.out.print(luminosity + "\n");
                        //System.out.print(temperature + "\n");
                        //System.out.print(humidity + "\n");
                        dataset_pressure.addValue(pressure, "Pressure", "i" + graph_count);
                        dataset_luminosity.addValue(luminosity, "Luminosity", "i" + graph_count);
                        dataset_temperature.addValue(temperature, "Temperature", "i" + graph_count);
                        dataset_humidity.addValue(humidity, "Humidity", "i" + graph_count);        
                         if(DBConnection.isClosed(con))
                            con = DBConnection.getConnection();
                         String insertIntoTable = "INSERT INTO data_table"
				+ "(temperature, humidity, pressure, luminosity) VALUES"
				+ "(?,?,?,?)";
                        preparedStatement = con.prepareStatement(insertIntoTable);
                        preparedStatement.setFloat(1, temperature);
			preparedStatement.setFloat(2, humidity);
			preparedStatement.setFloat(3, pressure);
			preparedStatement.setFloat(4,luminosity);
 			preparedStatement.executeUpdate();
                        System.out.println(pressure + " " + luminosity + " " + temperature + " " + humidity + "\n");
                        bw.write(pressure + " " + luminosity + " " + temperature + " " + humidity);
                        bw.newLine();
                         temperature = 0;
                         pressure = 0;
                         humidity = 0;
                         luminosity = 0;
                         incr = 0;
                         graph_count++;
                    }
                    }
                    temp += result1;
                    temp1 += result2;
                    //temp1 = temp1 + " " + result2;
                    count++;
                    //bw.write(result);
                    //System.out.print(result);
                    //System.out.println();
                    //count++;
                    //if(count == 9375) break;
                }
                //bw.close(); 
                // read data
               /* int numBytes = this.in.read(buffer);           
                //send the received data to the GUI
                String result = new String(buffer,0,numBytes);
                System.out.println(result);*/
            } catch (SQLException ex) {
                Logger.getLogger(TwoWaySerialComm.class.getName()).log(Level.SEVERE, null, ex);
            }
            catch ( IOException e )
            {
                e.printStackTrace();
            }            
        }
    }

    /** */
   /* public static class SerialWriter implements Runnable 
    {
        OutputStream out;
        
        public SerialWriter ( OutputStream out )
        {
            this.out = out;
        }
        
        public void run ()
        {
            try
            {                
                int c = 0;
                while ( ( c = System.in.read()) > -1 )
                {
                    this.out.write(c);
                }                
            }
            catch ( IOException e )
            {
                e.printStackTrace();
            }            
        }
    }*/
    
    public static void main ( String[] args )
    {
        try
        {
            (new TwoWaySerialComm()).connect("COM9","COM7");
            //(new TwoWaySerialComm()).connect("COM13");
        }
        catch ( Exception e )
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}