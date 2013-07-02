.class public Lcom/google/glass/home/settings/VolumeSettingsItemView;
.super Lcom/google/glass/home/settings/SettingsCard;
.source "VolumeSettingsItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final icon:Landroid/widget/ImageView;

.field private final text:Lcom/google/glass/widget/TypophileTextView;

.field private volumeHelper:Lcom/google/glass/sound/VolumeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/settings/VolumeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/settings/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/google/glass/home/settings/VolumeSettingsItemView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/settings/VolumeSettingsItemView$1;-><init>(Lcom/google/glass/home/settings/VolumeSettingsItemView;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 59
    new-instance v0, Lcom/google/glass/sound/VolumeHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/sound/VolumeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->volume_settings_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcom/google/glass/home/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/google/glass/home/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->text:Lcom/google/glass/widget/TypophileTextView;

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/VolumeSettingsItemView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->update(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/sound/VolumeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->text:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private update(I)V
    .locals 3
    .parameter "headsetState"

    .prologue
    .line 81
    sget-object v0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating UI with headset state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;-><init>(Lcom/google/glass/home/settings/VolumeSettingsItemView;I)V

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/google/glass/sound/VolumeControlDialog;

    invoke-virtual {p0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/sound/VolumeControlDialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, dialog:Lcom/google/glass/sound/VolumeControlDialog;
    new-instance v1, Lcom/google/glass/home/settings/VolumeSettingsItemView$3;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/VolumeSettingsItemView$3;-><init>(Lcom/google/glass/home/settings/VolumeSettingsItemView;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/VolumeControlDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    invoke-virtual {v0}, Lcom/google/glass/sound/VolumeControlDialog;->show()V

    .line 126
    const/4 v1, 0x1

    return v1
.end method

.method public onLoad()V
    .locals 6

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsCard;->onLoad()V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->update(I)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.HEADSET_PLUG"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/glass/home/settings/SettingsCard;->onUnload()V

    .line 76
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 78
    return-void
.end method
