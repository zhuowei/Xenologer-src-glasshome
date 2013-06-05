.class public Lcom/google/glass/companion/CompanionUtils;
.super Ljava/lang/Object;
.source "CompanionUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/companion/CompanionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, text:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 129
    sget-object v3, Lcom/google/glass/companion/CompanionUtils;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t append Glass signature to null text"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local p1
    :goto_0
    return-object p1

    .line 134
    .restart local p1
    :cond_0
    sget v3, Lcom/google/glass/common/R$string;->timeline_sms_signature:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, signature:Ljava/lang/String;
    sget v3, Lcom/google/glass/common/R$string;->timeline_sms_signature_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, signedText:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    goto :goto_0
.end method

.method public static generateSmsSpeakableText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayName"
    .parameter "body"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, speakableText:Ljava/lang/StringBuilder;
    const-string v1, "Text message. From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Unknown person"

    .end local p0
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    const-string v1, " Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCompanionSmsTimelineItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 7
    .parameter "context"
    .parameter "body"
    .parameter "displayName"
    .parameter "sender"
    .parameter "timestamp"
    .parameter "isNativeSms"

    .prologue
    .line 75
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    const-string v4, "companion:"

    new-instance v5, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, v3, v4, v5}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;Ljava/lang/String;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v1

    .line 79
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    .line 80
    .local v0, creator:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v0, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "companion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p6, :cond_0

    const-string v3, "com.android.mms"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, smsCompanionwareId:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 85
    invoke-virtual {v0, p3}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 86
    invoke-virtual {v0, p3}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 87
    invoke-virtual {v1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreationTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 88
    invoke-virtual {v1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setDisplayTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 89
    invoke-virtual {v1, p4, p5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 90
    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 91
    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 95
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncProtocol(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 96
    sget-object v3, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;->SYNCED:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCompanionSyncStatus(Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 97
    invoke-static {p2, p1}, Lcom/google/glass/companion/CompanionUtils;->generateSmsSpeakableText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSpeakableText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 98
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 99
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 100
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 101
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->setAction(Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->build()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addMenuItem(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 102
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    return-object v3

    .line 81
    .end local v2           #smsCompanionwareId:Ljava/lang/String;
    :cond_0
    const-string v3, "com.google.android.apps.googlevoice"

    goto :goto_0
.end method

.method public static getComponentFromSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"

    .prologue
    .line 53
    const-string v0, "companion:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "companion:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lcom/google/glass/companion/CompanionUtils;->TAG:Ljava/lang/String;

    const-string v1, "not a companion component."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMajorVersion(I)I
    .locals 1
    .parameter "version"

    .prologue
    .line 46
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getMinorVersion(I)I
    .locals 1
    .parameter "version"

    .prologue
    .line 39
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getSmsBundleId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 31
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/HashUtil;->hashPiiField(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendTimelineItem(Landroid/content/Context;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 2
    .parameter "context"
    .parameter "companionProxy"
    .parameter "item"

    .prologue
    .line 196
    invoke-static {p0, p2}, Lcom/google/glass/companion/CompanionUtils;->appendGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 197
    .local v0, itemToSend:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelopeBuilder()Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/companion/Proto$Envelope$Builder;->addTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$Envelope$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope$Builder;->build()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Lcom/google/glass/companion/Proto$Envelope;)Z

    move-result v1

    return v1
.end method

.method public static stripGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getText()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, text:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 149
    sget-object v3, Lcom/google/glass/companion/CompanionUtils;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t strip Glass signature from null text"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 153
    .restart local p1
    :cond_1
    sget v3, Lcom/google/glass/common/R$string;->timeline_sms_signature:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, signature:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, strippedText:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object p1

    goto :goto_0
.end method

.method public static updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;Lcom/google/glass/timeline/TimelineHelper;Z)V
    .locals 4
    .parameter "context"
    .parameter "itemId"
    .parameter "syncStatus"
    .parameter "timelineHelper"
    .parameter "async"

    .prologue
    .line 171
    sget-object v1, Lcom/google/glass/companion/CompanionUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating sync status of item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Lcom/google/glass/companion/CompanionUtils$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/google/glass/companion/CompanionUtils$1;-><init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineItem$SyncStatus;)V

    .line 184
    .local v0, update:Lcom/google/glass/timeline/TimelineHelper$Update;
    if-eqz p4, :cond_0

    .line 185
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    goto :goto_0
.end method
