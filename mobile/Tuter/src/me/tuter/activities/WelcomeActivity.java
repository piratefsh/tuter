package me.tuter.activities;

import me.tuter.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;

public class WelcomeActivity extends Activity {
	public final static String TAG = "WelcomeActivity";
	private Button mButtonSearch;
	private Button mButtonSignUp;
	private Button mButtonLogIn;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_welcome);
		
		this.initButtons();
		this.checkPlayServicesAvailable();
	}
	
	private void checkPlayServicesAvailable()
	{
		//Check if Google Play Services is available
		//Needed for Google Maps v2 fragment
        int playAvail = GooglePlayServicesUtil.isGooglePlayServicesAvailable(getApplicationContext());
        
        switch(playAvail)
        {
        	case ConnectionResult.SUCCESS: 
        		break;
        	case ConnectionResult.SERVICE_MISSING:
        	case ConnectionResult.SERVICE_VERSION_UPDATE_REQUIRED:
        	case ConnectionResult.SERVICE_DISABLED:
        		Log.d(TAG, GooglePlayServicesUtil.getErrorString(playAvail));
        		break;

        }
	}
	private void initButtons()
	{
		this.mButtonSearch = (Button) this.findViewById(R.id.welcome_searchButton);
		this.mButtonLogIn = (Button) this.findViewById(R.id.welcome_logInButton);
		this.mButtonSignUp = (Button) this.findViewById(R.id.welcome_signUpButton);
		
		this.mButtonSearch.setOnClickListener(new OnClickListener(){
			
			@Override
			public void onClick(View v) {
				Intent intent = new Intent(WelcomeActivity.this, SearchActivity.class);
				WelcomeActivity.this.startActivity(intent);
			}
			
		});
		this.mButtonLogIn.setOnClickListener(new OnClickListener(){

			@Override
			public void onClick(View v) {
				Intent logInIntent = new Intent(WelcomeActivity.this, LogInActivity.class);
				WelcomeActivity.this.startActivity(logInIntent);
			}
			
		});
		
		this.mButtonSignUp.setOnClickListener(new OnClickListener(){

			@Override
			public void onClick(View v) {
				Intent signUpIntent = new Intent(WelcomeActivity.this, SignUpActivity.class);
				WelcomeActivity.this.startActivity(signUpIntent);
			}
			
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_welcome, menu);
		return true;
	}

}
