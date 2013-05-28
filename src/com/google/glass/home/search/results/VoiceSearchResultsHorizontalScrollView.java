package com.google.glass.home.search.results;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Adapter;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import java.util.List;

public class VoiceSearchResultsHorizontalScrollView extends BaseHorizontalScrollView<Integer, View>
{
  private List<ResultsContainer.ResultPage> resultPages;

  public VoiceSearchResultsHorizontalScrollView(Context paramContext)
  {
    super(paramContext, true);
  }

  public VoiceSearchResultsHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, true);
  }

  public VoiceSearchResultsHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, true);
  }

  public int findIdPosition(Integer paramInteger)
  {
    return paramInteger.intValue();
  }

  public int findItemPosition(View paramView)
  {
    for (int i = 0; i < this.resultPages.size(); i++)
      if (((ResultsContainer.ResultPage)this.resultPages.get(i)).getView().equals(paramView))
        return i;
    return getHomePosition();
  }

  public int getHomePosition()
  {
    return 0;
  }

  public View getViewForPosition(int paramInt)
  {
    return getAdapter().getView(paramInt, null, this);
  }

  public void rebindView(int paramInt, View paramView)
  {
  }

  public void setResultPages(List<ResultsContainer.ResultPage> paramList)
  {
    this.resultPages = paramList;
    setAdapter(new VoiceSearchResultsAdapter(paramList));
    updateViews(true);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.VoiceSearchResultsHorizontalScrollView
 * JD-Core Version:    0.6.2
 */