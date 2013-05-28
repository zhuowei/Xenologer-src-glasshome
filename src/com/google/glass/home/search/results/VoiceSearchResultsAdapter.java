package com.google.glass.home.search.results;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.google.glass.common.R.id;
import com.google.glass.horizontalscroll.ViewRecycler;
import java.util.List;

public class VoiceSearchResultsAdapter extends BaseAdapter
  implements ViewRecycler
{
  private List<ResultsContainer.ResultPage> resultPages;

  public VoiceSearchResultsAdapter(List<ResultsContainer.ResultPage> paramList)
  {
    this.resultPages = paramList;
  }

  public int getCount()
  {
    return this.resultPages.size();
  }

  public View getItem(int paramInt)
  {
    return ((ResultsContainer.ResultPage)this.resultPages.get(paramInt)).getView();
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = getItem(paramInt);
    localView.setTag(R.id.tag_horizontal_scroll_item, getItem(paramInt));
    localView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
    return localView;
  }

  public void recycleView(View paramView)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.VoiceSearchResultsAdapter
 * JD-Core Version:    0.6.2
 */