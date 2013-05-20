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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    .line 48
    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-virtual {v0}, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method
