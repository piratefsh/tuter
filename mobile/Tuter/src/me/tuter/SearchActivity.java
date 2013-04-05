package me.tuter;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.Menu;


public class SearchActivity extends FragmentActivity {
	public final static String TAG = "SearchActivity";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.activity_search, menu);
        return true;
    }
    
}
