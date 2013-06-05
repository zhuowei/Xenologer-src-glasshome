.class public Lcom/google/glass/entity/EntityHelper;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityHelper$EntityData;
    }
.end annotation


# static fields
.field public static final ACTION_ENTITY_CACHE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_CACHE_CHANGED"

.field private static final ACTION_ENTITY_SYNC_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_SYNC_CHANGED"

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final FOCUS_GLASSWARE_SOURCE:Ljava/lang/String; = "api:823483604716"

.field private static final GMAIL_DOMAINS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_WHERE:Ljava/lang/String; = "(_id=? AND source=?)"

.field private static final MAX_AUTOPOPULATED_SHARE_TARGETS:I = 0x19

.field private static final MAX_SPEAKABLE_COMMUNICATION_TARGETS:I = 0xa

.field public static final MAX_SPEAKABLE_PLUS_SHARE_TARGETS:I = 0xf

.field private static final PHONE_NUMBER_SEPARATOR:Ljava/lang/String; = ","

.field public static final PLUS_GLASSWARE_SOURCE:Ljava/lang/String; = "api:442840586513"

.field public static final RECENT_ENTITIES_MAX_NUMBER:I = 0x4

.field public static final SHARE_COUNT_MAX_NUMBER:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static packageNameForTest:Ljava/lang/String;

.field private static final sanitizedEmailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sanitizedStrippedEmailCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedInstance:Lcom/google/glass/entity/EntityHelper;


# instance fields
.field private final clock:Lcom/google/glass/util/Clock;

.field private final entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final entityDataCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 52
    const-class v0, Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    .line 94
    const-string v0, "^([^+]+)(\\+[^@]+)?(@[^.]+)(\\..+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    .line 102
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@gmail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@googlemail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DASHER_DOMAIN"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    .line 134
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 141
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityHelper;-><init>(Lcom/google/glass/util/Clock;)V

    .line 165
    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/Clock;)V
    .locals 1
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    .line 248
    new-instance v0, Lcom/google/glass/entity/EntityHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/EntityHelper$1;-><init>(Lcom/google/glass/entity/EntityHelper;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 183
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    .line 184
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static doEntitiesMatch(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 766
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v3

    .line 771
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 772
    goto :goto_0

    .line 775
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 776
    .local v2, secondId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, secondEmail:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, compare:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 780
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 784
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 791
    goto :goto_0
.end method

.method private extractRecentlyUsedShareTargets(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    const/4 v12, 0x4

    .line 434
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v8}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v3, v8, v10

    .line 438
    .local v3, recentShareBoostCutoff:J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 439
    .local v5, recentShares:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 440
    .local v7, shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-wide v8, v7, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    cmp-long v8, v8, v3

    if-lez v8, :cond_0

    .line 441
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    .end local v7           #shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    new-instance v8, Lcom/google/glass/entity/EntityHelper$2;

    invoke-direct {v8, p0}, Lcom/google/glass/entity/EntityHelper$2;-><init>(Lcom/google/glass/entity/EntityHelper;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 454
    invoke-static {v12}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 455
    .local v6, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 456
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 457
    .local v2, recentEntityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v8, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    .end local v2           #recentEntityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_2
    return-object v6
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 860
    const-string v0, "protobuf_blob"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method static fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityHelper$EntityData;
    .locals 14
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 866
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 869
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 870
    .local v2, phoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "phone_number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 871
    .local v11, primaryPhone:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 872
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_0
    const-string v0, "secondary_phone_numbers"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 876
    .local v13, secondaryPhoneListStr:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 877
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, arr$:[Ljava/lang/String;
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v12, v8, v9

    .line 878
    .local v12, secondaryPhone:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 883
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #secondaryPhone:Ljava/lang/String;
    :cond_1
    const-string v0, "email"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, sanitizedEmail:Ljava/lang/String;
    const-string v0, "share_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 886
    .local v4, shareTime:J
    const-string v0, "share_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 887
    .local v6, shareCount:I
    const-string v0, "share_priority"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 888
    .local v7, priority:I
    new-instance v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/entity/EntityHelper$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;Ljava/lang/String;JII)V

    return-object v0
.end method

.method public static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 4
    .parameter "data"

    .prologue
    .line 899
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 905
    :goto_0
    return-object v1

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error deserializing protobuf"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    const/4 v1, 0x0

    .line 954
    if-nez p0, :cond_1

    move-object v0, v1

    .line 976
    :cond_0
    :goto_0
    return-object v0

    .line 959
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 967
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 968
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 972
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 973
    goto :goto_0
.end method

.method public static getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    const/4 v0, 0x0

    .line 674
    if-nez p0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-object v0

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIds(Lcom/google/googlex/glass/common/proto/Entity;)[Ljava/lang/String;
    .locals 6
    .parameter "entity"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 798
    if-nez p0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-object v2

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 804
    const/4 v1, 0x0

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 808
    const/4 v0, 0x0

    .line 810
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 811
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    goto :goto_0

    .line 812
    :cond_4
    if-eqz v1, :cond_5

    .line 813
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    goto :goto_0

    .line 814
    :cond_5
    if-eqz v0, :cond_0

    .line 815
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_0
.end method

.method private getPlusShareTargets(Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .parameter "id"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 331
    .local v4, shareTargets:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 334
    const-string v6, "api:442840586513"

    invoke-virtual {p0, v6}, Lcom/google/glass/entity/EntityHelper;->getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 335
    .local v5, sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 336
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 337
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    sget-object v6, Lcom/google/glass/entity/EntityHelper;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    if-lez p2, :cond_1

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-lt v6, p2, :cond_1

    .line 356
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v5           #sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 335
    .restart local v0       #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .restart local v5       #sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v2           #i:I
    .end local v3           #n:I
    .end local v5           #sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    iget-object v6, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .restart local v3       #n:I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 347
    iget-object v6, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 348
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v6

    const-string v7, "api:442840586513"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 351
    iget-object v6, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v4, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 346
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityHelper;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    return-object v0
.end method

.method private isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 613
    const-string v0, "api:823483604716"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 609
    const-string v0, "api:442840586513"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getShouldSync()Z

    move-result v0

    return v0
.end method

.method private static matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "matcher"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 521
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "text/plain"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v2

    .line 524
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "text/html"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "application/url"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 530
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Attachment;

    .line 531
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 535
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "email"
    .parameter "stripGmailPlus"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    .line 705
    if-nez p0, :cond_1

    .line 706
    const/4 v1, 0x0

    .line 752
    :cond_0
    :goto_0
    return-object v1

    .line 711
    :cond_1
    if-eqz p1, :cond_2

    .line 712
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 718
    .local v0, cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    .local v1, cached:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 723
    sget-object v7, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 726
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    .line 729
    invoke-virtual {v0, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 730
    goto :goto_0

    .line 714
    .end local v0           #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #cached:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    .restart local v0       #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 733
    .restart local v1       #cached:Ljava/lang/String;
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v3, emailBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, domain:Ljava/lang/String;
    if-eqz p1, :cond_5

    sget-object v7, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 740
    .local v5, removePlus:Z
    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 741
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_4
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v0, p0, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 752
    goto/16 :goto_0

    .line 738
    .end local v5           #removePlus:Z
    .end local v6           #result:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static santizeEmails(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "stripGmailPlus"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    .local p0, emails:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 688
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .local v0, email:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    .end local v0           #email:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method static setPackageNameForTest(Ljava/lang/String;)V
    .locals 0
    .parameter "packageNameForTest"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 197
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public static setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 187
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    .line 188
    return-void
.end method

.method static sortShareTargets(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, shareTargetData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    new-instance v0, Lcom/google/glass/entity/EntityHelper$3;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    return-void
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentValues;
    .locals 10
    .parameter "entity"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 542
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 543
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v6, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v9, "is_communication_target"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v6, "phone_number"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v6, "email"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 551
    const-string v6, "display_name"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    const-string v6, "image_url"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v6, "protobuf_blob"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 560
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->hasPriority()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 561
    const-string v6, "share_priority"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getGlasswareAffinity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    :cond_1
    const-string v6, "is_share_target"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberCount()I

    move-result v3

    .line 568
    .local v3, numSecondaryPhoneNumbers:I
    if-lez v3, :cond_7

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, allSecondaryNumbers:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_6

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 572
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, phone:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 578
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #numSecondaryPhoneNumbers:I
    .end local v4           #phone:Ljava/lang/String;
    :cond_4
    move v6, v8

    .line 545
    goto/16 :goto_0

    .restart local v1       #displayName:Ljava/lang/String;
    :cond_5
    move v7, v8

    .line 564
    goto :goto_1

    .line 581
    .restart local v0       #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    .restart local v3       #numSecondaryPhoneNumbers:I
    :cond_6
    const-string v6, "secondary_phone_numbers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_7
    return-object v5
.end method


# virtual methods
.method public broadcastSyncChanged(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 280
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "Entity db was changed, broadcasting ENTITY_SYNC_CHANGED."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ENTITY_SYNC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public getAllEntities(I)Ljava/util/List;
    .locals 4
    .parameter "max"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v3, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 172
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    iget-object v3, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 173
    .local v0, data:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v3, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 178
    .end local v0           #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    return-object v2
.end method

.method public getAllShareTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityHelper;->getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 842
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 843
    :cond_0
    const/4 v1, 0x0

    .line 845
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 841
    .end local v0           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2
    .parameter "email"

    .prologue
    .line 620
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 6
    .parameter "email"
    .parameter "shareTargetsOnly"
    .parameter "plusShareTargetsOnly"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 637
    const/4 v0, 0x0

    .line 669
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 640
    :cond_1
    const/4 v0, 0x0

    .line 641
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {p1, v5}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, formattedEmail:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 643
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 644
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->sanitizedEmail:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 646
    if-eqz p3, :cond_2

    .line 647
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0, v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 648
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 655
    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 642
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 661
    :cond_4
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0, v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 662
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 663
    :cond_5
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0, v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_3

    .line 664
    :cond_6
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 636
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v1           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    .end local v2           #formattedEmail:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #n:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/4 v7, 0x0

    .line 591
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 605
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 595
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, formattedPhoneNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .local v5, n:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 597
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 598
    .local v0, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v2, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 599
    .local v2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, ii:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .local v6, nn:I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 600
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 601
    iget-object v7, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 599
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 596
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 591
    .end local v0           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    .end local v1           #formattedPhoneNumber:Ljava/lang/String;
    .end local v2           #formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #ii:I
    .end local v5           #n:I
    .end local v6           #nn:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2
    .parameter "context"
    .parameter "shareTargetsOnly"

    .prologue
    .line 826
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 827
    .local v0, email:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 828
    const/4 v1, 0x0

    .line 830
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p2, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 826
    .end local v0           #email:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 7
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityHelper;->getAllShareTargets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/Entity;

    .line 505
    .local v5, target:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptTypeCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 506
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    .end local v4           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v5           #target:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 508
    .restart local v4       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .restart local v5       #target:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/google/glass/util/MimeTypeMatcher;

    invoke-direct {v3}, Lcom/google/glass/util/MimeTypeMatcher;-><init>()V

    .line 509
    .local v3, matcher:Lcom/google/glass/util/MimeTypeMatcher;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptTypeList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    .local v0, acceptType:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Z

    goto :goto_1

    .line 512
    .end local v0           #acceptType:Ljava/lang/String;
    :cond_2
    invoke-static {v3, p1}, Lcom/google/glass/entity/EntityHelper;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 513
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 517
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #matcher:Lcom/google/glass/util/MimeTypeMatcher;
    .end local v5           #target:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_3
    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized getPictureUrlViaEmail(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 932
    const/4 v1, 0x0

    .line 946
    :goto_0
    monitor-exit p0

    return-object v1

    .line 936
    :cond_0
    const/4 v0, 0x0

    .line 938
    .local v0, entityByEmail:Lcom/google/googlex/glass/common/proto/Entity;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 942
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 946
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 931
    .end local v0           #entityByEmail:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPictureUrlViaPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 916
    const/4 v1, 0x0

    .line 921
    :goto_0
    monitor-exit p0

    return-object v1

    .line 920
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 921
    .local v0, entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 915
    .end local v0           #entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlusEntityForUser(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 4
    .parameter "context"

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 853
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    :cond_0
    const/4 v1, 0x0

    .line 856
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 852
    .end local v0           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlusShareTargets(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityHelper;->getPlusShareTargets(Ljava/lang/String;I)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 411
    .local v6, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v7, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 412
    iget-object v7, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 413
    .local v0, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v7, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v7}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 414
    if-eqz p1, :cond_0

    iget-object v7, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 415
    :cond_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    .end local v0           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 422
    .local v5, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-direct {p0, v6}, Lcom/google/glass/entity/EntityHelper;->extractRecentlyUsedShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    invoke-static {v6}, Lcom/google/glass/entity/EntityHelper;->sortShareTargets(Ljava/util/List;)V

    .line 426
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 427
    .local v4, shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v7, v4, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    .end local v4           #shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_3
    return-object v5
.end method

.method public declared-synchronized getSpeakableCommunicationTargets()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    .local v0, communicationTargets:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 292
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 293
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 305
    .end local v1           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 291
    .restart local v1       #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v0           #communicationTargets:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v1           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    .end local v2           #i:I
    .end local v3           #n:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getSpeakablePlusShareTargets(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityHelper;->getPlusShareTargets(Ljava/lang/String;I)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadEntityDataCache(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 203
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "loadEntityDataCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    const/4 v7, 0x0

    .line 209
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v5, "share_time DESC,_id ASC"

    .line 210
    .local v5, orderBy:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 211
    if-nez v7, :cond_1

    .line 213
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "null cursor returned for share target query"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    if-eqz v7, :cond_0

    .line 222
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-static {v7}, Lcom/google/glass/entity/EntityHelper;->fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityHelper$EntityData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 221
    .end local v5           #orderBy:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 222
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v7, :cond_4

    .line 222
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v6, broadcast:Landroid/content/Intent;
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :cond_5
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method public registerSyncChanged(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.ENTITY_SYNC_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    return-void
.end method

.method public declared-synchronized setEntityDataCacheForTest(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, testData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 241
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateEntityShareColumns(Lcom/google/googlex/glass/common/proto/Entity;Landroid/content/Context;)V
    .locals 13
    .parameter "entity"
    .parameter "context"

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 986
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    .line 987
    .local v5, id:Ljava/lang/String;
    const/4 v3, 0x0

    .line 988
    .local v3, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v10, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .local v6, n:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 989
    iget-object v10, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 990
    .local v2, data:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v10, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 991
    move-object v3, v2

    .line 996
    .end local v2           #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_0
    if-eqz v3, :cond_3

    .line 998
    iget v10, v3, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    add-int/lit8 v7, v10, 0x1

    .line 999
    .local v7, shareCount:I
    iget-object v10, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v10}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 1000
    .local v0, currentMillis:J
    #calls: Lcom/google/glass/entity/EntityHelper$EntityData;->update(JI)V
    invoke-static {v3, v0, v1, v7}, Lcom/google/glass/entity/EntityHelper$EntityData;->access$100(Lcom/google/glass/entity/EntityHelper$EntityData;JI)V

    .line 1003
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1004
    .local v8, values:Landroid/content/ContentValues;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1005
    .local v9, whereArgs:[Ljava/lang/String;
    const-string v10, "share_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    const-string v10, "share_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1007
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const-string v12, "(_id=? AND source=?)"

    invoke-virtual {v10, v11, v8, v12, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2

    .line 1010
    sget-object v10, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updated entity\'s share columns [id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", shareCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", shareTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {p0, p2}, Lcom/google/glass/entity/EntityHelper;->broadcastSyncChanged(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    .end local v0           #currentMillis:J
    .end local v7           #shareCount:I
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 988
    .restart local v2       #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1014
    .end local v2           #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    .restart local v0       #currentMillis:J
    .restart local v7       #shareCount:I
    .restart local v8       #values:Landroid/content/ContentValues;
    .restart local v9       #whereArgs:[Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v10, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update entity\'s share columns in database [id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 983
    .end local v0           #currentMillis:J
    .end local v3           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    .end local v4           #i:I
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #n:I
    .end local v7           #shareCount:I
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1017
    .restart local v3       #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    .restart local v4       #i:I
    .restart local v5       #id:Ljava/lang/String;
    .restart local v6       #n:I
    :cond_3
    :try_start_2
    sget-object v10, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to find entity in cache [id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
