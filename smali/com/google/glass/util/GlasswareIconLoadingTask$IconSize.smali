.class public final enum Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
.super Ljava/lang/Enum;
.source "GlasswareIconLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/GlasswareIconLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

.field public static final enum MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

.field public static final enum SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;


# instance fields
.field private resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    const-string v1, "SMALL"

    sget-object v2, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_SMALL:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;ILcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    .line 26
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    const-string v1, "MEDIUM"

    sget-object v2, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_MEDIUM:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;ILcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;)V
    .locals 0
    .parameter
    .parameter
    .parameter "resourceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->resourceType:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-virtual {v0}, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method
