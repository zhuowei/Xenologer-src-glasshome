.class public final Lcom/google/android/glass/Dummy;
.super Ljava/lang/Object;
.source "Dummy.java"


# static fields
.field public static final MESSAGE:Ljava/lang/String; = "It works"


# instance fields
.field private mValueOne:I

.field public mValueThree:F

.field public mValueTwo:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 65
    const/4 v0, 0x1

    const-wide/16 v1, 0x2

    const/high16 v3, 0x4040

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/glass/Dummy;-><init>(IJF)V

    .line 66
    return-void
.end method

.method public constructor <init>(IJF)V
    .registers 5
    .parameter "one"
    .parameter "two"
    .parameter "three"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/android/glass/Dummy;->mValueOne:I

    .line 56
    iput-wide p2, p0, Lcom/google/android/glass/Dummy;->mValueTwo:J

    .line 57
    iput p4, p0, Lcom/google/android/glass/Dummy;->mValueThree:F

    .line 58
    return-void
.end method

.method public static getValue()I
    .registers 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getKey()Landroid/view/KeyEvent;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public getOne()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/glass/Dummy;->mValueOne:I

    return v0
.end method

.method public getTwo()J
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/android/glass/Dummy;->mValueTwo:J

    return-wide v0
.end method
