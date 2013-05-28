package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface EntityOrBuilder extends MessageOrBuilder
{
  public abstract String getAcceptType(int paramInt);

  public abstract ByteString getAcceptTypeBytes(int paramInt);

  public abstract int getAcceptTypeCount();

  public abstract List<String> getAcceptTypeList();

  public abstract String getDisplayName();

  public abstract ByteString getDisplayNameBytes();

  public abstract String getEmail();

  public abstract ByteString getEmailBytes();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract String getImageUrl(int paramInt);

  public abstract ByteString getImageUrlBytes(int paramInt);

  public abstract int getImageUrlCount();

  public abstract List<String> getImageUrlList();

  public abstract boolean getIsCommunicationTarget();

  public abstract String getPhoneNumber();

  public abstract ByteString getPhoneNumberBytes();

  public abstract Entity.Priority getPriority();

  public abstract Entity.PriorityOrBuilder getPriorityOrBuilder();

  public abstract String getSecondaryEmail(int paramInt);

  public abstract ByteString getSecondaryEmailBytes(int paramInt);

  public abstract int getSecondaryEmailCount();

  public abstract List<String> getSecondaryEmailList();

  public abstract String getSecondaryPhoneNumber(int paramInt);

  public abstract ByteString getSecondaryPhoneNumberBytes(int paramInt);

  public abstract int getSecondaryPhoneNumberCount();

  public abstract List<String> getSecondaryPhoneNumberList();

  public abstract boolean getShouldSync();

  public abstract String getSource();

  public abstract ByteString getSourceBytes();

  public abstract Entity.Type getType();

  public abstract boolean hasDisplayName();

  public abstract boolean hasEmail();

  public abstract boolean hasId();

  public abstract boolean hasIsCommunicationTarget();

  public abstract boolean hasPhoneNumber();

  public abstract boolean hasPriority();

  public abstract boolean hasShouldSync();

  public abstract boolean hasSource();

  public abstract boolean hasType();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.EntityOrBuilder
 * JD-Core Version:    0.6.2
 */