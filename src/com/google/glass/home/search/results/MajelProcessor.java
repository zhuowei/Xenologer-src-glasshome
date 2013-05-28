package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.format.Time;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.util.TimeFormatException;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Joiner;
import com.google.common.collect.Lists;
import com.google.glass.app.GlassApplication;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollImageView;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.ImageProxyBitmapLoadingTask;
import com.google.glass.voice.network.translate.NetworkTts;
import com.google.glass.widget.OptionMenu;
import com.google.googlex.glass.common.proto.ImageDownloadRequest.CropType;
import com.google.majel.proto.ActionV2Protos.ActionV2;
import com.google.majel.proto.ActionV2Protos.Location;
import com.google.majel.proto.ActionV2Protos.MapAction;
import com.google.majel.proto.AttributionProtos.Attribution;
import com.google.majel.proto.CommonStructuredResponse.CalculatorResult;
import com.google.majel.proto.CommonStructuredResponse.StructuredResponse;
import com.google.majel.proto.CommonStructuredResponse.TranslationResult;
import com.google.majel.proto.EcoutezStructuredResponse.AssociationData;
import com.google.majel.proto.EcoutezStructuredResponse.DictionaryResult;
import com.google.majel.proto.EcoutezStructuredResponse.EcoutezLocalResult;
import com.google.majel.proto.EcoutezStructuredResponse.EcoutezLocalResults;
import com.google.majel.proto.EcoutezStructuredResponse.Fact;
import com.google.majel.proto.EcoutezStructuredResponse.FinanceResult;
import com.google.majel.proto.EcoutezStructuredResponse.FlightData;
import com.google.majel.proto.EcoutezStructuredResponse.FlightResult;
import com.google.majel.proto.EcoutezStructuredResponse.Hours;
import com.google.majel.proto.EcoutezStructuredResponse.KnowledgeResult;
import com.google.majel.proto.EcoutezStructuredResponse.Match;
import com.google.majel.proto.EcoutezStructuredResponse.MatchList;
import com.google.majel.proto.EcoutezStructuredResponse.SnippetResult;
import com.google.majel.proto.EcoutezStructuredResponse.SnippetResults;
import com.google.majel.proto.EcoutezStructuredResponse.SportsResult;
import com.google.majel.proto.EcoutezStructuredResponse.TeamData;
import com.google.majel.proto.EcoutezStructuredResponse.WeatherResult;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.majel.proto.PeanutProtos.Image;
import com.google.majel.proto.PeanutProtos.Peanut;
import com.google.majel.proto.PeanutProtos.Text;
import com.google.protobuf.micro.ByteStringMicro;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.Executor;

public class MajelProcessor
{
  private static final String TAG = MajelProcessor.class.getSimpleName();
  private final Context context;
  private final String recognitionResult;

  public MajelProcessor(Context paramContext, String paramString)
  {
    this.context = paramContext;
    this.recognitionResult = paramString;
  }

  private static String fixTimeZone(String paramString)
  {
    if ((paramString != null) && ((paramString.startsWith("GMT+")) || (paramString.startsWith("GMT-"))) && (paramString.indexOf('.') > 0));
    try
    {
      char c = paramString.charAt(3);
      float f = Math.abs(Float.parseFloat(paramString.substring(4))) % 24.0F;
      int i = (int)f;
      int j = (int)(f * 60.0F % 60.0F);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Character.valueOf(c);
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = Integer.valueOf(j);
      String str = String.format("GMT%c%d:%d", arrayOfObject);
      paramString = str;
      return paramString;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.w(TAG, "Invalid time zone: " + paramString);
    }
    return paramString;
  }

  static Spanned formatOpenHours(String paramString)
  {
    return Html.fromHtml(paramString.replace("–", "-").replace(":00", "").replace(" am", "<sup><small><small>AM</small></small></sup>").replace(" pm", "<sup><small><small>PM</small></small></sup>"));
  }

  private ResultsContainer getActionResults(PeanutProtos.Peanut paramPeanut)
  {
    ActionV2Protos.ActionV2 localActionV2 = paramPeanut.getActionV2(0);
    if ((localActionV2.hasMapActionExtension()) && (localActionV2.getMapActionExtension().getLocationCount() > 0))
    {
      ActionV2Protos.Location localLocation = localActionV2.getMapActionExtension().getLocation(0);
      ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
      LocalSingleAnswerView localLocalSingleAnswerView = new LocalSingleAnswerView(this.context);
      localLocalSingleAnswerView.setLocalResult(localLocation.getAddress(), "", null, localLocation.getLatDegrees(), localLocation.getLngDegrees(), -1.0F, localLocation.getLatSpanDegrees(), localLocation.getLngSpanDegrees());
      Bundle localBundle = new Bundle();
      double[] arrayOfDouble = new double[2];
      arrayOfDouble[0] = localLocation.getLatDegrees();
      arrayOfDouble[1] = localLocation.getLngDegrees();
      localBundle.putDoubleArray("LOCATION_COORDINATES_KEY", arrayOfDouble);
      localBundle.putString("LOCATION_NAME_KEY", localLocation.getAddress());
      localBundle.putString("URL_KEY", localLocation.getMapsUrl());
      localBuilder.addView(localLocalSingleAnswerView, ResultsContainer.Builder.getLocalResultOptionMenu(this.context, false), localBundle);
      return localBuilder.build();
    }
    return null;
  }

  private AttributionProtos.Attribution getAttribution(PeanutProtos.Peanut paramPeanut)
  {
    if ((!paramPeanut.hasTextResponse()) || (paramPeanut.getTextResponse().getAttributionCount() == 0))
      return new AttributionProtos.Attribution();
    return paramPeanut.getTextResponse().getAttribution(0);
  }

  private List<AttributionProtos.Attribution> getAttributionList(PeanutProtos.Peanut paramPeanut)
  {
    if ((!paramPeanut.hasTextResponse()) || (paramPeanut.getTextResponse().getAttributionCount() == 0))
    {
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(new AttributionProtos.Attribution());
      return localArrayList;
    }
    return paramPeanut.getTextResponse().getAttributionList();
  }

  private PeanutProtos.Image getImage(PeanutProtos.Peanut paramPeanut)
  {
    if (paramPeanut.getImageResponseCount() == 0)
      return new PeanutProtos.Image();
    return paramPeanut.getImageResponse(0);
  }

  private AttributionProtos.Attribution getImageAttribution(PeanutProtos.Peanut paramPeanut)
  {
    if ((paramPeanut.getImageResponseCount() == 0) || (paramPeanut.getImageResponse(0).getAttributionCount() == 0))
      return new AttributionProtos.Attribution();
    return paramPeanut.getImageResponse(0).getAttribution(0);
  }

  private ResultsContainer getImageResults(PeanutProtos.Peanut paramPeanut, boolean paramBoolean)
  {
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    int i = paramPeanut.getImageResponseCount();
    int j;
    int k;
    switch (i)
    {
    default:
      j = 2;
      k = 3;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    int m;
    ImageCoverView localImageCoverView;
    ArrayList localArrayList;
    DisplayMetrics localDisplayMetrics;
    while (true)
    {
      m = Math.min(k * j, i);
      localImageCoverView = new ImageCoverView(this.context);
      if (paramBoolean)
        localImageCoverView.setQuery(this.recognitionResult);
      localArrayList = new ArrayList(m);
      localDisplayMetrics = this.context.getResources().getDisplayMetrics();
      int n = localDisplayMetrics.widthPixels / k;
      int i1 = localDisplayMetrics.heightPixels / j;
      for (int i2 = 0; i2 < m; i2++)
      {
        HorizontalScrollImageView localHorizontalScrollImageView = new HorizontalScrollImageView(this.context);
        loadImageView(localHorizontalScrollImageView, paramPeanut.getImageResponse(i2), n, i1, true);
        localArrayList.add(localHorizontalScrollImageView);
      }
      j = 1;
      k = 1;
      continue;
      j = 1;
      k = 2;
      continue;
      j = 1;
      k = 3;
      continue;
      j = 2;
      k = 2;
    }
    localImageCoverView.setImageData(localArrayList, j, k);
    localBuilder.addView(localImageCoverView, localOptionMenu);
    if (!paramBoolean)
    {
      int i3 = 0;
      if (i3 < m)
      {
        ImageAnswerView localImageAnswerView = new ImageAnswerView(this.context);
        PeanutProtos.Image localImage = paramPeanut.getImageResponse(i3);
        localImageAnswerView.setAttribution(localImage);
        loadImageView(localImageAnswerView.getImageView(), localImage, localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels, false);
        Bundle localBundle = new Bundle();
        if (localImage.getAttributionCount() > 0)
          localBundle.putString("URL_KEY", localImage.getAttribution(0).getPageUrl());
        while (true)
        {
          localBuilder.addView(localImageAnswerView, localOptionMenu, localBundle);
          i3++;
          break;
          localBundle.putString("URL_KEY", localImage.getUrl());
        }
      }
    }
    return localBuilder.build();
  }

  private ResultsContainer getStructuredResults(PeanutProtos.Peanut paramPeanut, boolean paramBoolean)
  {
    CommonStructuredResponse.StructuredResponse localStructuredResponse = paramPeanut.getStructuredResponse();
    AttributionProtos.Attribution localAttribution = getAttribution(paramPeanut);
    if (localStructuredResponse.hasCalculatorResultExtension())
      return processCalculatorResult(localStructuredResponse.getCalculatorResultExtension(), localAttribution, paramBoolean);
    if (localStructuredResponse.hasFlightResultExtension())
      return processFlightResult(localStructuredResponse.getFlightResultExtension());
    if (localStructuredResponse.hasDictionaryResultExtension())
      return processDictionaryResult(localStructuredResponse.getDictionaryResultExtension());
    if (localStructuredResponse.hasWeatherResultExtension())
      return processWeatherResult(localStructuredResponse.getWeatherResultExtension());
    if (localStructuredResponse.hasSportsResultExtension())
      return processSportsResult(localStructuredResponse.getSportsResultExtension());
    if (localStructuredResponse.hasEcoutezLocalResultsExtension())
      return processLocalResults(localStructuredResponse.getEcoutezLocalResultsExtension(), paramBoolean);
    if (localStructuredResponse.hasFinanceResultExtension())
      return processFinanceResult(localStructuredResponse.getFinanceResultExtension());
    if (localStructuredResponse.hasKnowledgeResultExtension())
      return processKnowledgeResult(localStructuredResponse.getKnowledgeResultExtension(), paramPeanut.getTextResponse(), getImage(paramPeanut), getImageAttribution(paramPeanut), paramBoolean);
    if (localStructuredResponse.hasSnippetResultsExtension())
      return processSnippetResults(localStructuredResponse.getSnippetResultsExtension(), paramBoolean);
    if (localStructuredResponse.hasTranslationResultExtension())
      return processTranslationResult(localStructuredResponse.getTranslationResultExtension(), paramBoolean);
    return null;
  }

  @VisibleForTesting
  static Pair<Integer, Integer> getTargetImageDimensions(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt3 / paramInt4 > paramInt1 / paramInt2);
    for (float f = paramInt1 / paramInt3; ; f = paramInt2 / paramInt4)
      return new Pair(Integer.valueOf((int)(f * paramInt3)), Integer.valueOf((int)(f * paramInt4)));
  }

  private ResultsContainer getTextResults(PeanutProtos.Peanut paramPeanut, boolean paramBoolean)
  {
    PeanutProtos.Text localText = paramPeanut.getTextResponse();
    String str1 = localText.getDisplay();
    String str2 = localText.getDisplayDescription();
    List localList = getAttributionList(paramPeanut);
    PeanutProtos.Image localImage = getImage(paramPeanut);
    AttributionProtos.Attribution localAttribution = getImageAttribution(paramPeanut);
    String str3 = localText.getDisclaimerText();
    if (!paramPeanut.getHighConfidenceResponse());
    AnswerData localAnswerData;
    for (boolean bool = true; ; bool = false)
    {
      localAnswerData = new AnswerData(str1, str2, localList, localImage, localAttribution, str3, bool);
      if ((!TextUtils.isEmpty(localAnswerData.getAnswer())) || (!TextUtils.isEmpty(localAnswerData.getAnswerDescription())))
        break;
      return null;
    }
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    if (paramBoolean)
    {
      SnippetsCoverView localSnippetsCoverView = new SnippetsCoverView(this.context);
      localSnippetsCoverView.setQuery(this.recognitionResult);
      localBuilder.addView(localSnippetsCoverView, localOptionMenu);
    }
    TextResponseAnswerView localTextResponseAnswerView = new TextResponseAnswerView(this.context);
    localTextResponseAnswerView.setAnswerData(localAnswerData, false);
    localBuilder.addView(localTextResponseAnswerView, localOptionMenu);
    return localBuilder.build();
  }

  static Calendar getTime(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return null;
    while (true)
    {
      try
      {
        Time localTime = new Time();
        if (!localTime.parse3339(paramString1))
          localTime.switchTimezone("UTC");
        long l = localTime.toMillis(true);
        if (paramString2 != null)
        {
          str = fixTimeZone(paramString2);
          GregorianCalendar localGregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone(str));
          localGregorianCalendar.setTime(new Date(l));
          return localGregorianCalendar;
        }
      }
      catch (TimeFormatException localTimeFormatException)
      {
        Log.w(TAG, "Received unrecognizable time value '" + paramString1 + "'");
        return null;
      }
      String str = "UTC";
    }
  }

  private boolean isInterestingLocal(EcoutezStructuredResponse.EcoutezLocalResult paramEcoutezLocalResult)
  {
    return ((paramEcoutezLocalResult.getHours() != null) && (paramEcoutezLocalResult.getHours().getIntervalCount() > 0)) || (!paramEcoutezLocalResult.getTitle().equals(paramEcoutezLocalResult.getAddress()));
  }

  private void loadImageView(final ImageView paramImageView, final PeanutProtos.Image paramImage, final int paramInt1, final int paramInt2, final boolean paramBoolean)
  {
    DeferredContentLoader.load(new ImageProxyBitmapLoadingTask(this.context, paramImage.getUrl(), paramInt1, paramInt2, ImageDownloadRequest.CropType.SMART_CROP)
    {
      protected void bindContent(Bitmap paramAnonymousBitmap)
      {
        if (paramAnonymousBitmap != null)
        {
          paramImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
          paramImageView.setImageBitmap(paramAnonymousBitmap);
          showView(paramImageView, true);
        }
      }

      protected void prepareContent()
      {
        ImageView.ScaleType localScaleType;
        if (!paramBoolean)
        {
          localScaleType = ImageView.ScaleType.CENTER_INSIDE;
          if ((!paramImage.hasData()) || (paramImage.getData().isEmpty()))
            break label87;
          byte[] arrayOfByte2 = paramImage.getData().toByteArray();
          Bitmap localBitmap3 = BitmapFactory.decodeByteArray(arrayOfByte2, 0, arrayOfByte2.length);
          paramImageView.setScaleType(localScaleType);
          paramImageView.setImageBitmap(localBitmap3);
          cancel(true);
        }
        while (true)
        {
          return;
          localScaleType = ImageView.ScaleType.CENTER_CROP;
          break;
          label87: if ((!paramImage.hasThumbData()) || (paramImage.getThumbData().isEmpty()))
            break label304;
          byte[] arrayOfByte1 = paramImage.getThumbData().toByteArray();
          Bitmap localBitmap1 = BitmapFactory.decodeByteArray(arrayOfByte1, 0, arrayOfByte1.length);
          paramImageView.setScaleType(localScaleType);
          if (!paramBoolean)
          {
            Pair localPair = MajelProcessor.getTargetImageDimensions(paramInt1, paramInt2, localBitmap1.getWidth(), localBitmap1.getHeight());
            setImageDimensions(((Integer)localPair.first).intValue(), ((Integer)localPair.second).intValue());
            paramImageView.getLayoutParams().width = ((Integer)localPair.first).intValue();
            paramImageView.getLayoutParams().height = ((Integer)localPair.second).intValue();
            Bitmap localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, ((Integer)localPair.first).intValue(), ((Integer)localPair.second).intValue(), false);
            paramImageView.setImageBitmap(localBitmap2);
            paramImageView.setAlpha(0.5F);
          }
          while (paramBoolean)
          {
            cancel(true);
            return;
            paramImageView.setImageBitmap(localBitmap1);
          }
        }
        label304: paramImageView.setImageBitmap(BitmapFactory.decodeResource(MajelProcessor.this.context.getResources(), R.drawable.ic_anon_big));
      }
    });
  }

  static String maybeFormatNumbersInText(String paramString)
  {
    String[] arrayOfString = TextUtils.split(paramString, " ");
    for (int i = 0; i < arrayOfString.length; i++)
    {
      String str = arrayOfString[i];
      if (str.matches("[+-]?\\d*(\\.\\d+)?"))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Float.valueOf(str);
        arrayOfString[i] = String.format("%.2f", arrayOfObject);
      }
    }
    return Joiner.on(" ").join(arrayOfString);
  }

  private ResultsContainer processCalculatorResult(CommonStructuredResponse.CalculatorResult paramCalculatorResult, AttributionProtos.Attribution paramAttribution, boolean paramBoolean)
  {
    if ((!paramCalculatorResult.hasLeft()) || (!paramCalculatorResult.hasRight()))
      return null;
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    if (paramBoolean)
    {
      SnippetsCoverView localSnippetsCoverView = new SnippetsCoverView(this.context);
      localSnippetsCoverView.setQuery(this.recognitionResult);
      localBuilder.addView(localSnippetsCoverView, localOptionMenu);
    }
    AnswerData localAnswerData = new AnswerData(paramCalculatorResult.getLeft() + " = ", maybeFormatNumbersInText(paramCalculatorResult.getRight()), paramAttribution, new PeanutProtos.Image(), new AttributionProtos.Attribution(), "");
    TextResponseAnswerView localTextResponseAnswerView = new TextResponseAnswerView(this.context);
    localTextResponseAnswerView.setAnswerData(localAnswerData, true);
    localBuilder.addView(localTextResponseAnswerView, localOptionMenu);
    return localBuilder.build();
  }

  private ResultsContainer processDictionaryResult(EcoutezStructuredResponse.DictionaryResult paramDictionaryResult)
  {
    ResultsContainer.Builder localBuilder = new ResultsContainer.Builder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    DictionaryAnswerView localDictionaryAnswerView1 = new DictionaryAnswerView(this.context);
    localDictionaryAnswerView1.setDictionaryResultPrimary(paramDictionaryResult);
    localBuilder.addView(localDictionaryAnswerView1, localOptionMenu);
    DictionaryAnswerView localDictionaryAnswerView2 = new DictionaryAnswerView(this.context);
    if (localDictionaryAnswerView2.setDictionaryResultSecondary(paramDictionaryResult))
      localBuilder.addView(localDictionaryAnswerView2, localOptionMenu);
    DictionaryAnswerView localDictionaryAnswerView3 = new DictionaryAnswerView(this.context);
    if (localDictionaryAnswerView3.settDictionaryResultSynonyms(paramDictionaryResult))
      localBuilder.addView(localDictionaryAnswerView3, localOptionMenu);
    return localBuilder.build();
  }

  private ResultsContainer processFinanceResult(EcoutezStructuredResponse.FinanceResult paramFinanceResult)
  {
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    FinanceAnswerView localFinanceAnswerView = new FinanceAnswerView(this.context);
    localFinanceAnswerView.setFinanceResult(paramFinanceResult);
    localBuilder.addView(localFinanceAnswerView, localOptionMenu);
    FinanceDetailView localFinanceDetailView = new FinanceDetailView(this.context);
    localFinanceDetailView.setFinanceResult(paramFinanceResult.getStockResult());
    localBuilder.addView(localFinanceDetailView, localOptionMenu);
    return localBuilder.build();
  }

  private ResultsContainer processFlightResult(EcoutezStructuredResponse.FlightResult paramFlightResult)
  {
    ResultsContainer.Builder localBuilder = new ResultsContainer.Builder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    FlightAnswerView localFlightAnswerView = new FlightAnswerView(this.context);
    localFlightAnswerView.setFlightResult(paramFlightResult);
    localBuilder.addView(localFlightAnswerView, localOptionMenu);
    Iterator localIterator = paramFlightResult.getFlightList().iterator();
    while (localIterator.hasNext())
    {
      EcoutezStructuredResponse.FlightData localFlightData = (EcoutezStructuredResponse.FlightData)localIterator.next();
      FlightDetailView localFlightDetailView1 = new FlightDetailView(this.context);
      localFlightDetailView1.setFlightResult(localFlightData, true);
      localBuilder.addView(localFlightDetailView1, localOptionMenu);
      FlightDetailView localFlightDetailView2 = new FlightDetailView(this.context);
      localFlightDetailView2.setFlightResult(localFlightData, false);
      localBuilder.addView(localFlightDetailView2, localOptionMenu);
    }
    return localBuilder.build();
  }

  private ResultsContainer processKnowledgeResult(EcoutezStructuredResponse.KnowledgeResult paramKnowledgeResult, PeanutProtos.Text paramText, PeanutProtos.Image paramImage, AttributionProtos.Attribution paramAttribution, boolean paramBoolean)
  {
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    String str1;
    Bundle localBundle;
    if ((paramKnowledgeResult.hasDescriptionAttribution()) && (paramKnowledgeResult.getDescriptionAttribution().hasPageUrl()))
    {
      str1 = paramKnowledgeResult.getDescriptionAttribution().getPageUrl();
      boolean bool = TextUtils.isEmpty(str1);
      localBundle = null;
      if (!bool)
      {
        localBundle = new Bundle();
        localBundle.putString("URL_KEY", str1);
      }
      if (paramBoolean)
      {
        SnippetsCoverView localSnippetsCoverView = new SnippetsCoverView(this.context);
        localSnippetsCoverView.setQuery(this.recognitionResult);
        localSnippetsCoverView.setImage(paramImage);
        localBuilder.addView(localSnippetsCoverView, localOptionMenu);
      }
      int i = 0;
      String str2 = null;
      if (paramText != null)
      {
        i = 1;
        str2 = paramText.getDisplay();
        Object localObject = paramText.getAttributionList();
        if (((localObject == null) || (((List)localObject).isEmpty())) && (str2 != null))
        {
          String str4 = paramKnowledgeResult.getDescription();
          if ((str2.equals(str4)) && (paramKnowledgeResult.hasDescriptionAttribution()))
          {
            AttributionProtos.Attribution[] arrayOfAttribution = new AttributionProtos.Attribution[1];
            arrayOfAttribution[0] = paramKnowledgeResult.getDescriptionAttribution();
            localObject = Lists.newArrayList(arrayOfAttribution);
          }
        }
        AnswerData localAnswerData2 = new AnswerData(paramText.getDisplay(), paramText.getDisplayDescription(), (List)localObject, paramImage, paramAttribution, paramText.getDisclaimerText(), false);
        TextResponseAnswerView localTextResponseAnswerView3 = new TextResponseAnswerView(this.context);
        localTextResponseAnswerView3.setAnswerData(localAnswerData2, false);
        localBuilder.addView(localTextResponseAnswerView3, localOptionMenu, localBundle);
      }
      if (str2 != null)
      {
        String str3 = paramKnowledgeResult.getDescription();
        if (str2.equals(str3));
      }
      else
      {
        if (i == 0)
          break label446;
      }
    }
    label446: for (AnswerData localAnswerData1 = new AnswerData(paramKnowledgeResult.getTitle(), paramKnowledgeResult.getDescription(), paramKnowledgeResult.getDescriptionAttribution(), null, null, ""); ; localAnswerData1 = new AnswerData(paramKnowledgeResult.getTitle(), paramKnowledgeResult.getDescription(), paramKnowledgeResult.getDescriptionAttribution(), paramImage, paramAttribution, ""))
    {
      TextResponseAnswerView localTextResponseAnswerView1 = new TextResponseAnswerView(this.context);
      localTextResponseAnswerView1.setAnswerData(localAnswerData1, true);
      localBuilder.addView(localTextResponseAnswerView1, localOptionMenu, localBundle);
      if (paramKnowledgeResult.getFactCount() <= 0)
        break label475;
      Iterator localIterator = paramKnowledgeResult.getFactList().iterator();
      while (localIterator.hasNext())
      {
        EcoutezStructuredResponse.Fact localFact = (EcoutezStructuredResponse.Fact)localIterator.next();
        TextResponseAnswerView localTextResponseAnswerView2 = new TextResponseAnswerView(this.context);
        localTextResponseAnswerView2.setAnswerData(new AnswerData(localFact.getLabel(), localFact.getValue()), true);
        localBuilder.addView(localTextResponseAnswerView2, localOptionMenu, localBundle);
      }
      str1 = null;
      break;
    }
    label475: return localBuilder.build();
  }

  private ResultsContainer processLocalResults(EcoutezStructuredResponse.EcoutezLocalResults paramEcoutezLocalResults, boolean paramBoolean)
  {
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    if ((paramBoolean) && (paramEcoutezLocalResults.getLocalResultCount() > 1))
    {
      LocalCoverView localLocalCoverView2 = new LocalCoverView(this.context);
      localLocalCoverView2.setLocalResults(paramEcoutezLocalResults);
      localLocalCoverView2.setQuery(this.recognitionResult);
      localBuilder.addView(localLocalCoverView2, ResultsContainer.Builder.getDefaultOptionMenu(this.context));
    }
    Iterator localIterator = paramEcoutezLocalResults.getLocalResultList().iterator();
    if (localIterator.hasNext())
    {
      EcoutezStructuredResponse.EcoutezLocalResult localEcoutezLocalResult = (EcoutezStructuredResponse.EcoutezLocalResult)localIterator.next();
      LocalSingleAnswerView localLocalSingleAnswerView;
      Object localObject;
      label183: Bundle localBundle;
      if ((paramEcoutezLocalResults.getLocalResultCount() > 1) || (isInterestingLocal(localEcoutezLocalResult)))
      {
        localLocalSingleAnswerView = new LocalSingleAnswerView(this.context);
        localObject = localLocalSingleAnswerView;
        if ((localEcoutezLocalResult.hasLatSpanDegrees()) && (localEcoutezLocalResult.hasLngSpanDegrees()))
        {
          localLocalSingleAnswerView.setLocalResult(localEcoutezLocalResult.getTitle(), localEcoutezLocalResult.getAddress(), localEcoutezLocalResult.getHours(), localEcoutezLocalResult.getLatDegrees(), localEcoutezLocalResult.getLngDegrees(), -1.0F, localEcoutezLocalResult.getLatSpanDegrees(), localEcoutezLocalResult.getLngSpanDegrees());
          localBundle = new Bundle();
          if (TextUtils.isEmpty(localEcoutezLocalResult.getPhoneNumber()))
            break label386;
        }
      }
      label386: for (boolean bool = true; ; bool = false)
      {
        if (bool)
          localBundle.putString("PHONE_NUMBER_KEY", localEcoutezLocalResult.getPhoneNumber());
        double[] arrayOfDouble = new double[2];
        arrayOfDouble[0] = localEcoutezLocalResult.getLatDegrees();
        arrayOfDouble[1] = localEcoutezLocalResult.getLngDegrees();
        localBundle.putDoubleArray("LOCATION_COORDINATES_KEY", arrayOfDouble);
        localBundle.putString("LOCATION_NAME_KEY", localEcoutezLocalResult.getTitle());
        localBundle.putString("LOCATION_ADDRESS_KEY", localEcoutezLocalResult.getAddress());
        localBundle.putString("URL_KEY", localEcoutezLocalResult.getMapsUrl());
        OptionMenu localOptionMenu = ResultsContainer.Builder.getLocalResultOptionMenu(this.context, bool);
        localBuilder.addView((View)localObject, localOptionMenu, localBundle);
        break;
        localLocalSingleAnswerView.setLocalResult(localEcoutezLocalResult.getTitle(), localEcoutezLocalResult.getAddress(), localEcoutezLocalResult.getHours(), localEcoutezLocalResult.getLatDegrees(), localEcoutezLocalResult.getLngDegrees(), 16.0F, -1.0D, -1.0D);
        break label183;
        LocalCoverView localLocalCoverView1 = new LocalCoverView(this.context);
        localObject = localLocalCoverView1;
        localLocalCoverView1.setLocalResults(paramEcoutezLocalResults);
        break label183;
      }
    }
    return localBuilder.build();
  }

  private ResultsContainer processPeanut(PeanutProtos.Peanut paramPeanut, boolean paramBoolean)
  {
    boolean bool = paramPeanut.hasStructuredResponse();
    ResultsContainer localResultsContainer = null;
    if (bool)
      localResultsContainer = getStructuredResults(paramPeanut, paramBoolean);
    if ((localResultsContainer == null) && (paramPeanut.getActionV2Count() > 0))
      return getActionResults(paramPeanut);
    if (localResultsContainer == null)
    {
      if (!paramPeanut.hasTextResponse())
        break label61;
      localResultsContainer = getTextResults(paramPeanut, paramBoolean);
    }
    while (true)
    {
      return localResultsContainer;
      label61: if (paramPeanut.getImageResponseCount() > 0)
        localResultsContainer = getImageResults(paramPeanut, paramBoolean);
      else
        localResultsContainer = null;
    }
  }

  private ResultsContainer processSnippetResults(EcoutezStructuredResponse.SnippetResults paramSnippetResults, boolean paramBoolean)
  {
    if (paramSnippetResults.getResultCount() == 0)
      return null;
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    if (paramBoolean)
    {
      SnippetsCoverView localSnippetsCoverView = new SnippetsCoverView(this.context);
      localSnippetsCoverView.setQuery(this.recognitionResult);
      localBuilder.addView(localSnippetsCoverView, localOptionMenu);
    }
    Iterator localIterator = paramSnippetResults.getResultList().iterator();
    while (localIterator.hasNext())
    {
      EcoutezStructuredResponse.SnippetResult localSnippetResult = (EcoutezStructuredResponse.SnippetResult)localIterator.next();
      SnippetAnswerView localSnippetAnswerView = new SnippetAnswerView(this.context);
      localSnippetAnswerView.setSnippet(localSnippetResult);
      Bundle localBundle = new Bundle();
      localBundle.putString("URL_KEY", localSnippetResult.getUrl());
      localBuilder.addView(localSnippetAnswerView, localOptionMenu, localBundle);
    }
    return localBuilder.build();
  }

  private ResultsContainer processSportsResult(EcoutezStructuredResponse.SportsResult paramSportsResult)
  {
    if (paramSportsResult.hasTeamData())
    {
      EcoutezStructuredResponse.Match localMatch2;
      if (paramSportsResult.getTeamData().hasInProgressMatch())
        localMatch2 = paramSportsResult.getTeamData().getInProgressMatch();
      while (localMatch2 != null)
      {
        SportsAnswerView localSportsAnswerView2 = new SportsAnswerView(this.context);
        localSportsAnswerView2.setSportsResult(paramSportsResult, localMatch2);
        return ResultsContainer.Builder.fromView(localSportsAnswerView2, this.context);
        if (paramSportsResult.getTeamData().hasLastMatch())
        {
          localMatch2 = paramSportsResult.getTeamData().getLastMatch();
        }
        else
        {
          boolean bool = paramSportsResult.getTeamData().hasNextMatch();
          localMatch2 = null;
          if (bool)
            localMatch2 = paramSportsResult.getTeamData().getNextMatch();
        }
      }
    }
    if ((paramSportsResult.hasAssociationData()) && (paramSportsResult.getAssociationData().hasMatchList()))
    {
      ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
      List localList = paramSportsResult.getAssociationData().getMatchList().getMatchList();
      for (int i = -1 + localList.size(); i >= 0; i--)
      {
        EcoutezStructuredResponse.Match localMatch1 = (EcoutezStructuredResponse.Match)localList.get(i);
        SportsAnswerView localSportsAnswerView1 = new SportsAnswerView(this.context);
        localSportsAnswerView1.setSportsResult(paramSportsResult, localMatch1);
        localBuilder.addView(localSportsAnswerView1, ResultsContainer.Builder.getDefaultOptionMenu(this.context));
      }
      return localBuilder.build();
    }
    return null;
  }

  private ResultsContainer processTranslationResult(CommonStructuredResponse.TranslationResult paramTranslationResult, boolean paramBoolean)
  {
    final String str = NetworkTts.getNetworkTtsUri(paramTranslationResult);
    int i;
    TranslationAnswerView localTranslationAnswerView;
    ResultsContainer.Builder localBuilder;
    OptionMenu localOptionMenu;
    Bundle localBundle;
    if (!TextUtils.isEmpty(str))
    {
      i = 1;
      if ((!paramBoolean) && (i != 0))
        AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
        {
          public void run()
          {
            NetworkTts.getSharedInstance().requestTtsAndPlay(str);
          }
        });
      localTranslationAnswerView = new TranslationAnswerView(this.context);
      localTranslationAnswerView.setTranslationResult(paramTranslationResult);
      localBuilder = new ResultsContainer.Builder();
      if (i == 0)
        break label147;
      localOptionMenu = new OptionMenu(this.context);
      localOptionMenu.addItem(5, this.context.getString(R.string.timeline_menu_read_aloud), R.drawable.ic_read_aloud_medium);
      localBundle = new Bundle();
      localBundle.putString("URL_KEY", str);
    }
    while (true)
    {
      localBuilder.addView(localTranslationAnswerView, localOptionMenu, localBundle);
      return localBuilder.build();
      i = 0;
      break;
      label147: localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
      localBundle = null;
    }
  }

  private ResultsContainer processWeatherResult(EcoutezStructuredResponse.WeatherResult paramWeatherResult)
  {
    OptionMenu localOptionMenu = ResultsContainer.Builder.getDefaultOptionMenu(this.context);
    ResultsContainer.Builder localBuilder = ResultsContainer.newBuilder();
    WeatherAnswerView localWeatherAnswerView = new WeatherAnswerView(this.context);
    localWeatherAnswerView.setWeatherResult(paramWeatherResult);
    localBuilder.addView(localWeatherAnswerView, localOptionMenu);
    List localList1 = paramWeatherResult.getDailyForecastList();
    int i = paramWeatherResult.getDailyForecastCount();
    if (i > 0)
    {
      Date localDate = WeatherForecastView.getForecastStartDate(paramWeatherResult);
      int j = 1;
      for (int k = Math.min(4, i); j < k; k = Math.min(k + 3, i))
      {
        List localList2 = localList1.subList(j, k);
        WeatherForecastView localWeatherForecastView = new WeatherForecastView(this.context);
        localWeatherForecastView.setDailyForecast(localList2, localDate, j);
        localBuilder.addView(localWeatherForecastView, localOptionMenu);
        j = k;
      }
    }
    return localBuilder.build();
  }

  private void speakText(PeanutProtos.Peanut paramPeanut)
  {
    PeanutProtos.Text localText;
    Object localObject;
    if (paramPeanut.hasTextResponse())
    {
      localText = paramPeanut.getTextResponse();
      if (!localText.hasVocalized())
        break label79;
      if (!paramPeanut.hasStructuredResponse())
        break label70;
      boolean bool2 = paramPeanut.getStructuredResponse().hasSnippetResultsExtension();
      localObject = null;
      if (!bool2)
        break label70;
    }
    while (true)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject))
        HomeApplication.from(this.context).speakText(Html.fromHtml((String)localObject).toString());
      return;
      label70: localObject = localText.getVocalized();
      continue;
      label79: boolean bool1 = localText.hasDisplay();
      localObject = null;
      if (bool1)
        localObject = localText.getDisplay();
    }
  }

  public ResultsContainer process(MajelProtos.MajelResponse paramMajelResponse, boolean paramBoolean)
  {
    if (paramMajelResponse.getPeanutCount() <= 0)
      throw new RuntimeException("No Majel Peanuts");
    Iterator localIterator = paramMajelResponse.getPeanutList().iterator();
    while (localIterator.hasNext())
    {
      PeanutProtos.Peanut localPeanut = (PeanutProtos.Peanut)localIterator.next();
      ResultsContainer localResultsContainer = processPeanut(localPeanut, paramBoolean);
      if (localResultsContainer != null)
      {
        if (!paramBoolean)
          speakText(localPeanut);
        return localResultsContainer;
      }
    }
    String str1 = this.recognitionResult;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "peanut_count";
    arrayOfObject[1] = Integer.valueOf(paramMajelResponse.getPeanutCount());
    String str2 = UserEventHelper.createEventTuple("query", str1, arrayOfObject);
    GlassApplication.from(this.context).getUserEventHelper().log(UserEventAction.VOICE_SEARCH_NO_ANSWER, str2);
    return null;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.MajelProcessor
 * JD-Core Version:    0.6.2
 */