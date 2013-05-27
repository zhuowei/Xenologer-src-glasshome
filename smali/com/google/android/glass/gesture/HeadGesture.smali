.class public final enum Lcom/google/android/glass/gesture/HeadGesture;
.super Ljava/lang/Enum;
.source "HeadGesture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/glass/gesture/HeadGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/glass/gesture/HeadGesture;

.field public static final enum GLOBAL_LOOK_UP:Lcom/google/android/glass/gesture/HeadGesture;

.field public static final enum NUDGE:Lcom/google/android/glass/gesture/HeadGesture;

.field public static final enum RELATIVE_LOOK_UP:Lcom/google/android/glass/gesture/HeadGesture;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/android/glass/gesture/HeadGesture;

    const-string v1, "GLOBAL_LOOK_UP"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/glass/gesture/HeadGesture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/glass/gesture/HeadGesture;->GLOBAL_LOOK_UP:Lcom/google/android/glass/gesture/HeadGesture;

    .line 37
    new-instance v0, Lcom/google/android/glass/gesture/HeadGesture;

    const-string v1, "RELATIVE_LOOK_UP"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/glass/gesture/HeadGesture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/glass/gesture/HeadGesture;->RELATIVE_LOOK_UP:Lcom/google/android/glass/gesture/HeadGesture;

    .line 43
    new-instance v0, Lcom/google/android/glass/gesture/HeadGesture;

    const-string v1, "NUDGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/glass/gesture/HeadGesture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/glass/gesture/HeadGesture;->NUDGE:Lcom/google/android/glass/gesture/HeadGesture;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/glass/gesture/HeadGesture;

    sget-object v1, Lcom/google/android/glass/gesture/HeadGesture;->GLOBAL_LOOK_UP:Lcom/google/android/glass/gesture/HeadGesture;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/glass/gesture/HeadGesture;->RELATIVE_LOOK_UP:Lcom/google/android/glass/gesture/HeadGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/glass/gesture/HeadGesture;->NUDGE:Lcom/google/android/glass/gesture/HeadGesture;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/glass/gesture/HeadGesture;->$VALUES:[Lcom/google/android/glass/gesture/HeadGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/google/android/glass/gesture/HeadGesture;->id:I

    .line 48
    return-void
.end method

.method public static fromIndex(I)Lcom/google/android/glass/gesture/HeadGesture;
    .registers 4
    .parameter "index"

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/glass/gesture/HeadGesture;->values()[Lcom/google/android/glass/gesture/HeadGesture;

    move-result-object v0

    .line 73
    .local v0, headGestures:[Lcom/google/android/glass/gesture/HeadGesture;
    if-ltz p0, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p0, v1, :cond_14

    .line 74
    :cond_b
    const-string v1, "HeadGesture"

    const-string v2, "Index for the head gesture was out of range. "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x0

    .line 77
    :goto_13
    return-object v1

    :cond_14
    aget-object v1, v0, p0

    goto :goto_13
.end method

.method public static hasGesture(Lcom/google/android/glass/gesture/HeadGesture;)Z
    .registers 4
    .parameter "gesture"

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/glass/gesture/HeadGesture;->values()[Lcom/google/android/glass/gesture/HeadGesture;

    move-result-object v0

    .line 60
    .local v0, headGestures:[Lcom/google/android/glass/gesture/HeadGesture;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 61
    aget-object v2, v0, v1

    if-ne v2, p0, :cond_e

    .line 62
    const/4 v2, 0x1

    .line 65
    :goto_d
    return v2

    .line 60
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/glass/gesture/HeadGesture;
    .registers 2
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/google/android/glass/gesture/HeadGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/gesture/HeadGesture;

    return-object v0
.end method

.method public static values()[Lcom/google/android/glass/gesture/HeadGesture;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/glass/gesture/HeadGesture;->$VALUES:[Lcom/google/android/glass/gesture/HeadGesture;

    invoke-virtual {v0}, [Lcom/google/android/glass/gesture/HeadGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/glass/gesture/HeadGesture;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/glass/gesture/HeadGesture;->id:I

    return v0
.end method
