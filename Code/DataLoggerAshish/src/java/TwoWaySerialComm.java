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

public class TwoWaySerialComm
{
    public TwoWaySerialComm()
    {
        super();
    }
    
    void connect ( String portName ) throws Exception
    {
        CommPortIdentifier portIdentifier = CommPortIdentifier.getPortIdentifier(portName);
        if ( portIdentifier.isCurrentlyOwned() )
        {
            System.out.println("Error: Port is currently in use");
        }
        else
        {
            CommPort commPort = portIdentifier.open(this.getClass().getName(),2000);
            
            if ( commPort instanceof SerialPort )
            {
                SerialPort serialPort = (SerialPort) commPort;
                serialPort.setSerialPortParams(9600,SerialPort.DATABITS_8,SerialPort.STOPBITS_1,SerialPort.PARITY_NONE);
                
                InputStream in = serialPort.getInputStream();
                OutputStream out = serialPort.getOutputStream();
                
                (new Thread(new SerialReader(in))).start();
                //(new Thread(new SerialWriter(out))).start();

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
        InputStream in;
        
        public SerialReader ( InputStream in )
        {
            this.in = in;
        }
        
        
        public void run ()
        {
            byte[] buffer = new byte[1024];
            int len = -1;
            
            try
            {
                File file = new File("filename1.txt");
                if (!file.exists()) {
				file.createNewFile();
			}
                FileWriter fw = new FileWriter(file.getAbsoluteFile(),true);
                BufferedWriter bw = new BufferedWriter(fw);
                String temp = "";
                int count = 0;
                int incr = 0;
                float temperature = 0;
                float pressure = 0;
                float humidity = 0;
                float luminosity = 0;
                String cvsSplitBy = "@";
                while ( ( len = this.in.read(buffer)) > -1 )
                {
                    String result = new String(buffer,0,len,"UTF-8");
                    if(result.equalsIgnoreCase("$") && !temp.equalsIgnoreCase("")){
                    //System.out.print("hello");
                        System.out.print(temp);
                    String[] line = temp.split(cvsSplitBy);
                    temp = "";
                    pressure += Float.parseFloat(line[1]);
                    luminosity += Float.parseFloat(line[2]);
                    temperature += Float.parseFloat(line[3]); 
                    humidity += Float.parseFloat(line[4]);
                    incr++;
                    if(incr == 10)
                    {
                        pressure = (float) pressure/ (float) 10;
                        luminosity = (float) luminosity/ (float) 10;
                        temperature = (float) temperature/ (float) 10;
                        humidity = (float) humidity/ (float) 10;
                        System.out.print("Average...........................");
                        System.out.print(pressure + "\n");
                        System.out.print(luminosity + "\n");
                        System.out.print(temperature + "\n");
                        System.out.print(humidity + "\n");
                         temperature = 0;
                         pressure = 0;
                         humidity = 0;
                         luminosity = 0;
                         incr = 0;
                    }
                    }
                    temp += result;
                    //bw.write(result);
                    /*String[] line = result.split(cvsSplitBy);
                    pressure += Float.parseFloat(line[1]);
                    luminosity += Float.parseFloat(line[1]);
                    temperature += Float.parseFloat(line[1]); 
                    humidity += Float.parseFloat(line[1]);
                    incr++;
                    if(incr == 60)
                    {
                        pressure = (float) pressure/ (float) 60;
                        luminosity = (float) luminosity/ (float) 60;
                        temperature = (float) temperature/ (float) 60;
                        humidity = (float) humidity/ (float) 60;
                        System.out.print(pressure);
                        System.out.print(luminosity);
                        System.out.print(temperature);
                        System.out.print(humidity);
                         temperature = 0;
                         pressure = 0;
                         humidity = 0;
                         luminosity = 0;
                         incr = 0;
                    }*/
                    //System.out.print(result);
                    //System.out.println();
                    count++;
                    if(count == 10000) break;
                }
                bw.close(); 
                // read data
               /* int numBytes = this.in.read(buffer);           
                //send the received data to the GUI
                String result = new String(buffer,0,numBytes);
                System.out.println(result);*/
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
            (new TwoWaySerialComm()).connect("COM12");
        }
        catch ( Exception e )
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}