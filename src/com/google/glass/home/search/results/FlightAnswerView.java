package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import com.google.glass.home.R.color;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.util.DateHelper;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.FlightData;
import com.google.majel.proto.EcoutezStructuredResponse.FlightResult;
import java.util.Calendar;

public class FlightAnswerView extends HorizontalScrollLinearLayout
{
  private TypophileTextView airline;
  private TypophileTextView departureTime;
  private TypophileTextView flight;
  private TypophileTextView flightStatus;
  private TypophileTextView fromAirport;
  private TypophileTextView status;
  private TypophileTextView stop;
  private TypophileTextView toAirport;

  public FlightAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public FlightAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public FlightAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  static Spanned formatTime(Calendar paramCalendar, Context paramContext)
  {
    java.text.DateFormat localDateFormat = android.text.format.DateFormat.getTimeFormat(paramContext);
    localDateFormat.setTimeZone(paramCalendar.getTimeZone());
    return Html.fromHtml(localDateFormat.format(paramCalendar.getTime()).replace(" AM", "<sup><small><small>PM</small></small></sup>").replace(" PM", "<sup><small><small>PM</small></small></sup>"));
  }

  static int getColorForStatus(int paramInt, Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    switch (paramInt)
    {
    default:
      return localResources.getColor(17170450);
    case 1:
    case 2:
    case 3:
      return localResources.getColor(R.color.state_green);
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    return localResources.getColor(R.color.state_red);
  }

  private String getFlightStatus(int paramInt)
  {
    Resources localResources = getContext().getResources();
    switch (paramInt)
    {
    default:
      return localResources.getString(R.string.voice_search_flight_status_unknown);
    case 1:
      return localResources.getString(R.string.voice_search_flight_status_scheduled);
    case 2:
      return localResources.getString(R.string.voice_search_flight_status_on_time);
    case 3:
      return localResources.getString(R.string.voice_search_flight_status_landed);
    case 4:
      return localResources.getString(R.string.voice_search_flight_status_delayed);
    case 5:
      return localResources.getString(R.string.voice_search_flight_status_cancelled);
    case 6:
      return localResources.getString(R.string.voice_search_flight_status_diverted);
    case 7:
      return localResources.getString(R.string.voice_search_flight_status_redirected);
    case 8:
    }
    return localResources.getString(R.string.voice_search_flight_status_not_operational);
  }

  static Calendar getTime(EcoutezStructuredResponse.FlightData paramFlightData, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str2 = paramFlightData.getDepartureTimeZone();
      if (paramFlightData.hasDepartureTimeActual())
        return MajelProcessor.getTime(paramFlightData.getDepartureTimeActual(), str2);
      return MajelProcessor.getTime(paramFlightData.getDepartureTimeScheduled(), str2);
    }
    String str1 = paramFlightData.getArrivalTimeZone();
    if (paramFlightData.hasArrivalTimeActual())
      return MajelProcessor.getTime(paramFlightData.getArrivalTimeActual(), str1);
    return MajelProcessor.getTime(paramFlightData.getArrivalTimeScheduled(), str1);
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_flight_answer, this);
    this.fromAirport = ((TypophileTextView)findViewById(R.id.from_airport));
    this.toAirport = ((TypophileTextView)findViewById(R.id.to_airport));
    this.stop = ((TypophileTextView)findViewById(R.id.stop));
    this.airline = ((TypophileTextView)findViewById(R.id.airline));
    this.flight = ((TypophileTextView)findViewById(R.id.flight));
    this.departureTime = ((TypophileTextView)findViewById(R.id.departure_time));
    this.flightStatus = ((TypophileTextView)findViewById(R.id.flight_status));
    this.status = ((TypophileTextView)findViewById(R.id.status));
  }

  private boolean isOnTime(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
    case 2:
    case 3:
    }
    return true;
  }

  public void setFlightResult(EcoutezStructuredResponse.FlightResult paramFlightResult)
  {
    int i = paramFlightResult.getFlightCount();
    if (i < 1)
      return;
    EcoutezStructuredResponse.FlightData localFlightData1 = paramFlightResult.getFlight(0);
    EcoutezStructuredResponse.FlightData localFlightData2 = paramFlightResult.getFlight(i - 1);
    this.airline.setText(localFlightData1.getAirlineName());
    if (i > 1)
    {
      this.flight.setText(getContext().getString(R.string.voice_search_flight_info_multi_city));
      TypophileTextView localTypophileTextView2 = this.stop;
      Context localContext2 = getContext();
      int m = R.string.voice_search_flight_stop;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localFlightData1.getArrivalAirportCode();
      localTypophileTextView2.setText(localContext2.getString(m, arrayOfObject2));
    }
    while (true)
    {
      int k = localFlightData1.getStatusCode();
      this.fromAirport.setText(localFlightData1.getDepartureAirportCode());
      this.toAirport.setText(localFlightData2.getArrivalAirportCode());
      if (!isOnTime(k))
        ((ImageView)findViewById(R.id.airplane)).setImageResource(R.drawable.ic_flight_delayed);
      Calendar localCalendar = getTime(localFlightData1, true);
      this.departureTime.setText(formatTime(localCalendar, getContext()));
      String str = getFlightStatus(k);
      this.flightStatus.setText(str);
      this.flightStatus.setTextColor(getColorForStatus(k, getContext()));
      this.status.setText(DateHelper.getRelativeTimestamp(getContext(), localCalendar.getTimeInMillis()));
      return;
      TypophileTextView localTypophileTextView1 = this.flight;
      Context localContext1 = getContext();
      int j = R.string.voice_search_flight_info;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramFlightResult.getNumber();
      localTypophileTextView1.setText(localContext1.getString(j, arrayOfObject1));
      this.stop.setVisibility(8);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.FlightAnswerView
 * JD-Core Version:    0.6.2
 */