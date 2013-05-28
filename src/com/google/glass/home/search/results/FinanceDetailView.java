package com.google.glass.home.search.results;

import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.horizontalscroll.HorizontalScrollLinearLayout;
import com.google.glass.widget.TypophileTextView;
import com.google.majel.proto.EcoutezStructuredResponse.StockResult;

public class FinanceDetailView extends HorizontalScrollLinearLayout
{
  private TypophileTextView avgVolume;
  private TypophileTextView avgVolumeLabel;
  private TypophileTextView high;
  private TypophileTextView highLabel;
  private TypophileTextView low;
  private TypophileTextView lowLabel;
  private TypophileTextView marketCap;
  private TypophileTextView marketCapLabel;
  private TypophileTextView open;
  private TypophileTextView openLabel;
  private TypophileTextView volume;
  private TypophileTextView volumeLabel;

  public FinanceDetailView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public FinanceDetailView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public FinanceDetailView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    LayoutInflater.from(getContext()).inflate(R.layout.voice_search_finance_details, this);
    this.openLabel = ((TypophileTextView)findViewById(R.id.openLabel));
    this.open = ((TypophileTextView)findViewById(R.id.open));
    this.highLabel = ((TypophileTextView)findViewById(R.id.highLabel));
    this.high = ((TypophileTextView)findViewById(R.id.high));
    this.lowLabel = ((TypophileTextView)findViewById(R.id.lowLabel));
    this.low = ((TypophileTextView)findViewById(R.id.low));
    this.volumeLabel = ((TypophileTextView)findViewById(R.id.volumeLabel));
    this.volume = ((TypophileTextView)findViewById(R.id.volume));
    this.avgVolumeLabel = ((TypophileTextView)findViewById(R.id.avgVolumeLabel));
    this.avgVolume = ((TypophileTextView)findViewById(R.id.avgVolume));
    this.marketCapLabel = ((TypophileTextView)findViewById(R.id.marketCapLabel));
    this.marketCap = ((TypophileTextView)findViewById(R.id.marketCap));
  }

  public void setFinanceResult(EcoutezStructuredResponse.StockResult paramStockResult)
  {
    this.openLabel.setText(paramStockResult.getOpenText());
    this.open.setText(FinanceAnswerView.formatPrice(paramStockResult.getOpenPrice()));
    this.highLabel.setText(paramStockResult.getHighText());
    this.high.setText(FinanceAnswerView.formatPrice(paramStockResult.getHighPrice()));
    this.lowLabel.setText(paramStockResult.getLowText());
    this.low.setText(FinanceAnswerView.formatPrice(paramStockResult.getLowPrice()));
    this.volumeLabel.setText(paramStockResult.getVolumeText());
    this.volume.setText(paramStockResult.getVolume());
    this.avgVolumeLabel.setText(Html.fromHtml(paramStockResult.getAvgVolumeText()));
    this.avgVolume.setText(paramStockResult.getAvgVolume());
    this.marketCapLabel.setText(Html.fromHtml(paramStockResult.getMarketCapText()));
    this.marketCap.setText(paramStockResult.getMarketCap());
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.results.FinanceDetailView
 * JD-Core Version:    0.6.2
 */