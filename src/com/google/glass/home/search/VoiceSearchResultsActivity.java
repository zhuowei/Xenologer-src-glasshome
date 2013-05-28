package com.google.glass.home.search;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.widget.FrameLayout;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassError;
import com.google.glass.bluetooth.BluetoothHeadset;
import com.google.glass.home.HomeApplication;
import com.google.glass.home.R.drawable;
import com.google.glass.home.R.id;
import com.google.glass.home.R.layout;
import com.google.glass.home.R.string;
import com.google.glass.home.search.results.MajelProcessor;
import com.google.glass.home.search.results.ResultsContainer;
import com.google.glass.home.search.results.TextResponseAnswerView;
import com.google.glass.home.search.results.TranslationAnswerView;
import com.google.glass.home.search.results.VoiceSearchResultsHorizontalScrollView;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventAction.TimelineItemInserted;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.timeline.TimelineItemId;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import com.google.glass.util.IconProvider;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.SettingsSecure;
import com.google.glass.voice.VoiceConfig;
import com.google.glass.voice.network.translate.NetworkTts;
import com.google.glass.widget.OptionMenu;
import com.google.glass.widget.OptionMenu.Item;
import com.google.glass.widget.SliderView;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Attachment.Builder;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;
import com.google.googlex.glass.common.proto.Location;
import com.google.googlex.glass.common.proto.Location.Builder;
import com.google.googlex.glass.common.proto.MenuItem;
import com.google.googlex.glass.common.proto.MenuItem.Action;
import com.google.googlex.glass.common.proto.MenuItem.Builder;
import com.google.googlex.glass.common.proto.MenuValue.Builder;
import com.google.googlex.glass.common.proto.TimelineItem;
import com.google.googlex.glass.common.proto.TimelineItem.Builder;
import com.google.majel.proto.MajelProtos.MajelResponse;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class VoiceSearchResultsActivity extends GlassActivity
{
  private static boolean SAVE_MAJEL_RESPONSE_PROTO = false;
  private static final String SEARCH_URL = "http://www.google.com/search?q=";
  private static final String TAG = VoiceSearchResultsActivity.class.getSimpleName();
  public static final String WEB_BROWSER_EXTRA_USER_EVENT_CONTEXT_DATA = "userEventContextData";
  private Long activityCreatedTime;
  private TimelineItemId lastSavedTimelineItemId;
  private byte[] majelResponseBytes;
  private String recognitionResult;
  private ResultsContainer results;
  private FrameLayout resultsContainerView;
  private SliderView resultsSliderView;
  private VoiceSearchResultsHorizontalScrollView resultsView;
  private boolean swipeLogged = false;
  private TimelineHelper timelineHelper;
  private TimelineItemId timelineItemId;

  private void addTimelineOptionsMenu(TimelineItem.Builder paramBuilder)
  {
    if ((this.results.getResultPageCount() > 1) || ((this.results.getResultPageCount() == 1) && (this.results.getViewAt(0).getClass().equals(TextResponseAnswerView.class))))
      paramBuilder.addMenuItemBuilder().setAction(MenuItem.Action.SEARCH).addValueBuilder().setDisplayName(getString(R.string.timeline_menu_expand_search)).setIconUrl(IconProvider.buildDrawableUri(this, R.drawable.web_results));
    OptionMenu localOptionMenu = this.results.getOptionMenuAt(0);
    if (localOptionMenu != null)
    {
      Bundle localBundle = this.results.getBundleAt(0);
      int i = 0;
      if (i < localOptionMenu.getItemCount())
      {
        OptionMenu.Item localItem = localOptionMenu.getItem(i);
        if ((localItem.getItemId() == 8) && (localBundle.containsKey("PHONE_NUMBER_KEY")) && (this.results.getResultPageCount() == 1))
        {
          paramBuilder.setCreator(Entity.newBuilder().setPhoneNumber(localBundle.getString("PHONE_NUMBER_KEY")).build());
          paramBuilder.addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.VOICE_CALL));
        }
        while (true)
        {
          i++;
          break;
          if ((localItem.getItemId() == 9) && (localBundle.containsKey("LOCATION_COORDINATES_KEY")) && (this.results.getResultPageCount() == 1))
          {
            Location localLocation = getLocation(localBundle);
            if (localLocation != null)
            {
              paramBuilder.setLocation(localLocation);
              paramBuilder.addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.NAVIGATE));
            }
          }
          else if (localItem.getItemId() == 5)
          {
            if ((localBundle != null) && (localBundle.containsKey("URL_KEY")))
              paramBuilder.setSendToPhoneUrl(localBundle.getString("URL_KEY"));
            paramBuilder.addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.READ_ALOUD));
          }
          else if (localItem.getItemId() == 13)
          {
            paramBuilder.setSendToPhoneUrl(getViewWebsiteUrl(localBundle));
            paramBuilder.addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.VIEW_WEB_SITE));
          }
        }
      }
    }
    paramBuilder.addMenuItem(MenuItem.newBuilder().setAction(MenuItem.Action.DELETE));
  }

  private String buildBrowsingUserEventContextData(int paramInt, boolean paramBoolean)
  {
    int i = 1;
    long l = System.currentTimeMillis() - this.activityCreatedTime.longValue();
    Integer localInteger = Integer.valueOf(paramInt);
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "tsra";
    arrayOfObject[i] = Long.valueOf(l);
    arrayOfObject[2] = "nr";
    if (paramBoolean);
    while (true)
    {
      arrayOfObject[3] = Integer.valueOf(i);
      return UserEventHelper.createEventTuple("ri", localInteger, arrayOfObject);
      i = 0;
    }
  }

  private static Location getLocation(Bundle paramBundle)
  {
    double[] arrayOfDouble = paramBundle.getDoubleArray("LOCATION_COORDINATES_KEY");
    if ((arrayOfDouble != null) && (arrayOfDouble.length == 2))
    {
      Location.Builder localBuilder = Location.newBuilder();
      localBuilder.setLatitude(arrayOfDouble[0]).setLongitude(arrayOfDouble[1]);
      if (paramBundle.containsKey("LOCATION_NAME_KEY"))
        localBuilder.setDisplayName(paramBundle.getString("LOCATION_NAME_KEY"));
      if (paramBundle.containsKey("LOCATION_ADDRESS_KEY"))
        localBuilder.setAddress(paramBundle.getString("LOCATION_ADDRESS_KEY"));
      return localBuilder.build();
    }
    return null;
  }

  private String getViewWebsiteUrl(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("URL_KEY")))
      return paramBundle.getString("URL_KEY");
    String str = URLEncoder.encode(this.recognitionResult);
    return "http://www.google.com/search?q=" + str;
  }

  private void insertSearchInTimeline()
  {
    AsyncTask.execute(new Runnable()
    {
      public void run()
      {
        TimelineItem.Builder localBuilder = VoiceSearchResultsActivity.this.timelineHelper.createTimelineItemBuilder(VoiceSearchResultsActivity.this, new SettingsSecure(VoiceSearchResultsActivity.this.getContentResolver()));
        String str1 = localBuilder.getId();
        if (CachedFilesManager.getSharedInstance().save(CachedFilesManager.Type.PROTO_BUFFER, str1, FileSaver.newSaver(VoiceSearchResultsActivity.this.majelResponseBytes)))
        {
          String str2 = CachedFilesManager.getSharedInstance().getPath(CachedFilesManager.Type.PROTO_BUFFER, str1);
          localBuilder.addAttachment(Attachment.newBuilder().setClientCachePath(str2).setContentType("proto/search").build());
          VoiceSearchResultsActivity.this.addTimelineOptionsMenu(localBuilder);
          localBuilder.setText(VoiceSearchResultsActivity.this.recognitionResult);
          TimelineItem localTimelineItem = localBuilder.build();
          VoiceSearchResultsActivity.this.timelineHelper.insertTimelineItem(VoiceSearchResultsActivity.this, localTimelineItem, UserEventAction.TimelineItemInserted.VOICE_SEARCH, null);
          VoiceSearchResultsActivity.access$402(VoiceSearchResultsActivity.this, new TimelineItemId(localTimelineItem));
        }
      }
    });
  }

  private void invokeBrowser(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    localIntent.putExtra("userEventContextData", paramString2);
    startActivity(localIntent);
  }

  private void removeMenuItemsWithAction(List<OptionMenu.Item> paramList, MenuItem.Action paramAction)
  {
    for (int i = -1 + paramList.size(); i >= 0; i--)
      if (((OptionMenu.Item)paramList.get(i)).getItemId() == paramAction.getNumber())
        paramList.remove(i);
  }

  @VisibleForTesting
  public TimelineItemId getLastSavedTimelineItemId()
  {
    return this.lastSavedTimelineItemId;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.activityCreatedTime = Long.valueOf(System.currentTimeMillis());
    this.timelineHelper = new TimelineHelper();
    Intent localIntent = getIntent();
    long l1 = localIntent.getLongExtra("startTime", -1L);
    this.recognitionResult = localIntent.getStringExtra("recognitionResult");
    this.majelResponseBytes = localIntent.getByteArrayExtra("majelResponse");
    if (this.majelResponseBytes == null)
    {
      Log.w(TAG, "Null majel proto!");
      return;
    }
    this.timelineItemId = ((TimelineItemId)localIntent.getSerializableExtra("timelineItemId"));
    this.lastSavedTimelineItemId = null;
    try
    {
      MajelProtos.MajelResponse localMajelResponse = MajelProtos.MajelResponse.parseFrom(this.majelResponseBytes);
      if (SAVE_MAJEL_RESPONSE_PROTO)
        VoiceSearchResultsDebugActivity.saveMajelResponseProto(this.majelResponseBytes, this.recognitionResult);
      this.results = new MajelProcessor(this, this.recognitionResult).process(localMajelResponse, false);
      if (this.results == null)
      {
        new GlassError().setPrimaryMessageId(R.string.voice_search_no_answer).setIconId(R.drawable.ic_exclamation_big).setFinishWhenDone(true).setAutoHide(true).show(this);
        setVoiceConfig(VoiceConfig.OFF);
        return;
      }
    }
    catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
    {
      Log.e(TAG, localInvalidProtocolBufferMicroException.getMessage(), localInvalidProtocolBufferMicroException);
      return;
    }
    this.resultsContainerView = ((FrameLayout)findViewById(R.id.results_container));
    this.resultsView = ((VoiceSearchResultsHorizontalScrollView)this.resultsContainerView.findViewById(R.id.results));
    this.resultsView.setResultPages(this.results.getResultPages());
    if (this.results.getResultPageCount() > 1)
    {
      this.resultsSliderView = ((SliderView)this.resultsContainerView.findViewById(R.id.results_slider));
      this.resultsSliderView.setScrollView(this.resultsView);
      this.resultsSliderView.setCount(this.results.getResultPageCount());
    }
    String str1 = this.results.getViewAt(0).getClass().getSimpleName();
    if (l1 != -1L)
    {
      long l2 = getIntent().getLongExtra("endofSpeech", -1L);
      long l3 = System.currentTimeMillis() - l1;
      long l4 = System.currentTimeMillis() - l2;
      Long localLong = Long.valueOf(l1);
      Object[] arrayOfObject2 = new Object[10];
      arrayOfObject2[0] = "view";
      arrayOfObject2[1] = str1;
      arrayOfObject2[2] = "time_total";
      arrayOfObject2[3] = Long.valueOf(l3);
      arrayOfObject2[4] = "time_from_eos";
      arrayOfObject2[5] = Long.valueOf(l4);
      arrayOfObject2[6] = "results";
      arrayOfObject2[7] = Integer.valueOf(this.results.getResultPageCount());
      arrayOfObject2[8] = "type";
      arrayOfObject2[9] = Integer.valueOf(0);
      String str3 = UserEventHelper.createEventTuple("id", localLong, arrayOfObject2);
      logUserEvent(UserEventAction.VOICE_SEARCH_MAJEL_RESULT, str3);
    }
    while (true)
    {
      setVoiceConfig(VoiceConfig.OFF);
      if (this.timelineItemId != null)
        break;
      insertSearchInTimeline();
      if ((!Labs.isEnabled(Labs.Feature.WEB_BROWSING)) || ((!this.recognitionResult.endsWith(".com")) && (!this.recognitionResult.endsWith(".org")) && (!this.recognitionResult.endsWith(".edu")) && (!this.recognitionResult.endsWith(".net")) && (!this.recognitionResult.endsWith(".gov"))))
        break;
      invokeBrowser(getViewWebsiteUrl(this.results.getBundleAt(0)), buildBrowsingUserEventContextData(0, true));
      return;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = "results";
      arrayOfObject1[1] = Integer.valueOf(this.results.getResultPageCount());
      String str2 = UserEventHelper.createEventTuple("view", str1, arrayOfObject1);
      logUserEvent(UserEventAction.VOICE_SEARCH_FROM_TIMELINE, str2);
    }
  }

  public boolean onCreateOptionsMenu(OptionMenu paramOptionMenu)
  {
    return true;
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    HomeApplication.from(this).stopSpeaking();
    if (this.timelineItemId != null)
    {
      TimelineHelper.goToTimeline(this, this.timelineItemId);
      return super.onDismiss(paramDismissAction);
    }
    return super.onDismiss(paramDismissAction);
  }

  public boolean onFingerCountChanged(int paramInt, boolean paramBoolean)
  {
    if (this.resultsView != null)
      return this.resultsView.onFingerCountChanged(paramInt, paramBoolean);
    return super.onFingerCountChanged(paramInt, paramBoolean);
  }

  public boolean onOptionsItemSelected(OptionMenu.Item paramItem)
  {
    int i = paramItem.getItemId();
    int j = this.resultsView.getSelectedItemPosition();
    Bundle localBundle = this.results.getBundleAt(j);
    if (i == 8)
    {
      if (localBundle == null);
      for (String str2 = null; ; str2 = localBundle.getString("PHONE_NUMBER_KEY"))
      {
        BluetoothHeadset.attemptDial(this, str2);
        return true;
      }
    }
    if (i == 9)
    {
      if (localBundle != null)
      {
        Location localLocation = getLocation(localBundle);
        if (localLocation != null)
        {
          NavigationLauncher.navigate(localLocation, this);
          finish();
          return true;
        }
      }
      Log.w(TAG, "Navigation request did not include bundle with lat/lon");
    }
    do
    {
      do
      {
        return false;
        if (i != 5)
          break;
      }
      while (!(this.resultsView.getSelectedView() instanceof TranslationAnswerView));
      Log.v(TAG, "speaking translation for item " + j);
      final String str1 = localBundle.getString("URL_KEY");
      AsyncThreadExecutorManager.getSerialExecutor().execute(new Runnable()
      {
        public void run()
        {
          NetworkTts.getSharedInstance().requestTtsAndPlay(str1);
        }
      });
      return true;
    }
    while (i != 13);
    invokeBrowser(getViewWebsiteUrl(localBundle), buildBrowsingUserEventContextData(j, false));
    return true;
  }

  protected void onPause()
  {
    if (this.resultsView != null)
      this.resultsView.deactivate();
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(OptionMenu paramOptionMenu)
  {
    HomeApplication.from(this).stopSpeaking();
    if (this.resultsView == null);
    int i;
    do
    {
      return false;
      i = this.resultsView.getSelectedItemPosition();
    }
    while ((this.results.getOptionMenuAt(i) == null) || (this.results.getOptionMenuAt(i).getItemCount() == 0));
    paramOptionMenu.clearItems();
    ArrayList localArrayList = new ArrayList(this.results.getOptionMenuAt(i).getItems());
    if (!Labs.isEnabled(Labs.Feature.BLUETOOTH_HEADSET))
      removeMenuItemsWithAction(localArrayList, MenuItem.Action.VOICE_CALL);
    if (!HomeApplication.from(this).isNavigationAllowed())
      removeMenuItemsWithAction(localArrayList, MenuItem.Action.NAVIGATE);
    paramOptionMenu.addAllItems(localArrayList);
    return true;
  }

  public boolean onPrepareSwipe(int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2, int paramInt3)
  {
    if (this.results.getResultPageCount() > 1)
      return this.resultsView.onPrepareSwipe(paramInt1, paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramInt2, paramInt3);
    return false;
  }

  protected void onResume()
  {
    super.onResume();
    if (this.resultsView != null)
      this.resultsView.activate();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    if (super.onSwipe(paramInt, paramSwipeDirection))
      return true;
    if (this.results.getResultPageCount() > 1)
    {
      this.resultsView.onSwipe(paramInt, paramSwipeDirection);
      if ((!this.swipeLogged) && (paramSwipeDirection.equals(SwipeDirection.RIGHT)))
      {
        logUserEvent(UserEventAction.VOICE_SEARCH_SWIPE);
        this.swipeLogged = true;
      }
    }
    return false;
  }

  protected int provideContentView()
  {
    return R.layout.voice_search_results_activity;
  }

  protected boolean shouldScreenOffFinish()
  {
    return false;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.VoiceSearchResultsActivity
 * JD-Core Version:    0.6.2
 */