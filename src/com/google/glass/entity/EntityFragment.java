package com.google.glass.entity;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.ResourceCursorAdapter;
import com.google.glass.app.GlassActivity;
import com.google.glass.app.GlassFragment;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.horizontalscroll.BaseHorizontalScrollView;
import com.google.glass.horizontalscroll.ViewRecycler;
import com.google.glass.input.InputListener.DismissAction;
import com.google.glass.input.SwipeDirection;
import com.google.googlex.glass.common.proto.Entity;

public class EntityFragment extends GlassFragment
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private static final String[] COLUMNNS = { "_id", "protobuf_blob" };
  private static final int CURSOR_LOADER_ID = 0;
  public static final String FRAGMENT_ID = "entity";
  private EntityAdapter adapter;
  private final Uri entityUri;
  private EntityHorizontalScrollView view;

  public EntityFragment(Uri paramUri)
  {
    if (paramUri == null)
      throw new NullPointerException();
    this.entityUri = paramUri;
  }

  public boolean onConfirm()
  {
    return this.view.onConfirm((GlassActivity)getActivity(), true);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.adapter = new EntityAdapter(getActivity());
    getLoaderManager().initLoader(0, null, this);
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new CursorLoader(getActivity(), this.entityUri, COLUMNNS, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.view = new EntityHorizontalScrollView(getActivity(), null);
    this.view.setAdapter(this.adapter);
    return this.view;
  }

  public void onDestroy()
  {
    super.onDestroy();
    getLoaderManager().destroyLoader(0);
    Cursor localCursor = this.adapter.getCursor();
    if (localCursor != null)
      localCursor.close();
  }

  public boolean onDismiss(InputListener.DismissAction paramDismissAction)
  {
    if (paramDismissAction == InputListener.DismissAction.SWIPE_DOWN)
    {
      getFragmentManager().beginTransaction().hide(this).commit();
      return true;
    }
    return false;
  }

  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    this.adapter.swapCursor(paramCursor);
    this.view.setSelection(0);
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    this.adapter.swapCursor(null);
  }

  public void onPause()
  {
    super.onPause();
    this.view.deactivate();
  }

  public void onResume()
  {
    super.onResume();
    this.view.activate();
  }

  public boolean onSwipe(int paramInt, SwipeDirection paramSwipeDirection)
  {
    this.view.onSwipe(paramInt, paramSwipeDirection);
    return true;
  }

  private static class EntityAdapter extends ResourceCursorAdapter
    implements ViewRecycler
  {
    public EntityAdapter(Context paramContext)
    {
      super(R.layout.entity_view, null, false);
    }

    public void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      Entity localEntity = EntityHelper.fromCursor(paramCursor);
      ((EntityItemView)paramView).bind(localEntity);
    }

    public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
    {
      View localView = super.newView(paramContext, paramCursor, paramViewGroup);
      localView.setTag(R.id.tag_horizontal_scroll_item_view_recycler, this);
      return localView;
    }

    public void recycleView(View paramView)
    {
    }
  }

  private static class EntityHorizontalScrollView extends BaseHorizontalScrollView<String, Entity>
  {
    public EntityHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet, false);
    }

    public int findIdPosition(String paramString)
    {
      return -1;
    }

    public int findItemPosition(Entity paramEntity)
    {
      return -1;
    }

    public int getHomePosition()
    {
      return 0;
    }

    public View getViewForPosition(int paramInt)
    {
      return getAdapter().getView(paramInt, null, this);
    }

    public void rebindView(int paramInt, View paramView)
    {
      getAdapter().getView(paramInt, paramView, this);
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityFragment
 * JD-Core Version:    0.6.2
 */