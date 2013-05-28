package com.google.glass.home.search.results;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import com.google.common.base.Joiner;
import com.google.glass.home.R.color;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.util.DateHelper;
import com.google.glass.widget.DynamicSizeTextView;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.EcnResult;
import com.google.majel.proto.EcoutezStructuredResponse.FinanceResult;
import com.google.majel.proto.EcoutezStructuredResponse.StockResult;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FinanceAnswerView extends HorizontalScrollLinearLayout
{
  private static String TAG = FinanceAnswerView.class.getSimpleName();
  private DynamicSizeTextView change;
  private TypophileTextView price;
  private TypophileTextView status;
  private DynamicSizeTextView title;

  public FinanceAnswerView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public FinanceAnswerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public FinanceAnswerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private long convertLastChangeTimeToTimestamp(String paramString)
  {
    String str1 = paramString.replace(" ET", " EST");
    String str2 = str1 + " " + Calendar.getInstance().get(1);
    try
    {
      long l = new SimpleDateFormat("MMM dd hh:mmaa zz yyyy").parse(str2).getTime();
      return l;
    }
    catch (ParseException localParseException)
    {
      Log.w(TAG, localParseException.getMessage());
    }
    return 0L;
  }

  static final String formatPrice(float paramFloat)
  {
    if (paramFloat > 99999.0F)
      return String.valueOf((int)paramFloat);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(paramFloat);
    return String.format("%.2f", arrayOfObject);
  }

  private static final String formatPriceChange(float paramFloat)
  {
    if (paramFloat > 0.0F)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(paramFloat);
      return String.format("+%.2f", arrayOfObject2);
    }
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Float.valueOf(paramFloat);
    return String.format("%.2f", arrayOfObject1);
  }

  private final int getPriceColor(float paramFloat)
  {
    if (paramFloat > 0.0F)
      return getResources().getColor(R.color.state_green);
    if (paramFloat < 0.0F)
      return getResources().getColor(R.color.state_red);
    return getResources().getColor(17170443);
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_finance_answer, this);
    this.title = ((DynamicSizeTextView)findViewById(R.id.title));
    this.price = ((TypophileTextView)findViewById(R.id.price));
    this.change = ((DynamicSizeTextView)findViewById(R.id.change));
    this.status = ((TypophileTextView)findViewById(R.id.status));
  }

  public void setFinanceResult(EcoutezStructuredResponse.FinanceResult paramFinanceResult)
  {
    this.title.setText(paramFinanceResult.getSymbol());
    String str1;
    Resources localResources3;
    int k;
    Object[] arrayOfObject5;
    if ((paramFinanceResult.hasEcnResult()) && (paramFinanceResult.getEcnResult().hasLastPrice()))
    {
      EcoutezStructuredResponse.EcnResult localEcnResult = paramFinanceResult.getEcnResult();
      this.price.setText(formatPrice(localEcnResult.getLastPrice()));
      Resources localResources2 = getResources();
      int j = R.string.voice_search_finance_change;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = formatPriceChange(localEcnResult.getPriceChange());
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Float.valueOf(localEcnResult.getPricePercentChange());
      arrayOfObject3[1] = String.format("%.2f", arrayOfObject4);
      str1 = localResources2.getString(j, arrayOfObject3);
      this.change.setTextColor(getPriceColor(localEcnResult.getPriceChange()));
      localResources3 = getResources();
      k = R.string.voice_search_finance_after_hours;
      arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = DateHelper.getRelativeTimestamp(getContext(), convertLastChangeTimeToTimestamp(localEcnResult.getLastChangeTime()));
    }
    EcoutezStructuredResponse.StockResult localStockResult;
    for (String str2 = localResources3.getString(k, arrayOfObject5); ; str2 = DateHelper.getRelativeTimestamp(getContext(), convertLastChangeTimeToTimestamp(localStockResult.getLastChangeTime())))
    {
      this.change.setText(str1);
      this.status.setText(Joiner.on(" ").skipNulls().join(paramFinanceResult.getExchangeCode(), str2, new Object[0]));
      return;
      localStockResult = paramFinanceResult.getStockResult();
      this.price.setText(formatPrice(localStockResult.getLastPrice()));
      Resources localResources1 = getResources();
      int i = R.string.voice_search_finance_change;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = formatPriceChange(localStockResult.getPriceChange());
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(localStockResult.getPricePercentChange());
      arrayOfObject1[1] = String.format("%.2f", arrayOfObject2);
      str1 = localResources1.getString(i, arrayOfObject1);
      this.change.setTextColor(getPriceColor(localStockResult.getPriceChange()));
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.FinanceAnswerView
 * JD-Core Version:    0.6.2
 */