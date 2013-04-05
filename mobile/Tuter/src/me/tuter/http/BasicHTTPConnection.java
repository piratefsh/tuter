package me.tuter.http;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;

import me.tuter.TuterConstants;
import android.util.Log;

public class BasicHTTPConnection {
	
	public static final String TAG = "OpenHTTPConnection";
	
	private HttpURLConnection urlConn;
	private InputStream inputStream;
	private String serviceURL;
	
	public BasicHTTPConnection(String str)
	{
		serviceURL 	= str;
		urlConn 	= null;
		inputStream = null;
	}
	
	public void closeHTTPConnection()
	{
		if(urlConn != null)
			urlConn.disconnect();
	}
	
	public int getContentLength()
	{
		return urlConn.getContentLength();
	}
	
	public InputStream openHTTPConnection()
	{
		try
		{
			URL urlToRequest 	= new URL(serviceURL);
			urlConn				= (HttpURLConnection) urlToRequest.openConnection();
			urlConn.setConnectTimeout(TuterConstants.CONN_TIMEOUT);
			urlConn.setReadTimeout(TuterConstants.READ_TIMEOUT);
			
			//handle issues
			int statusCode = urlConn.getResponseCode();
			if(statusCode != HttpURLConnection.HTTP_OK)
			{
				Log.d(TAG, "Connection error: " + statusCode);
			}
			
			//if no issues, read data
			inputStream = new BufferedInputStream(urlConn.getInputStream());
			
		}
		catch (SocketTimeoutException e)
		{
			Log.d(TAG, "Connection timeout");
			e.printStackTrace();
		}
		catch (IOException e) 
		{
			e.printStackTrace();
		}		
		return inputStream;
	}
}
