.class Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;
.super Ljava/lang/Object;
.source "GlasswareVoiceInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity$1;->this$0:Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;

    #calls: Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->createTimelineItem()V
    invoke-static {v0}, Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;->access$000(Lcom/google/glass/home/voice/GlasswareVoiceInputActivity;)V

    .line 51
    return-void
.end method
