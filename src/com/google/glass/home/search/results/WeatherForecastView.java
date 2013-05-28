package com.google.glass.home.search.results;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.DailyForecast;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherCondition;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherResult;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class WeatherForecastView extends HorizontalScrollLinearLayout
{
  private static final String TAG = WeatherForecastView.class.getSimpleName();
  private FrameLayout column1;
  private FrameLayout column2;
  private FrameLayout column3;

  public WeatherForecastView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public WeatherForecastView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public WeatherForecastView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private FrameLayout getColumn(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return this.column1;
    case 1:
      return this.column2;
    case 2:
    }
    return this.column3;
  }

  public static Date getForecastStartDate(EcoutezStructuredResponse.WeatherResult paramWeatherResult)
  {
    if (paramWeatherResult.hasForecastStartDate())
    {
      String str = paramWeatherResult.getForecastStartDate();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
      try
      {
        Date localDate = localSimpleDateFormat.parse(str);
        return localDate;
      }
      catch (ParseException localParseException)
      {
        Log.w(TAG, "Unrecognized date value: " + str);
      }
    }
    return null;
  }

  public static String getLabel(Date paramDate, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.add(7, paramInt);
    return localCalendar.getDisplayName(7, 2, Locale.US);
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_weather_forecast, this);
    this.column1 = ((FrameLayout)findViewById(R.id.column1));
    this.column2 = ((FrameLayout)findViewById(R.id.column2));
    this.column3 = ((FrameLayout)findViewById(R.id.column3));
  }

  public void setDailyForecast(List<EcoutezStructuredResponse.DailyForecast> paramList, Date paramDate, int paramInt)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      EcoutezStructuredResponse.DailyForecast localDailyForecast = (EcoutezStructuredResponse.DailyForecast)paramList.get(j);
      FrameLayout localFrameLayout = getColumn(j);
      if (localFrameLayout != null)
      {
        ImageView localImageView = (ImageView)localFrameLayout.findViewById(R.id.current_weather_icon);
        TypophileTextView localTypophileTextView1 = (TypophileTextView)localFrameLayout.findViewById(R.id.temperature_high);
        TypophileTextView localTypophileTextView2 = (TypophileTextView)localFrameLayout.findViewById(R.id.temperature_low);
        TypophileTextView localTypophileTextView3 = (TypophileTextView)localFrameLayout.findViewById(R.id.label);
        EcoutezStructuredResponse.WeatherCondition localWeatherCondition = localDailyForecast.getCondition();
        WeatherAnswerView.setForecast(new WeatherAnswerView.Forecast(getLabel(paramDate, paramInt + j), localWeatherCondition.getImageUrl(), localWeatherCondition.getImageWidth(), localWeatherCondition.getImageHeight(), localDailyForecast.getLowTemp(), localDailyForecast.getHighTemp()), localImageView, localTypophileTextView1, localTypophileTextView2, localTypophileTextView3, getResources(), getContext());
      }
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.WeatherForecastView
 * JD-Core Version:    0.6.2
 */