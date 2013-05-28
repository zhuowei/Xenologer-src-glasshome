package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface SyncRequestOrBuilder extends MessageOrBuilder
{
  public abstract Delete getDelete(int paramInt);

  public abstract int getDeleteCount();

  public abstract List<Delete> getDeleteList();

  public abstract DeleteOrBuilder getDeleteOrBuilder(int paramInt);

  public abstract List<? extends DeleteOrBuilder> getDeleteOrBuilderList();

  public abstract String getDeviceId();

  public abstract ByteString getDeviceIdBytes();

  public abstract InsertReplaceOnConflict getInsertReplaceOnConflict(int paramInt);

  public abstract int getInsertReplaceOnConflictCount();

  public abstract List<InsertReplaceOnConflict> getInsertReplaceOnConflictList();

  public abstract InsertReplaceOnConflictOrBuilder getInsertReplaceOnConflictOrBuilder(int paramInt);

  public abstract List<? extends InsertReplaceOnConflictOrBuilder> getInsertReplaceOnConflictOrBuilderList();

  public abstract Select getSelect();

  public abstract SelectOrBuilder getSelectOrBuilder();

  public abstract boolean getSupportsUserActions();

  public abstract Update getUpdate(int paramInt);

  public abstract int getUpdateCount();

  public abstract List<Update> getUpdateList();

  public abstract UpdateOrBuilder getUpdateOrBuilder(int paramInt);

  public abstract List<? extends UpdateOrBuilder> getUpdateOrBuilderList();

  public abstract boolean hasDeviceId();

  public abstract boolean hasSelect();

  public abstract boolean hasSupportsUserActions();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SyncRequestOrBuilder
 * JD-Core Version:    0.6.2
 */