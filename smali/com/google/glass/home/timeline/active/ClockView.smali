.class public Lcom/google/glass/home/timeline/active/ClockView;
.super Landroid/widget/LinearLayout;
.source "ClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private timeView:Lcom/google/glass/widget/TypophileTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/home/timeline/active/ClockView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/ClockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/active/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/active/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v1, Lcom/google/glass/home/timeline/active/ClockView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/ClockView$1;-><init>(Lcom/google/glass/home/timeline/active/ClockView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/ClockView;->timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 51
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/glass/home/R$layout;->home_clock:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v1, Lcom/google/glass/home/R$id;->time:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/ClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/ClockView;->timeView:Lcom/google/glass/widget/TypophileTextView;

    .line 55
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/ClockView;->updateTime()V

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ClockView;->requestLayout()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/active/ClockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/ClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/home/timeline/active/ClockView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/active/ClockView;)Lcom/google/glass/util/SafeBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/ClockView;->timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-object v0
.end method

.method private updateTime()V
    .locals 5

    .prologue
    .line 79
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/active/ClockView;->setVisibility(I)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/google/glass/home/timeline/active/ClockView;->timeView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/ClockView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/active/ClockView;->setVisibility(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/ClockView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/ClockView$2;-><init>(Lcom/google/glass/home/timeline/active/ClockView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    invoke-direct {p0}, Lcom/google/glass/home/timeline/active/ClockView;->updateTime()V

    .line 67
    return-void
.end method

.method public onUnload()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/active/ClockView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/active/ClockView$3;-><init>(Lcom/google/glass/home/timeline/active/ClockView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method
