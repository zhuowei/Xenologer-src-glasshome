.class public final Lcom/google/glass/home/settings/FactoryResetActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FactoryResetActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/home/settings/FactoryResetActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/FactoryResetActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/home/settings/FactoryResetActivity;->TAG:Ljava/lang/String;

    const-string v1, "Requesting factory reset"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.deviceadmin.LOCAL_WIPE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/FactoryResetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/google/glass/home/R$layout;->factory_reset_activity:I

    return v0
.end method
