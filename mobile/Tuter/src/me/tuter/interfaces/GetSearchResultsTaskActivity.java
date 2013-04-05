package me.tuter.interfaces;

import java.util.List;

import me.tutor.datastructures.Tutor;

public interface GetSearchResultsTaskActivity {
	void onGetSearchResultsTaskComplete(List<Tutor> tutors);
}
