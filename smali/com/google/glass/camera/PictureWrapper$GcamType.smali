.class public final enum Lcom/google/glass/camera/PictureWrapper$GcamType;
.super Ljava/lang/Enum;
.source "PictureWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/camera/PictureWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GcamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/camera/PictureWrapper$GcamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/camera/PictureWrapper$GcamType;

.field public static final enum GCAM:Lcom/google/glass/camera/PictureWrapper$GcamType;

.field public static final enum GCAM_HQ_FALLBACK:Lcom/google/glass/camera/PictureWrapper$GcamType;

.field public static final enum HQ:Lcom/google/glass/camera/PictureWrapper$GcamType;


# instance fields
.field private loggingCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/google/glass/camera/PictureWrapper$GcamType;

    const-string v1, "HQ"

    const-string v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/camera/PictureWrapper$GcamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->HQ:Lcom/google/glass/camera/PictureWrapper$GcamType;

    .line 43
    new-instance v0, Lcom/google/glass/camera/PictureWrapper$GcamType;

    const-string v1, "GCAM"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/camera/PictureWrapper$GcamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->GCAM:Lcom/google/glass/camera/PictureWrapper$GcamType;

    .line 44
    new-instance v0, Lcom/google/glass/camera/PictureWrapper$GcamType;

    const-string v1, "GCAM_HQ_FALLBACK"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/camera/PictureWrapper$GcamType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->GCAM_HQ_FALLBACK:Lcom/google/glass/camera/PictureWrapper$GcamType;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/camera/PictureWrapper$GcamType;

    sget-object v1, Lcom/google/glass/camera/PictureWrapper$GcamType;->HQ:Lcom/google/glass/camera/PictureWrapper$GcamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/camera/PictureWrapper$GcamType;->GCAM:Lcom/google/glass/camera/PictureWrapper$GcamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/camera/PictureWrapper$GcamType;->GCAM_HQ_FALLBACK:Lcom/google/glass/camera/PictureWrapper$GcamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->$VALUES:[Lcom/google/glass/camera/PictureWrapper$GcamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "loggingCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/google/glass/camera/PictureWrapper$GcamType;->loggingCode:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/camera/PictureWrapper$GcamType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/google/glass/camera/PictureWrapper$GcamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/PictureWrapper$GcamType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/camera/PictureWrapper$GcamType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/camera/PictureWrapper$GcamType;->$VALUES:[Lcom/google/glass/camera/PictureWrapper$GcamType;

    invoke-virtual {v0}, [Lcom/google/glass/camera/PictureWrapper$GcamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/camera/PictureWrapper$GcamType;

    return-object v0
.end method


# virtual methods
.method public getLoggingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/camera/PictureWrapper$GcamType;->loggingCode:Ljava/lang/String;

    return-object v0
.end method
