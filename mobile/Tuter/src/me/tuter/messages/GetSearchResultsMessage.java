package me.tuter.messages;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.util.Log;

public class GetSearchResultsMessage {
	public final String TAG = "GetSearchResultsMessage";
	
	JSONObject mResults;
	public GetSearchResultsMessage(String jsonString, Context c)
	{
		try {
			mResults = new JSONObject(jsonString);
		} catch (JSONException e) {
			Log.d(TAG, "Bad JSON String");
		}
	}
}
