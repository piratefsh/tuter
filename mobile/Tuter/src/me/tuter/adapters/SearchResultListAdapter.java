package me.tuter.adapters;

import java.util.HashMap;
import java.util.List;

import me.tuter.R;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;


public class SearchResultListAdapter extends ArrayAdapter<String> {
	public static final String TAG ="SearchResultListAdapter";
	
	private Context mContext;
	private int mCustomRowLayoutId;
	
	HashMap<String, Integer> mIdMap = new HashMap<String, Integer>();

	public SearchResultListAdapter(Context context, int textViewResourceId, int customRowLayoutId, List<String> results) {
		super(context, textViewResourceId, results);
		
		this.mContext = context;
		this.mCustomRowLayoutId = customRowLayoutId;
		
		for (int i = 0; i < results.size(); ++i) 
		{
			mIdMap.put(results.get(i), i);
			//Log.d(TAG, "Put: " + results.get(i));
		}
	}

	@Override
	public long getItemId(int position)
	{
		String item = getItem(position);
		return mIdMap.get(item);
	}
	
	@Override
	public boolean hasStableIds()
	{
		return true;
	}

	/**
	 * Set up custom ListRow view. Based of deprecated TwoListItemView
	 */
	@Override
	public View getView(int position, View convertView, ViewGroup parent)
	{
		LinearLayout view = (LinearLayout) View.inflate(this.mContext, this.mCustomRowLayoutId, null);
		TextView text1 = (TextView) view.findViewById(R.id.text1);
		TextView text2 = (TextView) view.findViewById(R.id.text2);
		
		text1.setText(getItem(position));
		text2.setText("Tutor Name");
		
		return view;
		
		
	}
}
