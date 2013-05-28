package com.google.googlex.glass.common.proto;

import com.google.protobuf.ByteString;
import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface TimelineItemOrBuilder extends MessageOrBuilder
{
  public abstract Attachment getAttachment(int paramInt);

  public abstract int getAttachmentCount();

  public abstract List<Attachment> getAttachmentList();

  public abstract AttachmentOrBuilder getAttachmentOrBuilder(int paramInt);

  public abstract List<? extends AttachmentOrBuilder> getAttachmentOrBuilderList();

  public abstract String getBundleId();

  public abstract ByteString getBundleIdBytes();

  public abstract String getCanonicalUrl();

  public abstract ByteString getCanonicalUrlBytes();

  public abstract TimelineItem.SyncProtocol getCloudSyncProtocol();

  public abstract TimelineItem.SyncStatus getCloudSyncStatus();

  public abstract TimelineItem.SyncProtocol getCompanionSyncProtocol();

  public abstract TimelineItem.SyncStatus getCompanionSyncStatus();

  public abstract long getCreationTime();

  public abstract Entity getCreator();

  public abstract EntityOrBuilder getCreatorOrBuilder();

  public abstract long getDisplayTime();

  public abstract String getHtml();

  public abstract ByteString getHtmlBytes();

  public abstract String getHtmlPage(int paramInt);

  public abstract ByteString getHtmlPageBytes(int paramInt);

  public abstract int getHtmlPageCount();

  public abstract List<String> getHtmlPageList();

  public abstract String getId();

  public abstract ByteString getIdBytes();

  public abstract String getInReplyTo();

  public abstract ByteString getInReplyToBytes();

  public abstract boolean getIsBundleCover();

  public abstract boolean getIsDeleted();

  public abstract boolean getIsPinned();

  public abstract Location getLocation();

  public abstract LocationOrBuilder getLocationOrBuilder();

  public abstract MenuItem getMenuItem(int paramInt);

  public abstract int getMenuItemCount();

  public abstract List<MenuItem> getMenuItemList();

  public abstract MenuItemOrBuilder getMenuItemOrBuilder(int paramInt);

  public abstract List<? extends MenuItemOrBuilder> getMenuItemOrBuilderList();

  public abstract long getModifiedTime();

  public abstract NotificationConfig getNotification();

  public abstract NotificationConfigOrBuilder getNotificationOrBuilder();

  @Deprecated
  public abstract MenuItem getPendingAction(int paramInt);

  @Deprecated
  public abstract int getPendingActionCount();

  @Deprecated
  public abstract List<MenuItem> getPendingActionList();

  @Deprecated
  public abstract MenuItemOrBuilder getPendingActionOrBuilder(int paramInt);

  @Deprecated
  public abstract List<? extends MenuItemOrBuilder> getPendingActionOrBuilderList();

  public abstract int getPinScore();

  public abstract long getPinTime();

  @Deprecated
  public abstract String getSendToPhoneUrl();

  @Deprecated
  public abstract ByteString getSendToPhoneUrlBytes();

  public abstract Entity getShareTarget(int paramInt);

  public abstract int getShareTargetCount();

  public abstract List<Entity> getShareTargetList();

  public abstract EntityOrBuilder getShareTargetOrBuilder(int paramInt);

  public abstract List<? extends EntityOrBuilder> getShareTargetOrBuilderList();

  @Deprecated
  public abstract TimelineItem.SmsType getSmsType();

  public abstract String getSource();

  public abstract ByteString getSourceBytes();

  public abstract String getSourceItemId();

  public abstract ByteString getSourceItemIdBytes();

  public abstract TimelineItem.SourceType getSourceType();

  public abstract String getSpeakableText();

  public abstract ByteString getSpeakableTextBytes();

  public abstract String getText();

  public abstract ByteString getTextBytes();

  public abstract String getTitle();

  public abstract ByteString getTitleBytes();

  public abstract boolean hasBundleId();

  public abstract boolean hasCanonicalUrl();

  public abstract boolean hasCloudSyncProtocol();

  public abstract boolean hasCloudSyncStatus();

  public abstract boolean hasCompanionSyncProtocol();

  public abstract boolean hasCompanionSyncStatus();

  public abstract boolean hasCreationTime();

  public abstract boolean hasCreator();

  public abstract boolean hasDisplayTime();

  public abstract boolean hasHtml();

  public abstract boolean hasId();

  public abstract boolean hasInReplyTo();

  public abstract boolean hasIsBundleCover();

  public abstract boolean hasIsDeleted();

  public abstract boolean hasIsPinned();

  public abstract boolean hasLocation();

  public abstract boolean hasModifiedTime();

  public abstract boolean hasNotification();

  public abstract boolean hasPinScore();

  public abstract boolean hasPinTime();

  @Deprecated
  public abstract boolean hasSendToPhoneUrl();

  @Deprecated
  public abstract boolean hasSmsType();

  public abstract boolean hasSource();

  public abstract boolean hasSourceItemId();

  public abstract boolean hasSourceType();

  public abstract boolean hasSpeakableText();

  public abstract boolean hasText();

  public abstract boolean hasTitle();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.TimelineItemOrBuilder
 * JD-Core Version:    0.6.2
 */