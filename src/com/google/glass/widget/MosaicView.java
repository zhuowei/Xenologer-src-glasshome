package com.google.glass.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.GridLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Predicate;
import com.google.common.collect.Lists;
import com.google.glass.common.R.id;
import com.google.glass.common.R.layout;
import com.google.glass.entity.EntityHelper;
import com.google.glass.util.DeferredContentLoader;
import com.google.glass.util.DeferredContentLoader.LoadingTask;
import com.google.glass.util.EntityImageDownloadTask;
import com.google.googlex.glass.common.proto.Entity;
import com.google.googlex.glass.common.proto.Entity.Builder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

public class MosaicView extends GridLayout
{
  private static final int CELL_LAYOUT_CACHE_CAPACITY = 80;
  private static final SparseArray<MosaicSpec> LANDSCAPE_MOSAIC_MAP;

  @VisibleForTesting
  protected static final int MAX_IMAGES_LANDSCAPE = 8;

  @VisibleForTesting
  protected static final int MAX_IMAGES_PORTRAIT = 5;
  private static final SparseArray<MosaicSpec> PORTRAIT_MOSAIC_MAP;
  private static final String TAG;
  private static final SparseArray<LinkedBlockingQueue<FrameLayout>> cellLayoutCache;
  private static final Predicate<Entity> hasImagePredicate;
  private static final Handler mainThreadHandler;
  private int entitySetIndex = 0;
  private final List<DeferredContentLoader.LoadingTask<?>> imageDownloadTasks = new ArrayList();

  static
  {
    if (!MosaicView.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      TAG = MosaicView.class.getSimpleName();
      LANDSCAPE_MOSAIC_MAP = new SparseArray();
      LANDSCAPE_MOSAIC_MAP.put(1, MosaicSpec.LANDSCAPE_1);
      LANDSCAPE_MOSAIC_MAP.put(2, MosaicSpec.LANDSCAPE_2);
      LANDSCAPE_MOSAIC_MAP.put(3, MosaicSpec.LANDSCAPE_3);
      LANDSCAPE_MOSAIC_MAP.put(4, MosaicSpec.LANDSCAPE_4);
      LANDSCAPE_MOSAIC_MAP.put(5, MosaicSpec.LANDSCAPE_5);
      LANDSCAPE_MOSAIC_MAP.put(6, MosaicSpec.LANDSCAPE_6);
      LANDSCAPE_MOSAIC_MAP.put(7, MosaicSpec.LANDSCAPE_7);
      LANDSCAPE_MOSAIC_MAP.put(8, MosaicSpec.LANDSCAPE_8);
      PORTRAIT_MOSAIC_MAP = new SparseArray();
      PORTRAIT_MOSAIC_MAP.put(1, MosaicSpec.PORTRAIT_1);
      PORTRAIT_MOSAIC_MAP.put(2, MosaicSpec.PORTRAIT_2);
      PORTRAIT_MOSAIC_MAP.put(3, MosaicSpec.PORTRAIT_3);
      PORTRAIT_MOSAIC_MAP.put(4, MosaicSpec.PORTRAIT_4);
      PORTRAIT_MOSAIC_MAP.put(5, MosaicSpec.PORTRAIT_5);
      cellLayoutCache = new SparseArray(80);
      mainThreadHandler = new Handler(Looper.getMainLooper());
      hasImagePredicate = new Predicate()
      {
        public boolean apply(Entity paramAnonymousEntity)
        {
          return paramAnonymousEntity.getImageUrlCount() > 0;
        }
      };
      return;
    }
  }

  public MosaicView(Context paramContext)
  {
    super(paramContext);
  }

  public MosaicView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MosaicView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void addCell(final int paramInt1, final Entity paramEntity, final int paramInt2, final int paramInt3, final int paramInt4, final int paramInt5, final GridLayout.LayoutParams paramLayoutParams)
  {
    if ((paramEntity == null) && (paramInt2 == -1))
      throw new IllegalArgumentException("Must supply an entity and/or a remainingCount");
    mainThreadHandler.post(new Runnable()
    {
      public void run()
      {
        if (paramInt1 != MosaicView.this.entitySetIndex)
          return;
        LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)MosaicView.cellLayoutCache.get(paramInt5);
        FrameLayout localFrameLayout = null;
        if (localLinkedBlockingQueue != null)
          localFrameLayout = (FrameLayout)localLinkedBlockingQueue.poll();
        if (localFrameLayout == null)
        {
          localFrameLayout = (FrameLayout)LayoutInflater.from(MosaicView.this.getContext()).inflate(paramInt5, null);
          localFrameLayout.setTag(R.id.tag_cell_layout_type, Integer.valueOf(paramInt5));
        }
        MosaicView.this.addView(localFrameLayout, paramLayoutParams);
        if (paramInt2 > 0)
        {
          MosaicView.this.bindRemainingCountView(localFrameLayout, paramEntity, paramInt2);
          return;
        }
        MosaicView.this.bindEntityView(localFrameLayout, paramEntity, paramInt3, paramInt4);
      }
    });
  }

  private void bindEntityView(FrameLayout paramFrameLayout, Entity paramEntity, int paramInt1, int paramInt2)
  {
    ImageView localImageView = (ImageView)paramFrameLayout.findViewById(R.id.image);
    TextView localTextView = (TextView)paramFrameLayout.findViewById(R.id.text);
    EntityImageDownloadTask localEntityImageDownloadTask = new EntityImageDownloadTask(getContext(), paramEntity, localImageView, localTextView, paramInt1, paramInt2);
    this.imageDownloadTasks.add(localEntityImageDownloadTask);
    DeferredContentLoader.loadForScrollItemSubview(this, localEntityImageDownloadTask);
  }

  private void bindRemainingCountView(FrameLayout paramFrameLayout, Entity paramEntity, int paramInt)
  {
    TextView localTextView = (TextView)paramFrameLayout.findViewById(R.id.text);
    if (paramEntity != null)
    {
      localTextView.setText(EntityHelper.getDisplayableName(paramEntity) + " +" + paramInt);
      return;
    }
    localTextView.setText("+" + paramInt);
  }

  private GridLayout.LayoutParams createLayoutParams(CellSpec paramCellSpec, int paramInt1, int paramInt2)
  {
    GridLayout.LayoutParams localLayoutParams = new GridLayout.LayoutParams(GridLayout.spec(paramCellSpec.row, paramCellSpec.rowSpan), GridLayout.spec(paramCellSpec.column, paramCellSpec.colSpan));
    localLayoutParams.width = (paramInt1 * paramCellSpec.colSpan);
    localLayoutParams.height = (paramInt2 * paramCellSpec.rowSpan);
    return localLayoutParams;
  }

  @VisibleForTesting
  protected static Pair<List<Entity>, GroupCountType> getDrawingEntities(List<Entity> paramList, int paramInt)
  {
    List localList = getEntitiesWithImages(paramList, paramInt);
    Entity localEntity1 = (Entity)paramList.get(0);
    if (!localList.contains(localEntity1))
      localList.add(0, localEntity1);
    int i = localList.size();
    if (localList.size() == 0)
      localList.addAll(paramList.subList(0, Math.min(2, paramList.size())));
    while (true)
    {
      if (localList.size() <= paramInt)
        break label170;
      return Pair.create(trimToSize(localList, paramInt - 1), GroupCountType.ADD_CELL);
      if (localList.size() == 1)
      {
        Iterator localIterator = paramList.iterator();
        if (localIterator.hasNext())
        {
          Entity localEntity2 = (Entity)localIterator.next();
          if (EntityHelper.doEntitiesMatch((Entity)localList.get(0), localEntity2))
            break;
          localList.add(localEntity2);
        }
      }
    }
    label170: if ((localList.size() == 2) && (paramList.size() > 2) && (i < 2))
      return Pair.create(localList, GroupCountType.IN_LAST_CELL);
    if (paramList.size() > localList.size())
      return Pair.create(trimToSize(localList, paramInt - 1), GroupCountType.ADD_CELL);
    return Pair.create(localList, GroupCountType.NONE);
  }

  @VisibleForTesting
  protected static List<Entity> getEntitiesWithImages(List<Entity> paramList, int paramInt)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    Iterator localIterator = paramList.iterator();
    do
    {
      Entity localEntity;
      do
      {
        if (!localIterator.hasNext())
          break;
        localEntity = (Entity)localIterator.next();
      }
      while (!hasImagePredicate.apply(localEntity));
      localLinkedList.add(localEntity);
    }
    while (localLinkedList.size() != paramInt);
    return localLinkedList;
  }

  @VisibleForTesting
  protected static <T> List<T> trimToSize(List<T> paramList, int paramInt)
  {
    if (paramList.size() > paramInt)
      paramList = paramList.subList(0, paramInt);
    return paramList;
  }

  public void cancelImageDownloads()
  {
    DeferredContentLoader.cancel(this.imageDownloadTasks);
    this.imageDownloadTasks.clear();
  }

  public void clearImages()
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      FrameLayout localFrameLayout = (FrameLayout)getChildAt(i);
      int j = ((Integer)localFrameLayout.getTag(R.id.tag_cell_layout_type)).intValue();
      ImageView localImageView = (ImageView)localFrameLayout.findViewById(R.id.image);
      if (localImageView != null)
        localImageView.setImageDrawable(null);
      TextView localTextView = (TextView)localFrameLayout.findViewById(R.id.text);
      if (localTextView != null)
        localTextView.setText("");
      LinkedBlockingQueue localLinkedBlockingQueue = (LinkedBlockingQueue)cellLayoutCache.get(j);
      if (localLinkedBlockingQueue == null)
      {
        localLinkedBlockingQueue = new LinkedBlockingQueue(80);
        cellLayoutCache.put(j, localLinkedBlockingQueue);
      }
      localLinkedBlockingQueue.offer(localFrameLayout);
    }
    removeAllViews();
  }

  public int getMaxNumSupportedEntities(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2)
      return 8;
    return 5;
  }

  public void setEntities(List<Entity> paramList, int paramInt1, int paramInt2)
  {
    if ((paramList == null) || (paramList.isEmpty()))
      Log.w(TAG, "No entities set for mosaic.");
    List localList;
    GroupCountType localGroupCountType;
    int i;
    MosaicSpec localMosaicSpec;
    int j;
    int k;
    do
    {
      return;
      this.entitySetIndex = (1 + this.entitySetIndex);
      Pair localPair = getDrawingEntities(paramList, getMaxNumSupportedEntities(paramInt1, paramInt2));
      localList = (List)localPair.first;
      localGroupCountType = (GroupCountType)localPair.second;
      assert (localList.size() <= paramList.size());
      i = localList.size();
      if (localGroupCountType == GroupCountType.ADD_CELL)
        i++;
      if (paramInt1 > paramInt2);
      for (localMosaicSpec = (MosaicSpec)LANDSCAPE_MOSAIC_MAP.get(i); localMosaicSpec == null; localMosaicSpec = (MosaicSpec)PORTRAIT_MOSAIC_MAP.get(i))
      {
        Log.w(TAG, "BUG: missing mosaic specification for " + i);
        return;
      }
      setColumnCount(localMosaicSpec.columns);
      setRowCount(localMosaicSpec.rows);
      j = paramInt1 / localMosaicSpec.columns;
      k = paramInt2 / localMosaicSpec.rows;
      clearImages();
      cancelImageDownloads();
      int m = 0;
      int n = localList.size();
      if (m < n)
      {
        CellSpec localCellSpec = localMosaicSpec.cellSpecs[m];
        GridLayout.LayoutParams localLayoutParams2 = createLayoutParams(localCellSpec, j, k);
        int i1;
        if (localGroupCountType == GroupCountType.IN_LAST_CELL)
        {
          int i3 = -1 + localList.size();
          if (m == i3)
            i1 = paramList.size() - localList.size();
        }
        for (int i2 = localMosaicSpec.embededRemainingCountLayoutId; ; i2 = localCellSpec.layoutId)
        {
          addCell(this.entitySetIndex, (Entity)localList.get(m), i1, localLayoutParams2.width, localLayoutParams2.height, i2, localLayoutParams2);
          m++;
          break;
          i1 = -1;
        }
      }
    }
    while (localGroupCountType != GroupCountType.ADD_CELL);
    GridLayout.LayoutParams localLayoutParams1 = createLayoutParams(localMosaicSpec.cellSpecs[(i - 1)], j, k);
    addCell(this.entitySetIndex, null, paramList.size() - localList.size(), localLayoutParams1.width, localLayoutParams1.height, localMosaicSpec.remainingLayoutId, localLayoutParams1);
  }

  public void setImageUrls(List<String> paramList, int paramInt1, int paramInt2)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      Log.w(TAG, "No image URLs set for mosaic.");
      return;
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    for (int i = 0; i < paramList.size(); i++)
      localArrayList.add(Entity.newBuilder().setId(Integer.toString(i)).addImageUrl((String)paramList.get(i)).build());
    setEntities(localArrayList, paramInt1, paramInt2);
  }

  private static class CellSpec
  {
    int colSpan;
    int column;
    int layoutId;
    int row;
    int rowSpan;

    private CellSpec(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      this.row = paramInt1;
      this.column = paramInt2;
      this.colSpan = paramInt4;
      this.rowSpan = paramInt3;
      this.layoutId = paramInt5;
    }
  }

  @VisibleForTesting
  protected static enum GroupCountType
  {
    static
    {
      ADD_CELL = new GroupCountType("ADD_CELL", 1);
      IN_LAST_CELL = new GroupCountType("IN_LAST_CELL", 2);
      GroupCountType[] arrayOfGroupCountType = new GroupCountType[3];
      arrayOfGroupCountType[0] = NONE;
      arrayOfGroupCountType[1] = ADD_CELL;
      arrayOfGroupCountType[2] = IN_LAST_CELL;
    }
  }

  private static enum MosaicSpec
  {
    MosaicView.CellSpec[] cellSpecs;
    int columns;
    int embededRemainingCountLayoutId;
    int remainingLayoutId;
    int rows;

    static
    {
      MosaicView.CellSpec[] arrayOfCellSpec1 = new MosaicView.CellSpec[1];
      arrayOfCellSpec1[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec1 = new MosaicSpec("LANDSCAPE_1", 0, 1, 1, arrayOfCellSpec1, -1, -1);
      LANDSCAPE_1 = localMosaicSpec1;
      MosaicView.CellSpec[] arrayOfCellSpec2 = new MosaicView.CellSpec[2];
      arrayOfCellSpec2[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec2[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec2 = new MosaicSpec("LANDSCAPE_2", 1, 1, 2, arrayOfCellSpec2, R.layout.mosaic_cell_big_remaining, -1);
      LANDSCAPE_2 = localMosaicSpec2;
      MosaicView.CellSpec[] arrayOfCellSpec3 = new MosaicView.CellSpec[3];
      arrayOfCellSpec3[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec3[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec3[2] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec3 = new MosaicSpec("LANDSCAPE_3", 2, 1, 3, arrayOfCellSpec3, R.layout.mosaic_cell_big_remaining, -1);
      LANDSCAPE_3 = localMosaicSpec3;
      MosaicView.CellSpec[] arrayOfCellSpec4 = new MosaicView.CellSpec[4];
      arrayOfCellSpec4[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec4[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec4[2] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec4[3] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_medium, null);
      MosaicSpec localMosaicSpec4 = new MosaicSpec("LANDSCAPE_4", 3, 2, 2, arrayOfCellSpec4, R.layout.mosaic_cell_medium_remaining, -1);
      LANDSCAPE_4 = localMosaicSpec4;
      MosaicView.CellSpec[] arrayOfCellSpec5 = new MosaicView.CellSpec[5];
      arrayOfCellSpec5[0] = new MosaicView.CellSpec(0, 0, 2, 2, R.layout.mosaic_cell_big, null);
      arrayOfCellSpec5[1] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec5[2] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec5[3] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec5[4] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec5 = new MosaicSpec("LANDSCAPE_5", 4, 2, 4, arrayOfCellSpec5, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_5 = localMosaicSpec5;
      MosaicView.CellSpec[] arrayOfCellSpec6 = new MosaicView.CellSpec[6];
      arrayOfCellSpec6[0] = new MosaicView.CellSpec(0, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec6[1] = new MosaicView.CellSpec(1, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec6[2] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec6[3] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec6[4] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec6[5] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec6 = new MosaicSpec("LANDSCAPE_6", 5, 2, 4, arrayOfCellSpec6, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_6 = localMosaicSpec6;
      MosaicView.CellSpec[] arrayOfCellSpec7 = new MosaicView.CellSpec[7];
      arrayOfCellSpec7[0] = new MosaicView.CellSpec(0, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec7[1] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[2] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[3] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[4] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[5] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec7[6] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec7 = new MosaicSpec("LANDSCAPE_7", 6, 2, 4, arrayOfCellSpec7, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_7 = localMosaicSpec7;
      MosaicView.CellSpec[] arrayOfCellSpec8 = new MosaicView.CellSpec[8];
      arrayOfCellSpec8[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[1] = new MosaicView.CellSpec(0, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[2] = new MosaicView.CellSpec(0, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[3] = new MosaicView.CellSpec(0, 3, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[4] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[5] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[6] = new MosaicView.CellSpec(1, 2, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec8[7] = new MosaicView.CellSpec(1, 3, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec8 = new MosaicSpec("LANDSCAPE_8", 7, 2, 4, arrayOfCellSpec8, R.layout.mosaic_cell_small_remaining, -1);
      LANDSCAPE_8 = localMosaicSpec8;
      MosaicView.CellSpec[] arrayOfCellSpec9 = new MosaicView.CellSpec[1];
      arrayOfCellSpec9[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_big, null);
      MosaicSpec localMosaicSpec9 = new MosaicSpec("PORTRAIT_1", 8, 1, 1, arrayOfCellSpec9, -1, -1);
      PORTRAIT_1 = localMosaicSpec9;
      MosaicView.CellSpec[] arrayOfCellSpec10 = new MosaicView.CellSpec[2];
      arrayOfCellSpec10[0] = new MosaicView.CellSpec(0, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec10[1] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_medium, null);
      MosaicSpec localMosaicSpec10 = new MosaicSpec("PORTRAIT_2", 9, 2, 1, arrayOfCellSpec10, -1, R.layout.mosaic_cell_medium_embedded_remaining);
      PORTRAIT_2 = localMosaicSpec10;
      MosaicView.CellSpec[] arrayOfCellSpec11 = new MosaicView.CellSpec[3];
      arrayOfCellSpec11[0] = new MosaicView.CellSpec(0, 0, 1, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec11[1] = new MosaicView.CellSpec(1, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec11[2] = new MosaicView.CellSpec(1, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec11 = new MosaicSpec("PORTRAIT_3", 10, 2, 2, arrayOfCellSpec11, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_3 = localMosaicSpec11;
      MosaicView.CellSpec[] arrayOfCellSpec12 = new MosaicView.CellSpec[4];
      arrayOfCellSpec12[0] = new MosaicView.CellSpec(0, 0, 2, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec12[1] = new MosaicView.CellSpec(2, 0, 1, 2, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec12[2] = new MosaicView.CellSpec(3, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec12[3] = new MosaicView.CellSpec(3, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec12 = new MosaicSpec("PORTRAIT_4", 11, 4, 2, arrayOfCellSpec12, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_4 = localMosaicSpec12;
      MosaicView.CellSpec[] arrayOfCellSpec13 = new MosaicView.CellSpec[5];
      arrayOfCellSpec13[0] = new MosaicView.CellSpec(0, 0, 2, 2, R.layout.mosaic_cell_medium, null);
      arrayOfCellSpec13[1] = new MosaicView.CellSpec(2, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec13[2] = new MosaicView.CellSpec(2, 1, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec13[3] = new MosaicView.CellSpec(3, 0, 1, 1, R.layout.mosaic_cell_small, null);
      arrayOfCellSpec13[4] = new MosaicView.CellSpec(3, 1, 1, 1, R.layout.mosaic_cell_small, null);
      MosaicSpec localMosaicSpec13 = new MosaicSpec("PORTRAIT_5", 12, 4, 2, arrayOfCellSpec13, R.layout.mosaic_cell_small_remaining, -1);
      PORTRAIT_5 = localMosaicSpec13;
      MosaicSpec[] arrayOfMosaicSpec = new MosaicSpec[13];
      arrayOfMosaicSpec[0] = LANDSCAPE_1;
      arrayOfMosaicSpec[1] = LANDSCAPE_2;
      arrayOfMosaicSpec[2] = LANDSCAPE_3;
      arrayOfMosaicSpec[3] = LANDSCAPE_4;
      arrayOfMosaicSpec[4] = LANDSCAPE_5;
      arrayOfMosaicSpec[5] = LANDSCAPE_6;
      arrayOfMosaicSpec[6] = LANDSCAPE_7;
      arrayOfMosaicSpec[7] = LANDSCAPE_8;
      arrayOfMosaicSpec[8] = PORTRAIT_1;
      arrayOfMosaicSpec[9] = PORTRAIT_2;
      arrayOfMosaicSpec[10] = PORTRAIT_3;
      arrayOfMosaicSpec[11] = PORTRAIT_4;
      arrayOfMosaicSpec[12] = PORTRAIT_5;
    }

    private MosaicSpec(int paramInt1, int paramInt2, MosaicView.CellSpec[] paramArrayOfCellSpec, int paramInt3, int paramInt4)
    {
      this.rows = paramInt1;
      this.columns = paramInt2;
      this.cellSpecs = paramArrayOfCellSpec;
      this.embededRemainingCountLayoutId = paramInt4;
      this.remainingLayoutId = paramInt3;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.MosaicView
 * JD-Core Version:    0.6.2
 */