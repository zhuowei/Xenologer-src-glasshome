.class Lcom/google/glass/home/companion/EnvelopeSender$1;
.super Landroid/os/Handler;
.source "EnvelopeSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/companion/EnvelopeSender;-><init>(Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/EnvelopeSender;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/EnvelopeSender;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/home/companion/EnvelopeSender$1;->this$0:Lcom/google/glass/home/companion/EnvelopeSender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/glass/home/companion/EnvelopeSender$1;->this$0:Lcom/google/glass/home/companion/EnvelopeSender;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/glass/companion/Proto$Envelope;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/companion/EnvelopeSender;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 38
    return-void
.end method
