package com.google.glass.home.search.results;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.string;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.widget.OptionMenu;
import java.util.ArrayList;
import java.util.List;

public final class ResultsContainer
{
  public static final String LOCATION_ADDRESS_KEY = "LOCATION_ADDRESS_KEY";
  public static final String LOCATION_COORDINATES_KEY = "LOCATION_COORDINATES_KEY";
  public static final String LOCATION_NAME_KEY = "LOCATION_NAME_KEY";
  public static final String PHONE_NUMBER_KEY = "PHONE_NUMBER_KEY";
  public static final String URL_KEY = "URL_KEY";
  private final List<ResultPage> resultPages;

  private ResultsContainer(List<ResultPage> paramList)
  {
    this.resultPages = paramList;
  }

  public static Builder newBuilder()
  {
    return new Builder();
  }

  public Bundle getBundleAt(int paramInt)
  {
    return ((ResultPage)getResultPages().get(paramInt)).getBundle();
  }

  public OptionMenu getOptionMenuAt(int paramInt)
  {
    return ((ResultPage)getResultPages().get(paramInt)).getOptionMenu();
  }

  public int getResultPageCount()
  {
    return this.resultPages.size();
  }

  public List<ResultPage> getResultPages()
  {
    return this.resultPages;
  }

  public View getViewAt(int paramInt)
  {
    return ((ResultPage)getResultPages().get(paramInt)).getView();
  }

  public static class Builder
  {
    private final List<ResultsContainer.ResultPage> resultPages = new ArrayList();

    public static ResultsContainer fromView(View paramView, Context paramContext)
    {
      Builder localBuilder = new Builder();
      localBuilder.addView(paramView, getDefaultOptionMenu(paramContext), null);
      return localBuilder.build();
    }

    public static OptionMenu getDefaultOptionMenu(Context paramContext)
    {
      if (Labs.isEnabled(Labs.Feature.WEB_BROWSING))
      {
        OptionMenu localOptionMenu = new OptionMenu(paramContext);
        localOptionMenu.addItem(13, paramContext.getString(R.string.voice_search_menu_view_site), R.drawable.browser_website);
        return localOptionMenu;
      }
      return null;
    }

    public static OptionMenu getLocalResultOptionMenu(Context paramContext, boolean paramBoolean)
    {
      OptionMenu localOptionMenu = new OptionMenu(paramContext);
      localOptionMenu.addItem(9, paramContext.getString(R.string.timeline_menu_navigate), R.drawable.ic_navigate_medium);
      if (paramBoolean)
        localOptionMenu.addItem(8, paramContext.getString(R.string.timeline_menu_voice_call), R.drawable.ic_phone_out_medium);
      return localOptionMenu;
    }

    public Builder addView(View paramView)
    {
      this.resultPages.add(new ResultsContainer.ResultPage(paramView, null, null));
      return this;
    }

    public Builder addView(View paramView, OptionMenu paramOptionMenu)
    {
      this.resultPages.add(new ResultsContainer.ResultPage(paramView, paramOptionMenu, null));
      return this;
    }

    public Builder addView(View paramView, OptionMenu paramOptionMenu, Bundle paramBundle)
    {
      this.resultPages.add(new ResultsContainer.ResultPage(paramView, paramOptionMenu, paramBundle));
      return this;
    }

    public ResultsContainer build()
    {
      return new ResultsContainer(this.resultPages, null);
    }
  }

  public static class ResultPage
  {
    private Bundle bundle;
    private OptionMenu optionMenu;
    private View view;

    public ResultPage(View paramView, OptionMenu paramOptionMenu, Bundle paramBundle)
    {
      this.view = paramView;
      this.optionMenu = paramOptionMenu;
      this.bundle = paramBundle;
    }

    public Bundle getBundle()
    {
      return this.bundle;
    }

    public OptionMenu getOptionMenu()
    {
      return this.optionMenu;
    }

    public View getView()
    {
      return this.view;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.ResultsContainer
 * JD-Core Version:    0.6.2
 */