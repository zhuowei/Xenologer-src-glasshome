.class Lcom/google/glass/location/LocationService$3;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationService;->onCompanionDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationService;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationService;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/glass/location/LocationService$3;->this$0:Lcom/google/glass/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/location/LocationService$3;->this$0:Lcom/google/glass/location/LocationService;

    invoke-virtual {v0}, Lcom/google/glass/location/LocationService;->handleCompanionDisconnected()V

    .line 238
    return-void
.end method
