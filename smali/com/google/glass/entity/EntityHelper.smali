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

.field private static final HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set; = null
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

.field private static final MAX_SPEAKABLE_PLUS_SHARE_TARGETS:I = 0xf

.field private static final PHONE_NUMBER_SEPARATOR:Ljava/lang/String; = ","

.field public static final PLUS_GLASSWARE_SOURCE:Ljava/lang/String; = "api:442840586513"

.field private static final RECENT_ENTITIES_MAX_NUMBER:I = 0x4

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

    .line 55
    const-class v0, Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    .line 97
    const-string v0, "^([^+]+)(\\+[^@]+)?(@[^.]+)(\\..+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    .line 105
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@gmail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@googlemail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
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

    .line 127
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 134
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityHelper;-><init>(Lcom/google/glass/util/Clock;)V

    .line 158
    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/Clock;)V
    .locals 1
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    .line 227
    new-instance v0, Lcom/google/glass/entity/EntityHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/EntityHelper$1;-><init>(Lcom/google/glass/entity/EntityHelper;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 162
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    .line 163
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
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

    .line 742
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 767
    :cond_0
    :goto_0
    return v3

    .line 747
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 748
    goto :goto_0

    .line 751
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, secondId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, secondEmail:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, compare:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 756
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 760
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 762
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 767
    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 836
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
    .line 842
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 845
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 846
    .local v2, phoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "phone_number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 847
    .local v11, primaryPhone:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 848
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_0
    const-string v0, "secondary_phone_numbers"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 852
    .local v13, secondaryPhoneListStr:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 853
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

    .line 854
    .local v12, secondaryPhone:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 859
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

    .line 861
    .local v3, sanitizedEmail:Ljava/lang/String;
    const-string v0, "share_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 862
    .local v4, shareTime:J
    const-string v0, "share_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 863
    .local v6, shareCount:I
    const-string v0, "share_priority"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 864
    .local v7, priority:I
    new-instance v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/entity/EntityHelper$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;Ljava/lang/String;JII)V

    return-object v0
.end method

.method private static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 4
    .parameter "data"

    .prologue
    .line 875
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 881
    :goto_0
    return-object v1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error deserializing protobuf"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    const/4 v1, 0x0

    .line 930
    if-nez p0, :cond_1

    move-object v0, v1

    .line 952
    :cond_0
    :goto_0
    return-object v0

    .line 935
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 943
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 944
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 948
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 949
    goto :goto_0
.end method

.method public static getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    const/4 v0, 0x0

    .line 650
    if-nez p0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-object v0

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 658
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

    .line 774
    if-nez p0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-object v2

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 780
    const/4 v1, 0x0

    .line 782
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 784
    const/4 v0, 0x0

    .line 786
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 787
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    goto :goto_0

    .line 788
    :cond_4
    if-eqz v1, :cond_5

    .line 789
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    goto :goto_0

    .line 790
    :cond_5
    if-eqz v0, :cond_0

    .line 791
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_0
.end method

.method private getMaxShareTargets()I
    .locals 1

    .prologue
    .line 457
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    const/16 v0, 0x19

    .line 460
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private getPlusShareTargets(Ljava/lang/String;I)Ljava/util/Map;
    .locals 9
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
    .line 308
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 309
    .local v5, shareTargets:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 312
    sget-object v7, Lcom/google/glass/util/Labs$Feature;->AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v7}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    .line 313
    .local v0, autoSynced:Z
    const-string v7, "api:442840586513"

    invoke-direct {p0, v7, v0}, Lcom/google/glass/entity/EntityHelper;->getSortedShareTargets(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 314
    .local v6, sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v3, 0x0

    .local v3, i:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 315
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/Entity;

    .line 316
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    sget-object v7, Lcom/google/glass/entity/EntityHelper;->HANGOUTS_SHARE_TARGETS_BLACKLIST:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 317
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    if-lez p2, :cond_1

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    if-lt v7, p2, :cond_1

    .line 335
    .end local v0           #autoSynced:Z
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v6           #sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_0
    :goto_1
    return-object v5

    .line 314
    .restart local v0       #autoSynced:Z
    .restart local v1       #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .restart local v6       #sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    .end local v0           #autoSynced:Z
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v3           #i:I
    .end local v4           #n:I
    .end local v6           #sorted:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    iget-object v7, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4       #n:I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 326
    iget-object v7, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 327
    .local v2, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v7

    const-string v8, "api:442840586513"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 330
    iget-object v7, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 325
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityHelper;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    return-object v0
.end method

.method private getSortedShareTargets(Ljava/lang/String;Z)Ljava/util/List;
    .locals 13
    .parameter "source"
    .parameter "autoSynced"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v9, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v9}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v4, v9, v11

    .line 395
    .local v4, recentShareBoostCutoff:J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 396
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 398
    .local v8, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v9, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 399
    iget-object v9, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 400
    .local v0, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v9, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v9}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 401
    if-eqz p1, :cond_0

    iget-object v9, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 403
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x4

    if-ge v9, v10, :cond_2

    iget-wide v9, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 406
    iget-object v9, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    :cond_2
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 416
    .end local v0           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_3
    invoke-static {v8, p2}, Lcom/google/glass/entity/EntityHelper;->sortShareTargets(Ljava/util/List;Z)V

    .line 417
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 418
    .local v6, shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v9, v6, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 420
    .end local v6           #shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_4
    return-object v7
.end method

.method private isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 589
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
    .line 585
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
    .line 340
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

    .line 498
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "text/plain"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v2

    .line 501
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "text/html"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "application/url"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 507
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

    .line 508
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 512
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

    .line 681
    if-nez p0, :cond_1

    .line 682
    const/4 v1, 0x0

    .line 728
    :cond_0
    :goto_0
    return-object v1

    .line 687
    :cond_1
    if-eqz p1, :cond_2

    .line 688
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 694
    .local v0, cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 695
    .local v1, cached:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 699
    sget-object v7, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 702
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    .line 705
    invoke-virtual {v0, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 706
    goto :goto_0

    .line 690
    .end local v0           #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #cached:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    .restart local v0       #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 709
    .restart local v1       #cached:Ljava/lang/String;
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v3, emailBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
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

    .line 714
    .local v2, domain:Ljava/lang/String;
    if-eqz p1, :cond_5

    sget-object v7, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 716
    .local v5, removePlus:Z
    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 717
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_4
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 727
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v0, p0, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 728
    goto/16 :goto_0

    .line 714
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
    .line 663
    .local p0, emails:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 664
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

    .line 665
    .local v0, email:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
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
    .line 175
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 176
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 166
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    .line 167
    return-void
.end method

.method static sortShareTargets(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "autoSynced"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, shareTargetData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    new-instance v0, Lcom/google/glass/entity/EntityHelper$2;

    invoke-direct {v0, p1}, Lcom/google/glass/entity/EntityHelper$2;-><init>(Z)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 450
    return-void
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentValues;
    .locals 10
    .parameter "entity"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 519
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v6, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v9, "is_communication_target"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v6, "phone_number"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v6, "email"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 528
    const-string v6, "display_name"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_0
    const-string v6, "protobuf_blob"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->hasPriority()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 537
    const-string v6, "share_priority"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getGlasswareAffinity()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    :cond_1
    const-string v6, "is_share_target"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberCount()I

    move-result v3

    .line 544
    .local v3, numSecondaryPhoneNumbers:I
    if-lez v3, :cond_7

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v0, allSecondaryNumbers:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_6

    .line 547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 548
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, phone:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
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

    .line 522
    goto/16 :goto_0

    .restart local v1       #displayName:Ljava/lang/String;
    :cond_5
    move v7, v8

    .line 540
    goto :goto_1

    .line 557
    .restart local v0       #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    .restart local v3       #numSecondaryPhoneNumbers:I
    :cond_6
    const-string v6, "secondary_phone_numbers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_7
    return-object v5
.end method


# virtual methods
.method public broadcastSyncChanged(Landroid/app/Application;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ENTITY_SYNC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public getAllShareTargets()Ljava/util/List;
    .locals 2
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
    .line 348
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    .line 349
    .local v0, autoSynced:Z
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityHelper;->getAllShareTargets(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getAllShareTargets(Z)Ljava/util/List;
    .locals 1
    .parameter "autoSynced"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/entity/EntityHelper;->getSortedShareTargets(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 818
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    :cond_0
    const/4 v1, 0x0

    .line 821
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 817
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
    .line 596
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
    .line 612
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    const/4 v0, 0x0

    .line 645
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 616
    :cond_1
    const/4 v0, 0x0

    .line 617
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {p1, v5}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, formattedEmail:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 619
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 620
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->sanitizedEmail:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 622
    if-eqz p3, :cond_2

    .line 623
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0, v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 624
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 631
    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 618
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 637
    :cond_4
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0, v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 638
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 639
    :cond_5
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0, v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_3

    .line 640
    :cond_6
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 612
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

    .line 567
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 581
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 571
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, formattedPhoneNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .local v5, n:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 573
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 574
    .local v0, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v2, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 575
    .local v2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, ii:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .local v6, nn:I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 576
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 577
    iget-object v7, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 572
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
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
    .locals 3
    .parameter "context"
    .parameter "shareTargetsOnly"

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 803
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    :cond_0
    const/4 v1, 0x0

    .line 806
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;ZZ)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 802
    .end local v0           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;
    .locals 8
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
    .line 475
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 476
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

    .line 477
    .local v5, target:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptTypeCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 478
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 475
    .end local v4           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v5           #target:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 480
    .restart local v4       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .restart local v5       #target:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/google/glass/util/MimeTypeMatcher;

    invoke-direct {v3}, Lcom/google/glass/util/MimeTypeMatcher;-><init>()V

    .line 481
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

    .line 482
    .local v0, acceptType:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Z

    goto :goto_1

    .line 484
    .end local v0           #acceptType:Ljava/lang/String;
    :cond_2
    invoke-static {v3, p1}, Lcom/google/glass/entity/EntityHelper;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 485
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0}, Lcom/google/glass/entity/EntityHelper;->getMaxShareTargets()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-lt v6, v7, :cond_0

    .line 494
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
    .line 907
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

    .line 908
    const/4 v1, 0x0

    .line 922
    :goto_0
    monitor-exit p0

    return-object v1

    .line 912
    :cond_0
    const/4 v0, 0x0

    .line 914
    .local v0, entityByEmail:Lcom/google/googlex/glass/common/proto/Entity;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 918
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 922
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 907
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
    .line 891
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 892
    const/4 v1, 0x0

    .line 897
    :goto_0
    monitor-exit p0

    return-object v1

    .line 896
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 897
    .local v0, entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 891
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
    .line 828
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 829
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 830
    :cond_0
    const/4 v1, 0x0

    .line 832
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

    .line 828
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
    .line 299
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
    .line 267
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 269
    .local v0, communicationTargets:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 270
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 271
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 283
    .end local v1           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 269
    .restart local v1       #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
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
    .line 291
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
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 182
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "loadEntityDataCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    const/4 v7, 0x0

    .line 188
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v5, "share_time DESC,_id ASC"

    .line 189
    .local v5, orderBy:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 190
    if-nez v7, :cond_1

    .line 192
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "null cursor returned for share target query"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v7, :cond_0

    .line 201
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 196
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-static {v7}, Lcom/google/glass/entity/EntityHelper;->fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityHelper$EntityData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 200
    .end local v5           #orderBy:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 201
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    .end local v7           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v7, :cond_4

    .line 201
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v6, broadcast:Landroid/content/Intent;
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
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
    .line 252
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.ENTITY_SYNC_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 253
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
    .line 219
    .local p1, testData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 220
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateEntityShareColumns(Lcom/google/googlex/glass/common/proto/Entity;Landroid/content/ContentResolver;)V
    .locals 11
    .parameter "entity"
    .parameter "resolver"

    .prologue
    .line 963
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 966
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, id:Ljava/lang/String;
    const/4 v1, 0x0

    .line 968
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 969
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 970
    .local v0, data:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v8, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 971
    move-object v1, v0

    .line 976
    .end local v0           #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_0
    if-eqz v1, :cond_2

    .line 978
    iget v8, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    add-int/lit8 v5, v8, 0x1

    .line 979
    .local v5, shareCount:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v8}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    #calls: Lcom/google/glass/entity/EntityHelper$EntityData;->update(JI)V
    invoke-static {v1, v8, v9, v5}, Lcom/google/glass/entity/EntityHelper$EntityData;->access$100(Lcom/google/glass/entity/EntityHelper$EntityData;JI)V

    .line 982
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 983
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 986
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 987
    .local v6, values:Landroid/content/ContentValues;
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 988
    .local v7, whereArgs:[Ljava/lang/String;
    const-string v8, "share_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v8, "share_time"

    iget-object v9, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v9}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    sget-object v8, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const-string v9, "(_id=? AND source=?)"

    invoke-virtual {p2, v8, v6, v9, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    .end local v5           #shareCount:I
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #whereArgs:[Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 968
    .restart local v0       #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 992
    .end local v0           #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to find entity in cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 963
    .end local v1           #entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    .end local v2           #i:I
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #n:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
