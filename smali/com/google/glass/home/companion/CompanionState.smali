.class public Lcom/google/glass/home/companion/CompanionState;
.super Ljava/lang/Object;
.source "CompanionState.java"


# instance fields
.field private volatile companionService:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionState;->companionService:Lcom/google/glass/home/companion/CompanionService;

    .line 18
    .local v0, service:Lcom/google/glass/home/companion/CompanionService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTetheringErrorDetected()Z
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionState;->companionService:Lcom/google/glass/home/companion/CompanionService;

    .line 23
    .local v0, service:Lcom/google/glass/home/companion/CompanionService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionService;->isTetheringErrorDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Lcom/google/glass/home/companion/CompanionService;)V
    .locals 0
    .parameter "companionService"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionState;->companionService:Lcom/google/glass/home/companion/CompanionService;

    .line 14
    return-void
.end method
