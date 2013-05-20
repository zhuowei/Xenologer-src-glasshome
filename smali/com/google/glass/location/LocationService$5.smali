.class Lcom/google/glass/location/LocationService$5;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationService;->postOnClientDisconnected(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationService;

.field final synthetic val$pid:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/glass/location/LocationService$5;->this$0:Lcom/google/glass/location/LocationService;

    iput-object p2, p0, Lcom/google/glass/location/LocationService$5;->val$pid:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/glass/location/LocationService$5;->this$0:Lcom/google/glass/location/LocationService;

    iget-object v1, p0, Lcom/google/glass/location/LocationService$5;->val$pid:Ljava/lang/Integer;

    #calls: Lcom/google/glass/location/LocationService;->onClientDisconnected(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/google/glass/location/LocationService;->access$1000(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V

    .line 421
    return-void
.end method
