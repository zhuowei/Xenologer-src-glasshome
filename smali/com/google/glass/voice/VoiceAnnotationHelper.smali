.class public Lcom/google/glass/voice/VoiceAnnotationHelper;
.super Ljava/lang/Object;
.source "VoiceAnnotationHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field private static final ACTION_VOICE_ANNOTATION:Ljava/lang/String; = "com.google.glass.ACTION_VOICE_ANNOTATION"

.field public static final EXTRA_ANNOTATION_RESULT:Ljava/lang/String; = "annotation_result"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceAnnotationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 47
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 48
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->TAG:Ljava/lang/String;

    const-string v2, "Response was not OK, means transcription failed or was cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-object v0

    .line 52
    :cond_0
    if-nez p2, :cond_1

    .line 53
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->TAG:Ljava/lang/String;

    const-string v2, "Data intent was null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "annotation_result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startAnnotationForResult(I)V
    .locals 3
    .parameter "requestCode"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    return-void
.end method
