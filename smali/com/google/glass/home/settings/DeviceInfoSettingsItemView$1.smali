.class Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$1;
.super Ljava/lang/Object;
.source "DeviceInfoSettingsItemView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;

    #calls: Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->update()V
    invoke-static {v0}, Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;->access$000(Lcom/google/glass/home/settings/DeviceInfoSettingsItemView;)V

    .line 66
    return-void
.end method
