.class Lcom/google/glass/location/LocationService$4;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationService;->handleRegisterClient(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationService;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/glass/location/LocationService$4;->this$0:Lcom/google/glass/location/LocationService;

    iput p2, p0, Lcom/google/glass/location/LocationService$4;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/glass/location/LocationService$4;->this$0:Lcom/google/glass/location/LocationService;

    iget v1, p0, Lcom/google/glass/location/LocationService$4;->val$pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #calls: Lcom/google/glass/location/LocationService;->postOnClientDisconnected(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/google/glass/location/LocationService;->access$900(Lcom/google/glass/location/LocationService;Ljava/lang/Integer;)V

    .line 296
    return-void
.end method
