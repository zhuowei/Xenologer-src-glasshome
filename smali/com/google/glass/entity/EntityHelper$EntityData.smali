.class public Lcom/google/glass/entity/EntityHelper$EntityData;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityData"
.end annotation


# instance fields
.field entity:Lcom/google/googlex/glass/common/proto/Entity;

.field formattedPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastShareTime:J

.field priority:I

.field sanitizedEmail:Ljava/lang/String;

.field shareCount:I


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;Ljava/lang/String;JII)V
    .locals 0
    .parameter "entity"
    .parameter
    .parameter "sanitizedEmail"
    .parameter "lastShareTime"
    .parameter "shareCount"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JII)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 372
    iput-object p2, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 373
    iput-object p3, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->sanitizedEmail:Ljava/lang/String;

    .line 374
    iput-wide p4, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    .line 375
    iput p6, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    .line 376
    iput p7, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->priority:I

    .line 377
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/entity/EntityHelper$EntityData;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 361
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/entity/EntityHelper$EntityData;->update(JI)V

    return-void
.end method

.method private update(JI)V
    .locals 0
    .parameter "lastShareTime"
    .parameter "shareCount"

    .prologue
    .line 380
    iput-wide p1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    .line 381
    iput p3, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    .line 382
    return-void
.end method
