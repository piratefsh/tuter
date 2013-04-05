package me.tuter;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;


public class SearchActivity extends FragmentActivity {
	public final static String TAG = "SearchActivity";
	
	private Button mSearchButton;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search);
        
        initViews();
    }
    
    private void initViews()
    {
    	this.mSearchButton = (Button) findViewById(R.id.search_searchButton);
    	this.mSearchButton.setOnClickListener(new OnClickListener()
    	{
			@Override
			public void onClick(View v) {
				Intent i = new Intent(SearchActivity.this, SearchResultsActivity.class);
				SearchActivity.this.startActivity(i);
			}
		});
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.activity_search, menu);
        return true;
    }
    
}
