.class public final enum Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;
.super Ljava/lang/Enum;
.source "EyeGestureReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/EyeGestureReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EyeGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum BLINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum DOFF:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum DON:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum DOUBLE_BLINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum DOUBLE_WINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum NO_GESTURE:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

.field public static final enum WINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "NO_GESTURE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->NO_GESTURE:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 41
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "WINK"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->WINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 42
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "DOUBLE_WINK"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DOUBLE_WINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 43
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "BLINK"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->BLINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 44
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "DOUBLE_BLINK"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 45
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "DON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DON:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 46
    new-instance v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    const-string v1, "DOFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DOFF:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    sget-object v1, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->NO_GESTURE:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->WINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DOUBLE_WINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->BLINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DON:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->DOFF:Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->$VALUES:[Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->$VALUES:[Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    invoke-virtual {v0}, [Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/EyeGestureReceiver$EyeGesture;

    return-object v0
.end method
