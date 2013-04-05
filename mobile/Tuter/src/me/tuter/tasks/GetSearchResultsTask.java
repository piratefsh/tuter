package me.tuter.tasks;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Scanner;

import me.tuter.TuterConstants;
import me.tuter.http.BasicHTTPConnection;
import me.tuter.interfaces.GetSearchResultsTaskActivity;
import me.tuter.messages.GetSearchResultsMessage;
import me.tutor.datastructures.Tutor;
import android.content.Context;
import android.os.AsyncTask;

public class GetSearchResultsTask extends AsyncTask<Void, Void, GetSearchResultsMessage> {
	private GetSearchResultsTaskActivity mActivity;
	private Context mContext;
	
	public GetSearchResultsTask(GetSearchResultsTaskActivity a, Context c)
	{
		mActivity = a;
		mContext = c;
	}
	
	@Override
	protected GetSearchResultsMessage doInBackground(Void... params) {
		
		return requestWebService(TuterConstants.DOMAIN + TuterConstants.URI_SEARCH);
	}
	
	@Override
	protected void onPostExecute(GetSearchResultsMessage m)
	{
		mActivity.onGetSearchResultsTaskComplete(new ArrayList<Tutor>());
	}
	
	public GetSearchResultsMessage requestWebService(String serviceURL)
	{
		BasicHTTPConnection httpConn = new BasicHTTPConnection(serviceURL);
		InputStream in = httpConn.openHTTPConnection();
		String rawJSON = getResponseText(in);
		
		httpConn.closeHTTPConnection();
		return new GetSearchResultsMessage(rawJSON, mContext);
	}
	
	private static String getResponseText(InputStream instream)
	{
		return new Scanner(instream).useDelimiter("\\A").next();
	}

}
