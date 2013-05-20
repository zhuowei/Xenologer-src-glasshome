.class public Lcom/google/glass/home/companion/CompanionService$CompanionBinder;
.super Landroid/os/Binder;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanionBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/companion/CompanionService;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/google/glass/home/companion/CompanionService;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/home/companion/CompanionService$CompanionBinder;->this$0:Lcom/google/glass/home/companion/CompanionService;

    return-object v0
.end method
