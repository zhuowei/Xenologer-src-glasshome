.class public Lcom/google/glass/app/GlassError;
.super Ljava/lang/Object;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/GlassError$3;,
        Lcom/google/glass/app/GlassError$OnConfirmAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoHide:Z

.field private finishWhenDone:Z

.field private iconId:I

.field private onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

.field private onConfirmRunnable:Ljava/lang/Runnable;

.field private primaryMessageId:I

.field private secondaryMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/app/GlassError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassError;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    iput v0, p0, Lcom/google/glass/app/GlassError;->iconId:I

    .line 38
    return-void
.end method

.method private getSoundManager(Landroid/app/Activity;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "activity"

    .prologue
    .line 189
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getConfirmActionRunnable(Lcom/google/glass/app/GlassError$OnConfirmAction;Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 4
    .parameter "onConfirmAction"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p1, :cond_0

    .line 216
    :goto_0
    return-object v0

    .line 206
    :cond_0
    sget-object v1, Lcom/google/glass/app/GlassError$3;->$SwitchMap$com$google$glass$app$GlassError$OnConfirmAction:[I

    invoke-virtual {p1}, Lcom/google/glass/app/GlassError$OnConfirmAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 215
    sget-object v1, Lcom/google/glass/app/GlassError;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onConfirmAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :pswitch_0
    new-instance v0, Lcom/google/glass/app/GlassError$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/app/GlassError$2;-><init>(Lcom/google/glass/app/GlassError;Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/google/glass/app/GlassError;->iconId:I

    return v0
.end method

.method public getOnConfirmAction()Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method

.method public getOnConfirmRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getOnConfirmRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1
    .parameter "context"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnConfirmRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnConfirmRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnConfirmAction()Lcom/google/glass/app/GlassError$OnConfirmAction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/app/GlassError;->getConfirmActionRunnable(Lcom/google/glass/app/GlassError$OnConfirmAction;Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrimaryMessageId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    return v0
.end method

.method public getSecondaryMessageId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    return v0
.end method

.method public isAutoHide()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->autoHide:Z

    return v0
.end method

.method public setAutoHide(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "autoHide"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->autoHide:Z

    .line 94
    return-object p0
.end method

.method public setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "finishWhenDone"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->finishWhenDone:Z

    .line 78
    return-object p0
.end method

.method public setIconId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "iconId"

    .prologue
    .line 120
    iput p1, p0, Lcom/google/glass/app/GlassError;->iconId:I

    .line 121
    return-object p0
.end method

.method public setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "onConfirmAction"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 109
    return-object p0
.end method

.method public setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "onConfirmRunnable"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    .line 134
    return-object p0
.end method

.method public setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "primaryMessageId"

    .prologue
    .line 45
    iput p1, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    .line 46
    return-object p0
.end method

.method public setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "secondaryMessageId"

    .prologue
    .line 61
    iput p1, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    .line 62
    return-object p0
.end method

.method public shouldFinishWhenDone()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->finishWhenDone:Z

    return v0
.end method

.method public show(Lcom/google/glass/app/GlassActivity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v6, 0x1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassError;->getSoundManager(Landroid/app/Activity;)Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    .line 143
    .local v3, soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getSecondaryMessageId()I

    move-result v2

    .line 144
    .local v2, secondaryMessageId:I
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassError;->getOnConfirmRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v1

    .line 145
    .local v1, onConfirmRunnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, builder:Lcom/google/glass/widget/MessageDialog$Builder;
    invoke-virtual {v0, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->isAutoHide()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getPrimaryMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getIconId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassError$1;

    invoke-direct {v5, p0, p1, v1, v3}, Lcom/google/glass/app/GlassError$1;-><init>(Lcom/google/glass/app/GlassError;Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 180
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 184
    :cond_0
    sget-object v4, Lcom/google/glass/app/GlassError;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Showing error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getPrimaryMessageId()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/glass/app/GlassActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 186
    return-void
.end method
