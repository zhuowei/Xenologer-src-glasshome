package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.util.DateHelper;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.FlightData;
import java.util.Calendar;

public class FlightDetailView extends HorizontalScrollLinearLayout
{
  private TypophileTextView airport;
  private TypophileTextView gate;
  private TypophileTextView status;
  private TypophileTextView terminal;
  private TypophileTextView time;
  private TypophileTextView timeLabel;

  public FlightDetailView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public FlightDetailView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public FlightDetailView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_flight_detail, this);
    this.airport = ((TypophileTextView)findViewById(R.id.airport));
    this.timeLabel = ((TypophileTextView)findViewById(R.id.timeLabel));
    this.time = ((TypophileTextView)findViewById(R.id.time));
    this.terminal = ((TypophileTextView)findViewById(R.id.terminal));
    this.gate = ((TypophileTextView)findViewById(R.id.gate));
    this.status = ((TypophileTextView)findViewById(R.id.status));
  }

  private String maybeReplaceWithNotAvailableString(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = "-";
    return paramString;
  }

  public void setFlightResult(EcoutezStructuredResponse.FlightData paramFlightData, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.airport.setText(paramFlightData.getDepartureAirportCode());
      this.timeLabel.setText(getResources().getString(R.string.voice_search_flight_departure));
      this.terminal.setText(maybeReplaceWithNotAvailableString(paramFlightData.getDepartureTerminal()));
      this.gate.setText(maybeReplaceWithNotAvailableString(paramFlightData.getDepartureGate()));
    }
    while (true)
    {
      Calendar localCalendar = FlightAnswerView.getTime(paramFlightData, paramBoolean);
      this.time.setText(FlightAnswerView.formatTime(localCalendar, getContext()));
      this.time.setTextColor(FlightAnswerView.getColorForStatus(paramFlightData.getStatusCode(), getContext()));
      this.status.setText(DateHelper.getRelativeTimestamp(getContext(), localCalendar.getTimeInMillis()));
      return;
      this.airport.setText(paramFlightData.getArrivalAirportCode());
      this.timeLabel.setText(getResources().getString(R.string.voice_search_flight_arrival));
      this.terminal.setText(maybeReplaceWithNotAvailableString(paramFlightData.getArrivalTerminal()));
      this.gate.setText(maybeReplaceWithNotAvailableString(paramFlightData.getArrivalGate()));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.FlightDetailView
 * JD-Core Version:    0.6.2
 */