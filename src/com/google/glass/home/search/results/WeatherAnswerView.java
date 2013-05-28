package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.home.R.dimen;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.ImageProxyBitmapLoadingTask.SimpleImageProxyBitmapLoadingTask;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.TypophileTextView;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;
import com.google.majel.proto.EcoutezStructuredResponse.DailyForecast;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherCondition;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherLocation;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherResult;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherState;

public class WeatherAnswerView extends HorizontalScrollLinearLayout
{
  private TypophileTextView chanceOfPrecipitation;
  private ImageView chanceOfPrecipitationIcon;
  private TypophileTextView currentTemperature;
  private ImageView currentWeatherIcon;
  private DynamicSizeTextView locationName;
  private TypophileTextView temperatureHigh;
  private TypophileTextView temperatureLow;

  public WeatherAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public WeatherAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public WeatherAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_weather_answer, this);
    this.locationName = ((DynamicSizeTextView)findViewById(R.id.location_name));
    this.currentTemperature = ((TypophileTextView)findViewById(R.id.temperature));
    this.currentWeatherIcon = ((ImageView)findViewById(R.id.current_weather_icon));
    this.temperatureHigh = ((TypophileTextView)findViewById(R.id.temperature_high));
    this.temperatureLow = ((TypophileTextView)findViewById(R.id.temperature_low));
    this.chanceOfPrecipitationIcon = ((ImageView)findViewById(R.id.chance_of_precipitation_icon));
    this.chanceOfPrecipitation = ((TypophileTextView)findViewById(R.id.chance_of_precipitation));
  }

  static void setForecast(Forecast paramForecast, ImageView paramImageView, TypophileTextView paramTypophileTextView1, TypophileTextView paramTypophileTextView2, TypophileTextView paramTypophileTextView3, Resources paramResources, Context paramContext)
  {
    DeferredContentLoader.load(new ImageProxyBitmapLoadingTask.SimpleImageProxyBitmapLoadingTask(paramImageView, paramContext, paramForecast.getIconUrl(), paramForecast.getIconWidth(), paramForecast.getIconHeight(), ImageDownloadRequest.CropType.SMART_CROP));
    int i = R.string.voice_search_weather_temperature;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramForecast.getHigh());
    paramTypophileTextView1.setText(paramResources.getString(i, arrayOfObject1));
    int j = R.string.voice_search_weather_temperature;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(paramForecast.getLow());
    paramTypophileTextView2.setText(paramResources.getString(j, arrayOfObject2));
    if ((paramTypophileTextView3 != null) && (paramForecast.getLabel() != null))
      paramTypophileTextView3.setText(paramForecast.getLabel());
  }

  public void setWeatherResult(EcoutezStructuredResponse.WeatherResult paramWeatherResult)
  {
    boolean bool1 = paramWeatherResult.hasLocation();
    String str1 = null;
    EcoutezStructuredResponse.WeatherLocation localWeatherLocation;
    if (bool1)
    {
      localWeatherLocation = paramWeatherResult.getLocation();
      if (!localWeatherLocation.hasFormattedAddress())
        break label341;
      str1 = localWeatherLocation.getFormattedAddress();
    }
    while (true)
    {
      this.locationName.setText(str1);
      EcoutezStructuredResponse.WeatherState localWeatherState = paramWeatherResult.getCurrent();
      if ((localWeatherState != null) && (localWeatherState.hasTemp()))
      {
        TypophileTextView localTypophileTextView = this.currentTemperature;
        Resources localResources2 = getResources();
        int m = R.string.voice_search_weather_temperature;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(localWeatherState.getTemp());
        localTypophileTextView.setText(localResources2.getString(m, arrayOfObject2));
      }
      int i = getResources().getDimensionPixelSize(R.dimen.voice_search_weather_icon_size);
      int j = i;
      String str2 = null;
      if (localWeatherState != null)
      {
        boolean bool2 = localWeatherState.hasCondition();
        str2 = null;
        if (bool2)
        {
          EcoutezStructuredResponse.WeatherCondition localWeatherCondition = localWeatherState.getCondition();
          boolean bool3 = localWeatherCondition.hasImageUrl();
          str2 = null;
          if (bool3)
          {
            str2 = localWeatherCondition.getImageUrl();
            if ((localWeatherCondition.hasImageWidth()) && (localWeatherCondition.hasImageHeight()))
            {
              i = localWeatherCondition.getImageWidth();
              j = localWeatherCondition.getImageHeight();
            }
          }
        }
      }
      if (paramWeatherResult.getDailyForecastCount() > 0)
      {
        EcoutezStructuredResponse.DailyForecast localDailyForecast = paramWeatherResult.getDailyForecast(0);
        setForecast(new Forecast(null, str2, i, j, localDailyForecast.getLowTemp(), localDailyForecast.getHighTemp()), this.currentWeatherIcon, this.temperatureHigh, this.temperatureLow, null, getResources(), getContext());
      }
      if ((localWeatherState == null) || (!localWeatherState.hasChanceOfPrecipitation()))
        break;
      Resources localResources1 = getResources();
      int k = R.string.voice_search_weather_humidity;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(localWeatherState.getChanceOfPrecipitation());
      String str3 = localResources1.getString(k, arrayOfObject1);
      this.chanceOfPrecipitation.setText(Html.fromHtml(str3));
      this.chanceOfPrecipitationIcon.setVisibility(0);
      return;
      label341: boolean bool4 = localWeatherLocation.hasCity();
      str1 = null;
      if (bool4)
        str1 = localWeatherLocation.getCity();
    }
    this.chanceOfPrecipitationIcon.setVisibility(8);
  }

  static class Forecast
  {
    private final int high;
    private final int iconHeight;
    private final String iconUrl;
    private final int iconWidth;
    private final CharSequence label;
    private final int low;

    public Forecast(CharSequence paramCharSequence, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.label = paramCharSequence;
      this.iconUrl = paramString;
      this.iconWidth = paramInt1;
      this.iconHeight = paramInt2;
      this.low = paramInt3;
      this.high = paramInt4;
    }

    public int getHigh()
    {
      return this.high;
    }

    public int getIconHeight()
    {
      return this.iconHeight;
    }

    public String getIconUrl()
    {
      return this.iconUrl;
    }

    public int getIconWidth()
    {
      return this.iconWidth;
    }

    public CharSequence getLabel()
    {
      return this.label;
    }

    public int getLow()
    {
      return this.low;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.WeatherAnswerView
 * JD-Core Version:    0.6.2
 */