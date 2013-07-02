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
    .line 537
    .local p2, formattedPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 539
    iput-object p2, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->formattedPhoneNumbers:Ljava/util/List;

    .line 540
    iput-object p3, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->sanitizedEmail:Ljava/lang/String;

    .line 541
    iput-wide p4, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    .line 542
    iput p6, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    .line 543
    iput p7, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->priority:I

    .line 544
    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/entity/EntityHelper$EntityData;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 528
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/entity/EntityHelper$EntityData;->update(JI)V

    return-void
.end method

.method private update(JI)V
    .locals 0
    .parameter "lastShareTime"
    .parameter "shareCount"

    .prologue
    .line 547
    iput-wide p1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    .line 548
    iput p3, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    .line 549
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityData<Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->shareCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastShareTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/entity/EntityHelper$EntityData;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
