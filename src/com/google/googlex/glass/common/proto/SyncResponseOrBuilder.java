package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface SyncResponseOrBuilder extends MessageOrBuilder
{
  public abstract String getDeleteFailedItemIds(int paramInt);

  public abstract ByteString getDeleteFailedItemIdsBytes(int paramInt);

  public abstract int getDeleteFailedItemIdsCount();

  public abstract List<String> getDeleteFailedItemIdsList();

  public abstract String getInsertFailedItemIds(int paramInt);

  public abstract ByteString getInsertFailedItemIdsBytes(int paramInt);

  public abstract int getInsertFailedItemIdsCount();

  public abstract List<String> getInsertFailedItemIdsList();

  public abstract SyncResponse.ResponseCode getResponseCode();

  public abstract ByteString getSelectContinuationToken();

  public abstract long getSelectMaxWriteTimestamp();

  public abstract long getSelectStartTime();

  public abstract TimelineItem getSelectedItems(int paramInt);

  public abstract int getSelectedItemsCount();

  public abstract List<TimelineItem> getSelectedItemsList();

  public abstract TimelineItemOrBuilder getSelectedItemsOrBuilder(int paramInt);

  public abstract List<? extends TimelineItemOrBuilder> getSelectedItemsOrBuilderList();

  public abstract ByteString getSyncContinuationToken();

  public abstract long getSyncEndTime();

  public abstract long getSyncStartTime();

  public abstract String getUpdateFailedItemIds(int paramInt);

  public abstract ByteString getUpdateFailedItemIdsBytes(int paramInt);

  public abstract int getUpdateFailedItemIdsCount();

  public abstract List<String> getUpdateFailedItemIdsList();

  public abstract boolean hasResponseCode();

  public abstract boolean hasSelectContinuationToken();

  public abstract boolean hasSelectMaxWriteTimestamp();

  public abstract boolean hasSelectStartTime();

  public abstract boolean hasSyncContinuationToken();

  public abstract boolean hasSyncEndTime();

  public abstract boolean hasSyncStartTime();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SyncResponseOrBuilder
 * JD-Core Version:    0.6.2
 */