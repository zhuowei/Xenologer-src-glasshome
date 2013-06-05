.class public final Lcom/google/android/glass/timeline/LiveCard;
.super Ljava/lang/Object;
.source "LiveCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/timeline/LiveCard$State;
    }
.end annotation


# instance fields
.field private final mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

.field private final mService:Lcom/google/android/glass/timeline/ITimelineManager;

.field private mState:Lcom/google/android/glass/timeline/LiveCard$State;


# direct methods
.method public constructor <init>(ILcom/google/android/glass/timeline/ITimelineManager;)V
    .registers 5
    .parameter "id"
    .parameter "service"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/android/glass/timeline/LiveCardDescriptor;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/glass/timeline/LiveCardDescriptor;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

    .line 54
    iput-object p2, p0, Lcom/google/android/glass/timeline/LiveCard;->mService:Lcom/google/android/glass/timeline/ITimelineManager;

    .line 55
    sget-object v0, Lcom/google/android/glass/timeline/LiveCard$State;->CREATED:Lcom/google/android/glass/timeline/LiveCard$State;

    iput-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mState:Lcom/google/android/glass/timeline/LiveCard$State;

    .line 56
    return-void
.end method

.method private applyStateTransition(Lcom/google/android/glass/timeline/LiveCard$State;Lcom/google/android/glass/timeline/LiveCard$State;)V
    .registers 6
    .parameter "expected"
    .parameter "next"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mState:Lcom/google/android/glass/timeline/LiveCard$State;

    if-eq v0, p1, :cond_29

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected, currently in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/glass/timeline/LiveCard;->mState:Lcom/google/android/glass/timeline/LiveCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_29
    iput-object p2, p0, Lcom/google/android/glass/timeline/LiveCard;->mState:Lcom/google/android/glass/timeline/LiveCard$State;

    .line 121
    return-void
.end method

.method private refresh()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mState:Lcom/google/android/glass/timeline/LiveCard$State;

    sget-object v1, Lcom/google/android/glass/timeline/LiveCard$State;->PUBLISHED:Lcom/google/android/glass/timeline/LiveCard$State;

    if-eq v0, v1, :cond_7

    .line 103
    :cond_6
    :goto_6
    return-void

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

    invoke-virtual {v0}, Lcom/google/android/glass/timeline/LiveCardDescriptor;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    :try_start_f
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mService:Lcom/google/android/glass/timeline/ITimelineManager;

    iget-object v1, p0, Lcom/google/android/glass/timeline/LiveCard;->mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

    invoke-interface {v0, v1}, Lcom/google/android/glass/timeline/ITimelineManager;->updateLiveCard(Lcom/google/android/glass/timeline/LiveCardDescriptor;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_6

    .line 100
    :catch_17
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public isPublished()Z
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mState:Lcom/google/android/glass/timeline/LiveCard$State;

    sget-object v1, Lcom/google/android/glass/timeline/LiveCard$State;->PUBLISHED:Lcom/google/android/glass/timeline/LiveCard$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public publish()V
    .registers 3

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/glass/timeline/LiveCard$State;->CREATED:Lcom/google/android/glass/timeline/LiveCard$State;

    sget-object v1, Lcom/google/android/glass/timeline/LiveCard$State;->PUBLISHED:Lcom/google/android/glass/timeline/LiveCard$State;

    invoke-direct {p0, v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->applyStateTransition(Lcom/google/android/glass/timeline/LiveCard$State;Lcom/google/android/glass/timeline/LiveCard$State;)V

    .line 63
    invoke-direct {p0}, Lcom/google/android/glass/timeline/LiveCard;->refresh()V

    .line 64
    return-void
.end method

.method public setViews(Landroid/widget/RemoteViews;)V
    .registers 3
    .parameter "views"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/timeline/LiveCardDescriptor;->setViews(Landroid/widget/RemoteViews;)V

    .line 112
    invoke-direct {p0}, Lcom/google/android/glass/timeline/LiveCard;->refresh()V

    .line 113
    return-void
.end method

.method public unpublish()V
    .registers 4

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/glass/timeline/LiveCard$State;->PUBLISHED:Lcom/google/android/glass/timeline/LiveCard$State;

    sget-object v1, Lcom/google/android/glass/timeline/LiveCard$State;->CREATED:Lcom/google/android/glass/timeline/LiveCard$State;

    invoke-direct {p0, v0, v1}, Lcom/google/android/glass/timeline/LiveCard;->applyStateTransition(Lcom/google/android/glass/timeline/LiveCard$State;Lcom/google/android/glass/timeline/LiveCard$State;)V

    .line 72
    :try_start_7
    iget-object v0, p0, Lcom/google/android/glass/timeline/LiveCard;->mService:Lcom/google/android/glass/timeline/ITimelineManager;

    iget-object v1, p0, Lcom/google/android/glass/timeline/LiveCard;->mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

    invoke-virtual {v1}, Lcom/google/android/glass/timeline/LiveCardDescriptor;->getPid()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/glass/timeline/LiveCard;->mDescriptor:Lcom/google/android/glass/timeline/LiveCardDescriptor;

    invoke-virtual {v2}, Lcom/google/android/glass/timeline/LiveCardDescriptor;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/glass/timeline/ITimelineManager;->cancelLiveCard(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_18} :catch_19

    .line 76
    :goto_18
    return-void

    .line 73
    :catch_19
    move-exception v0

    goto :goto_18
.end method
