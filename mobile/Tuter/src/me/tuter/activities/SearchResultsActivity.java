package me.tuter.activities;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import me.tuter.R;
import me.tuter.adapters.SearchResultListAdapter;
import me.tuter.interfaces.GetSearchResultsTaskActivity;
import me.tuter.tasks.GetSearchResultsTask;
import me.tutor.datastructures.Tutor;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.widget.ListView;

public class SearchResultsActivity extends Activity implements GetSearchResultsTaskActivity{
	private ListView mResultsListView;
	private SearchResultListAdapter mAdapter;
	private List<String> mResults;
	private GetSearchResultsTask mGetSearchResultsTask;
	
	String[] values = new String[] { "CS 302", "MATH 211", "MATH 222", "CS 367", "CS 407" };
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_results);
        
        initViews();
        
        this.mGetSearchResultsTask = new GetSearchResultsTask(this, this);
        this.mGetSearchResultsTask.execute();
    }

    private void initViews()
    {
    	//Convert array to ArrayList
    	this.mResults = new ArrayList<String>(Arrays.asList(values));
    	this.mResultsListView = (ListView) findViewById(R.id.results_list);
    	this.mAdapter = new SearchResultListAdapter(this, android.R.layout.simple_list_item_1, R.layout.list_single_result, this.mResults);
    	this.mResultsListView.setAdapter(mAdapter);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.search_results, menu);
        return true;
    }

	@Override
	public void onGetSearchResultsTaskComplete(List<Tutor> tutors) {
		// TODO Auto-generated method stub
		
	}
    
}
