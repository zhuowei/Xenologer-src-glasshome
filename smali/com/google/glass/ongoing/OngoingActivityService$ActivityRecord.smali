.class public Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;
.super Ljava/lang/Object;
.source "OngoingActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityRecord"
.end annotation


# instance fields
.field private params:Landroid/os/Bundle;

.field private final pid:I

.field private final type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;


# direct methods
.method private constructor <init>(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 0
    .parameter "pid"
    .parameter "type"
    .parameter "params"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->pid:I

    .line 49
    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    .line 50
    iput-object p3, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;Lcom/google/glass/ongoing/OngoingActivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;-><init>(ILcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->pid:I

    return v0
.end method


# virtual methods
.method public getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->type:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;->params:Landroid/os/Bundle;

    return-object v0
.end method
