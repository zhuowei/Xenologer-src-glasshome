.class public Lcom/google/glass/entity/EntityHelper;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/entity/EntityHelper$11;,
        Lcom/google/glass/entity/EntityHelper$EntityData;
    }
.end annotation


# static fields
.field public static final ACTION_ENTITY_CACHE_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_CACHE_CHANGED"

.field private static final ACTION_ENTITY_SYNC_CHANGED:Ljava/lang/String; = "com.google.glass.action.ENTITY_SYNC_CHANGED"

.field private static final CONTACT_GAIA_DELIMITER:Ljava/lang/String; = "_"

.field private static final CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter; = null

.field private static final EMAIL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_PLUS_ENTITY:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SHARE_TARGET:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SPEAKABLE:Lcom/google/common/base/Predicate; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation
.end field

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

    .line 67
    const-class v0, Lcom/google/glass/entity/EntityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    .line 102
    const-string v0, "^([^+]+)(\\+[^@]+)?(@[^.]+)(\\..+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    .line 110
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@gmail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@googlemail.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    const-string v1, "@google.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
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

    .line 148
    const-string v0, "_"

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

    .line 151
    new-instance v0, Lcom/google/glass/entity/EntityHelper$1;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    .line 160
    new-instance v0, Lcom/google/glass/entity/EntityHelper$2;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$2;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    .line 173
    new-instance v0, Lcom/google/glass/entity/EntityHelper$3;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$3;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    .line 184
    new-instance v0, Lcom/google/glass/entity/EntityHelper$4;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$4;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 195
    new-instance v0, Lcom/google/glass/entity/EntityHelper$5;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$5;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    .line 206
    new-instance v0, Lcom/google/glass/entity/EntityHelper$6;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$6;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 218
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->IS_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    .line 225
    new-instance v0, Lcom/google/glass/entity/EntityHelper$7;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$7;-><init>()V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    .line 236
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 243
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v0}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityHelper;-><init>(Lcom/google/glass/util/Clock;)V

    .line 267
    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/Clock;)V
    .locals 1
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    .line 350
    new-instance v0, Lcom/google/glass/entity/EntityHelper$8;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/EntityHelper$8;-><init>(Lcom/google/glass/entity/EntityHelper;)V

    iput-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 283
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static convertToDBType(Lcom/google/googlex/glass/common/proto/Entity$Type;)I
    .locals 3
    .parameter "type"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 757
    sget-object v0, Lcom/google/glass/entity/EntityHelper$11;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Type:[I

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :pswitch_0
    const/4 v0, 0x0

    .line 761
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createIdToEntityMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 430
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    .line 431
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 433
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    return-object v2
.end method

.method public static doEntitiesMatch(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 6
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 945
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 970
    :cond_0
    :goto_0
    return v3

    .line 950
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v3, v4

    .line 951
    goto :goto_0

    .line 954
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 955
    .local v2, secondId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, secondEmail:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, compare:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 959
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 963
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 964
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 965
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    .line 970
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
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    const/4 v12, 0x4

    .line 591
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v8}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/google/glass/entity/EntityProvider;->RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF:J

    sub-long v3, v8, v10

    .line 595
    .local v3, recentShareBoostCutoff:J
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 596
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

    .line 597
    .local v7, shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-wide v8, v7, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    cmp-long v8, v8, v3

    if-lez v8, :cond_0

    .line 598
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    .end local v7           #shareTargetData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    new-instance v8, Lcom/google/glass/entity/EntityHelper$9;

    invoke-direct {v8, p0}, Lcom/google/glass/entity/EntityHelper$9;-><init>(Lcom/google/glass/entity/EntityHelper;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 611
    invoke-static {v12}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 612
    .local v6, retVal:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 613
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 614
    .local v2, recentEntityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    .end local v2           #recentEntityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_2
    return-object v6
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1039
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
    .line 1045
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 1048
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1049
    .local v2, phoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "phone_number"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1050
    .local v11, primaryPhone:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 1051
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_0
    const-string v0, "secondary_phone_numbers"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1055
    .local v13, secondaryPhoneListStr:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1056
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

    .line 1057
    .local v12, secondaryPhone:Ljava/lang/String;
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1062
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

    .line 1064
    .local v3, sanitizedEmail:Ljava/lang/String;
    const-string v0, "share_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1065
    .local v4, shareTime:J
    const-string v0, "share_count"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1066
    .local v6, shareCount:I
    const-string v0, "share_priority"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1067
    .local v7, priority:I
    new-instance v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/entity/EntityHelper$EntityData;-><init>(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;Ljava/lang/String;JII)V

    return-object v0
.end method

.method public static fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 4
    .parameter "data"

    .prologue
    .line 1078
    :try_start_0
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1084
    :goto_0
    return-object v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v3, "Error deserializing protobuf"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1081
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "entityId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1232
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->CONTACT_GAIA_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 3
    .parameter "entity"

    .prologue
    const/4 v1, 0x0

    .line 1133
    if-nez p0, :cond_1

    move-object v0, v1

    .line 1150
    :cond_0
    :goto_0
    return-object v0

    .line 1138
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1142
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1146
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1147
    goto :goto_0
.end method

.method private static getEntities(Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 586
    .local p0, input:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->ENTITYDATA_TO_ENTITY_FUNCTION:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private varargs getFilteredCachedEntities([Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, predicates:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->and([Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private varargs getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, predicates:[Lcom/google/common/base/Predicate;,"[Lcom/google/common/base/Predicate<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityHelper;->getFilteredCachedEntities([Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 2
    .parameter "entity"

    .prologue
    const/4 v0, 0x0

    .line 854
    if-nez p0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-object v0

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    .locals 4
    .parameter "entity"

    .prologue
    const/4 v2, 0x0

    .line 1161
    if-nez p0, :cond_1

    move-object v0, v2

    .line 1174
    :cond_0
    :goto_0
    return-object v0

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 1167
    goto :goto_0

    .line 1170
    :cond_2
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1171
    .local v1, spaceIndex:I
    if-lez v1, :cond_0

    .line 1174
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    .line 977
    if-nez p0, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-object v2

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 983
    const/4 v1, 0x0

    .line 985
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 987
    const/4 v0, 0x0

    .line 989
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 990
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    goto :goto_0

    .line 991
    :cond_4
    if-eqz v1, :cond_5

    .line 992
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    goto :goto_0

    .line 993
    :cond_5
    if-eqz v0, :cond_0

    .line 994
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_0
.end method

.method public static getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "entityId"

    .prologue
    .line 1227
    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getContactGaiaParts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1228
    .local v0, parts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/entity/EntityHelper;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    return-object v0
.end method

.method private getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    sget-object v2, Lcom/google/glass/entity/EntityHelper;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getSourceRestrict(Ljava/lang/String;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    .local v0, shareTargetsData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityHelper;->sortByShareInfo(Ljava/util/List;)V

    .line 571
    return-object v0
.end method

.method private static getSourceRestrict(Ljava/lang/String;)Lcom/google/common/base/Predicate;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/entity/EntityHelper$EntityData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    if-nez p0, :cond_0

    .line 439
    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 440
    :cond_0
    const-string v0, "api:442840586513"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    goto :goto_0

    .line 442
    :cond_1
    const-string v0, "api:823483604716"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->IS_FOCUS_ENTITY:Lcom/google/common/base/Predicate;

    goto :goto_0

    .line 445
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 793
    const-string v0, "api:823483604716"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 789
    const-string v0, "api:442840586513"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 1
    .parameter "entity"

    .prologue
    .line 452
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

    .line 675
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasText()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "text/plain"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v2

    .line 678
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasHtml()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "text/html"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 681
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCanonicalUrl()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "application/url"

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
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

    .line 685
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/glass/util/MimeTypeMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 689
    .end local v0           #attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "email"
    .parameter "stripGmailPlus"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    .line 884
    if-nez p0, :cond_1

    .line 885
    const/4 v1, 0x0

    .line 931
    :cond_0
    :goto_0
    return-object v1

    .line 890
    :cond_1
    if-eqz p1, :cond_2

    .line 891
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedStrippedEmailCache:Landroid/util/LruCache;

    .line 897
    .local v0, cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 898
    .local v1, cached:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 902
    sget-object v7, Lcom/google/glass/entity/EntityHelper;->EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 905
    .local v4, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    .line 908
    invoke-virtual {v0, p0, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 909
    goto :goto_0

    .line 893
    .end local v0           #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #cached:Ljava/lang/String;
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->sanitizedEmailCache:Landroid/util/LruCache;

    .restart local v0       #cache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 912
    .restart local v1       #cached:Ljava/lang/String;
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v3, emailBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
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

    .line 917
    .local v2, domain:Ljava/lang/String;
    if-eqz p1, :cond_5

    sget-object v7, Lcom/google/glass/entity/EntityHelper;->GMAIL_DOMAINS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 919
    .local v5, removePlus:Z
    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 920
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    :cond_4
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 930
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v0, p0, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 931
    goto/16 :goto_0

    .line 917
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
    .line 867
    .local p0, emails:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 868
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

    .line 869
    .local v0, email:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 871
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
    .line 296
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 297
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public static setSharedInstance(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 287
    sput-object p0, Lcom/google/glass/entity/EntityHelper;->sharedInstance:Lcom/google/glass/entity/EntityHelper;

    .line 288
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
    .line 630
    .local p0, shareTargetData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    new-instance v0, Lcom/google/glass/entity/EntityHelper$10;

    invoke-direct {v0}, Lcom/google/glass/entity/EntityHelper$10;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 645
    return-void
.end method

.method public static startSendMessageToPersonActivity(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/companion/RemoteCompanionProxy;Lcom/google/googlex/glass/common/proto/Entity;)Z
    .locals 11
    .parameter "context"
    .parameter "remoteCompanionProxy"
    .parameter "entity"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1246
    invoke-virtual {p0}, Lcom/google/glass/app/GlassActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v5

    .line 1247
    .local v5, soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move v2, v7

    .line 1248
    .local v2, hasEmail:Z
    :goto_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move v3, v7

    .line 1249
    .local v3, hasPhoneNumber:Z
    :goto_1
    invoke-virtual {p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    .line 1253
    .local v0, companionConnected:Z
    sget-object v9, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v9}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 1254
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 1255
    .local v6, toId:Ljava/lang/String;
    const/4 v4, 0x2

    .line 1272
    .local v4, messageType:I
    :goto_2
    sget-object v8, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v5, v8}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 1273
    const/16 v8, 0xc

    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v4, v6, v9}, Lcom/google/glass/voice/VoiceMessageHelper;->createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 1276
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :goto_3
    return v7

    .end local v0           #companionConnected:Z
    .end local v2           #hasEmail:Z
    .end local v3           #hasPhoneNumber:Z
    :cond_0
    move v2, v8

    .line 1247
    goto :goto_0

    .restart local v2       #hasEmail:Z
    :cond_1
    move v3, v8

    .line 1248
    goto :goto_1

    .line 1256
    .restart local v0       #companionConnected:Z
    .restart local v3       #hasPhoneNumber:Z
    :cond_2
    if-eqz v2, :cond_3

    .line 1257
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v6

    .line 1258
    .restart local v6       #toId:Ljava/lang/String;
    const/4 v4, 0x1

    .restart local v4       #messageType:I
    goto :goto_2

    .line 1260
    .end local v4           #messageType:I
    .end local v6           #toId:Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/google/glass/app/GlassError;

    invoke-direct {v9}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v10, Lcom/google/glass/common/R$string;->error_edit_contacts:I

    invoke-virtual {v9, v10}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v1

    .line 1263
    .local v1, error:Lcom/google/glass/app/GlassError;
    if-eqz v0, :cond_4

    .line 1264
    sget v7, Lcom/google/glass/common/R$string;->error_no_phone_or_email:I

    invoke-virtual {v1, v7}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 1268
    :goto_4
    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->show(Lcom/google/glass/app/GlassActivity;)V

    move v7, v8

    .line 1269
    goto :goto_3

    .line 1266
    :cond_4
    sget v7, Lcom/google/glass/common/R$string;->error_no_email:I

    invoke-virtual {v1, v7}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    goto :goto_4
.end method

.method private static subList(Ljava/util/List;I)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toContentValues(Lcom/google/googlex/glass/common/proto/Entity;)Landroid/content/ContentValues;
    .locals 12
    .parameter "entity"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 696
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 697
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "_id"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v7, "source"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v10, "is_communication_target"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    const-string v7, "phone_number"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v7, "email"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 705
    const-string v7, "display_name"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    const-string v7, "image_url"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v7, "protobuf_blob"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 709
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->hasType()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 710
    const-string v7, "type"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getType()Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v10

    invoke-static {v10}, Lcom/google/glass/entity/EntityHelper;->convertToDBType(Lcom/google/googlex/glass/common/proto/Entity$Type;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    :cond_1
    const/4 v4, 0x0

    .line 713
    .local v4, obfuscatedGaiaId:Ljava/lang/String;
    const-string v7, "api:442840586513"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 714
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v4

    .line 718
    :goto_1
    if-eqz v4, :cond_2

    .line 719
    const-string v7, "obfuscated_gaia_id"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_2
    const-string v10, "is_in_my_contacts"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getContactGroupList()Ljava/util/List;

    move-result-object v7

    sget-object v11, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->MY_CONTACTS:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->hasPriority()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 729
    const-string v7, "share_priority"

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getGlasswareAffinity()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    :cond_3
    const-string v7, "is_share_target"

    invoke-static {p0}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v10

    if-eqz v10, :cond_9

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumberCount()I

    move-result v3

    .line 736
    .local v3, numSecondaryPhoneNumbers:I
    if-lez v3, :cond_b

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v0, allSecondaryNumbers:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v3, :cond_a

    .line 739
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 740
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity;->getSecondaryPhoneNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, phone:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 746
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #numSecondaryPhoneNumbers:I
    .end local v4           #obfuscatedGaiaId:Ljava/lang/String;
    .end local v5           #phone:Ljava/lang/String;
    :cond_6
    move v7, v9

    .line 699
    goto/16 :goto_0

    .line 716
    .restart local v1       #displayName:Ljava/lang/String;
    .restart local v4       #obfuscatedGaiaId:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/entity/EntityHelper;->getObfuscatedGaiaIdFromContactEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    move v7, v9

    .line 721
    goto :goto_2

    :cond_9
    move v8, v9

    .line 732
    goto :goto_3

    .line 749
    .restart local v0       #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    .restart local v3       #numSecondaryPhoneNumbers:I
    :cond_a
    const-string v7, "secondary_phone_numbers"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .end local v0           #allSecondaryNumbers:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :cond_b
    return-object v6
.end method


# virtual methods
.method public broadcastSyncChanged(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "Entity db was changed, broadcasting ENTITY_SYNC_CHANGED."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ENTITY_SYNC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
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
    .line 271
    iget-object v3, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 272
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

    .line 273
    .local v0, data:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v3, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 278
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
    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/entity/EntityHelper;->getSortedShareTargets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 1021
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    :cond_0
    const/4 v1, 0x0

    .line 1024
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1020
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
    .line 800
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
    .line 816
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 817
    const/4 v0, 0x0

    .line 849
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 820
    :cond_1
    const/4 v0, 0x0

    .line 821
    .local v0, entity:Lcom/google/googlex/glass/common/proto/Entity;
    const/4 v5, 0x1

    :try_start_1
    invoke-static {p1, v5}, Lcom/google/glass/entity/EntityHelper;->sanitizeEmail(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, formattedEmail:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 823
    iget-object v5, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 824
    .local v1, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->sanitizedEmail:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 826
    if-eqz p3, :cond_2

    .line 827
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 828
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 835
    :cond_2
    if-eqz p2, :cond_4

    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 822
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 841
    :cond_4
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isPlusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 842
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    goto :goto_0

    .line 843
    :cond_5
    iget-object v5, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v5}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/Entity;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_3

    .line 844
    :cond_6
    iget-object v0, v1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 816
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

    .line 771
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    .line 785
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 775
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, formattedPhoneNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .local v5, n:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 777
    iget-object v8, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 778
    .local v0, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    iget-object v2, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 779
    .local v2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, ii:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .local v6, nn:I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 780
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 781
    iget-object v7, v0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 779
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 776
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 771
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
    .line 1005
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHelper;->getFirstEmailForUser(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1006
    .local v0, email:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1007
    const/4 v1, 0x0

    .line 1009
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

    .line 1005
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
    .line 657
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 658
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

    .line 659
    .local v5, target:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/Entity;->getAcceptTypeCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 660
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 657
    .end local v4           #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v5           #target:Lcom/google/googlex/glass/common/proto/Entity;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 662
    .restart local v4       #result:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .restart local v5       #target:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/google/glass/util/MimeTypeMatcher;

    invoke-direct {v3}, Lcom/google/glass/util/MimeTypeMatcher;-><init>()V

    .line 663
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

    .line 664
    .local v0, acceptType:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/google/glass/util/MimeTypeMatcher;->addMatchPattern(Ljava/lang/String;)Z

    goto :goto_1

    .line 666
    .end local v0           #acceptType:Ljava/lang/String;
    :cond_2
    invoke-static {v3, p1}, Lcom/google/glass/entity/EntityHelper;->matchesItem(Lcom/google/glass/util/MimeTypeMatcher;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 667
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 671
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
    .line 1110
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

    .line 1111
    const/4 v1, 0x0

    .line 1125
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1115
    :cond_0
    const/4 v0, 0x0

    .line 1117
    .local v0, entityByEmail:Lcom/google/googlex/glass/common/proto/Entity;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 1121
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 1125
    :cond_2
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1110
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
    .line 1094
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    const/4 v1, 0x0

    .line 1100
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1099
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 1100
    .local v0, entityByPhoneNumber:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 1094
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
    .line 1031
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/glass/util/AuthUtils;

    invoke-direct {v1, p1}, Lcom/google/glass/util/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/glass/util/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 1032
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    :cond_0
    const/4 v1, 0x0

    .line 1035
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

    .line 1031
    .end local v0           #account:Landroid/accounts/Account;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPlusShareTargets()Ljava/util/List;
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
    .line 495
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityHelper;->getPlusShareTargets(I)Ljava/util/List;
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

.method public getPlusShareTargets(I)Ljava/util/List;
    .locals 4
    .parameter "limit"
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
    .line 506
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityHelper;->IS_SHARE_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityHelper;->IS_PLUS_ENTITY:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/glass/entity/EntityHelper;->IS_NOT_IN_SHARE_TARGET_BLACKLIST:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 509
    .local v0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityHelper;->sortByShareInfo(Ljava/util/List;)V

    .line 510
    if-lez p1, :cond_0

    .line 511
    invoke-static {v0, p1}, Lcom/google/glass/entity/EntityHelper;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 513
    :cond_0
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getSpeakableCommunicationTargets()Ljava/util/List;
    .locals 4
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
    .line 396
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/glass/entity/EntityHelper;->IS_COMMUNICATION_TARGET:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/glass/entity/EntityHelper;->IS_SPEAKABLE:Lcom/google/common/base/Predicate;

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/entity/EntityHelper;->getFilteredCachedEntitiesAsList([Lcom/google/common/base/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->sortShareTargets(Ljava/util/List;)V

    .line 399
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/glass/entity/EntityHelper;->subList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->getEntities(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 396
    .end local v0           #communicationTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSpeakablePhotoShareTargets()Ljava/util/Map;
    .locals 9
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
    .line 472
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v7

    const-string v8, "image/jpeg"

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    .line 476
    .local v3, fakePhotoItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {p0, v3}, Lcom/google/glass/entity/EntityHelper;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 478
    .local v1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 479
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    const/4 v0, 0x0

    .line 480
    .local v0, count:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .local v2, entity:Lcom/google/googlex/glass/common/proto/Entity;
    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0xf

    if-le v0, v6, :cond_1

    .line 487
    .end local v2           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    monitor-exit p0

    return-object v5

    .line 484
    .restart local v2       #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    .end local v0           #count:I
    .end local v1           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    .end local v2           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v3           #fakePhotoItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized getSpeakablePlusShareTargets()Ljava/util/List;
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
    .line 407
    monitor-enter p0

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityHelper;->getPlusShareTargets(I)Ljava/util/List;
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
    .locals 10
    .parameter "context"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 303
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "loadEntityDataCache started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 308
    .local v8, startTime:J
    const/4 v7, 0x0

    .line 310
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_1
    const-string v5, "share_time DESC,_id ASC"

    .line 311
    .local v5, orderBy:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    if-nez v7, :cond_1

    .line 314
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    const-string v1, "null cursor returned for share target query"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    if-eqz v7, :cond_0

    .line 323
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-static {v7}, Lcom/google/glass/entity/EntityHelper;->fromCursorToEntityData(Landroid/database/Cursor;)Lcom/google/glass/entity/EntityHelper$EntityData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 322
    .end local v5           #orderBy:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 323
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 301
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #startTime:J
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #startTime:J
    :cond_3
    if-eqz v7, :cond_4

    .line 323
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_4
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEntityDataCache finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.google.glass.action.ENTITY_CACHE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v6, broadcast:Landroid/content/Intent;
    sget-object v0, Lcom/google/glass/entity/EntityHelper;->packageNameForTest:Ljava/lang/String;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
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
    .line 373
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityChangedReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.ENTITY_SYNC_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 374
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
    .line 344
    .local p1, testData:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->isTest()Z

    .line 345
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 346
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sortByShareInfo(Ljava/util/List;)V
    .locals 2
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
    .line 576
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/entity/EntityHelper;->extractRecentlyUsedShareTargets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 579
    .local v0, recentlyUsed:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/entity/EntityHelper$EntityData;>;"
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->sortShareTargets(Ljava/util/List;)V

    .line 580
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 581
    return-void
.end method

.method public declared-synchronized updateEntityShareColumns(Lcom/google/googlex/glass/common/proto/Entity;Landroid/content/Context;)V
    .locals 13
    .parameter "entity"
    .parameter "context"

    .prologue
    .line 1181
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 1184
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1185
    .local v5, id:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1186
    .local v3, entityData:Lcom/google/glass/entity/EntityHelper$EntityData;
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v10, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .local v6, n:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 1187
    iget-object v10, p0, Lcom/google/glass/entity/EntityHelper;->entityDataCache:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/entity/EntityHelper$EntityData;

    .line 1188
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

    .line 1189
    move-object v3, v2

    .line 1194
    .end local v2           #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_0
    if-eqz v3, :cond_3

    .line 1196
    iget v10, v3, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    add-int/lit8 v7, v10, 0x1

    .line 1197
    .local v7, shareCount:I
    iget-object v10, p0, Lcom/google/glass/entity/EntityHelper;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v10}, Lcom/google/glass/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 1198
    .local v0, currentMillis:J
    #calls: Lcom/google/glass/entity/EntityHelper$EntityData;->update(JI)V
    invoke-static {v3, v0, v1, v7}, Lcom/google/glass/entity/EntityHelper$EntityData;->access$300(Lcom/google/glass/entity/EntityHelper$EntityData;JI)V

    .line 1201
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1202
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

    .line 1203
    .local v9, whereArgs:[Ljava/lang/String;
    const-string v10, "share_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    const-string v10, "share_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1205
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/google/glass/entity/EntityProvider;->URI:Landroid/net/Uri;

    const-string v12, "(_id=? AND source=?)"

    invoke-virtual {v10, v11, v8, v12, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2

    .line 1208
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

    .line 1210
    invoke-virtual {p0, p2}, Lcom/google/glass/entity/EntityHelper;->broadcastSyncChanged(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    .end local v0           #currentMillis:J
    .end local v7           #shareCount:I
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 1186
    .restart local v2       #data:Lcom/google/glass/entity/EntityHelper$EntityData;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1212
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

    .line 1181
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

    .line 1215
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
