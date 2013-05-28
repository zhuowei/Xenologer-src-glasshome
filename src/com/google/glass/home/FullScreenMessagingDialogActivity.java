package com.google.glass.home;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.util.FullScreenMessagingDialogHelper;
import com.google.glass.util.PowerHelper;

public class FullScreenMessagingDialogActivity extends GlassActivity
{
  private static final String TAG = FullScreenMessagingDialogActivity.class.getSimpleName();
  private FullScreenMessagingDialogHelper helper;
  private PowerHelper power;

  @VisibleForTesting
  protected void handleIntent(Intent paramIntent)
  {
    String str1 = this.helper.getMessageFromIntent(paramIntent);
    if (TextUtils.isEmpty(str1))
    {
      Log.w(TAG, "Null message passed, finishing activity.");
      finish();
      return;
    }
    ((TextView)findViewById(R.id.error_message)).setText(str1);
    String str2 = this.helper.getSubMessageFromIntent(paramIntent);
    TextView localTextView = (TextView)findViewById(R.id.error_sub_message);
    if (TextUtils.isEmpty(str2))
      localTextView.setVisibility(8);
    while (true)
    {
      if (this.helper.getTurnScreenOnFromIntent(paramIntent))
      {
        if (this.power == null)
          this.power = new PowerHelper(this);
        this.power.userActivity();
      }
      Bitmap localBitmap = this.helper.getIconFromIntent(paramIntent);
      ((ImageView)findViewById(R.id.error_icon)).setImageBitmap(localBitmap);
      return;
      localTextView.setText(str2);
      localTextView.setVisibility(0);
    }
  }

  public boolean onConfirm()
  {
    Log.d(TAG, "onConfirm");
    finish();
    return true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.helper = new FullScreenMessagingDialogHelper(this);
    this.power = new PowerHelper(this);
    handleIntent(getIntent());
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    handleIntent(paramIntent);
  }

  protected int provideContentView()
  {
    return R.layout.message_content;
  }

  public boolean shouldAllowVoiceInput()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.FullScreenMessagingDialogActivity
 * JD-Core Version:    0.6.2
 */