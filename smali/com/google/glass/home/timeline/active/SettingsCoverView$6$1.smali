.class Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;
.super Ljava/lang/Object;
.source "SettingsCoverView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

.field final synthetic val$netInfo:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/SettingsCoverView$6;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iput-object p2, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->val$netInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 248
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    sget v10, Lcom/google/glass/home/R$id;->data_connection_image:I

    invoke-virtual {v9, v10}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 249
    .local v1, dataConnectionImage:Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/home/R$drawable;->ic_data_off_big:I

    .line 250
    .local v2, dataConnectionImageRes:I
    const/4 v0, 0x0

    .line 251
    .local v0, currentlyConnectedName:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->val$netInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->val$netInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 252
    sget v2, Lcom/google/glass/home/R$drawable;->ic_data_wifi_big:I

    .line 253
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->val$context:Landroid/content/Context;

    sget v10, Lcom/google/glass/home/R$string;->wifi:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    sget v10, Lcom/google/glass/home/R$id;->data_connection_text:I

    invoke-virtual {v9, v10}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 264
    .local v3, dataConnectionText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    sget v10, Lcom/google/glass/home/R$id;->extra_info:I

    invoke-virtual {v9, v10}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 265
    .local v6, extraInfo:Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    if-eqz v0, :cond_5

    .line 267
    sget v5, Lcom/google/glass/home/R$string;->settings_cover_connection_issue:I

    .line 268
    .local v5, dataConnectionTextRes:I
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$800(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I

    move-result v4

    .line 269
    .local v4, dataConnectionTextColor:I
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->inetState:Lcom/google/glass/util/InetConnectionState;
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$900(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Lcom/google/glass/util/InetConnectionState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/util/InetConnectionState;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 270
    sget v5, Lcom/google/glass/home/R$string;->settings_cover_connection_data:I

    .line 271
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->green:I
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$1000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I

    move-result v4

    .line 276
    :goto_1
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->val$context:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, text:Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    .end local v4           #dataConnectionTextColor:I
    .end local v5           #dataConnectionTextRes:I
    .end local v8           #text:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 254
    .end local v3           #dataConnectionText:Landroid/widget/TextView;
    .end local v6           #extraInfo:Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->singlyPairedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$300(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->isTethered:Z
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$100(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->isHeadset:Z
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$400(Lcom/google/glass/home/timeline/active/SettingsCoverView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 255
    :cond_2
    sget v2, Lcom/google/glass/home/R$drawable;->ic_data_bt_big:I

    .line 256
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->val$context:Landroid/content/Context;

    sget v10, Lcom/google/glass/home/R$string;->bluetooth:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :cond_3
    sget v2, Lcom/google/glass/home/R$drawable;->ic_data_off_big:I

    .line 259
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 273
    .restart local v3       #dataConnectionText:Landroid/widget/TextView;
    .restart local v4       #dataConnectionTextColor:I
    .restart local v5       #dataConnectionTextRes:I
    .restart local v6       #extraInfo:Landroid/widget/TextView;
    :cond_4
    sget v5, Lcom/google/glass/home/R$string;->settings_cover_connection_issue:I

    .line 274
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->yellow:I
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$800(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I

    move-result v4

    goto :goto_1

    .line 280
    .end local v4           #dataConnectionTextColor:I
    .end local v5           #dataConnectionTextRes:I
    :cond_5
    sget v9, Lcom/google/glass/home/R$string;->settings_cover_connection_no_data:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 281
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #getter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->red:I
    invoke-static {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$1100(Lcom/google/glass/home/timeline/active/SettingsCoverView;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v9, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$6$1;->this$1:Lcom/google/glass/home/timeline/active/SettingsCoverView$6;

    iget-object v9, v9, Lcom/google/glass/home/timeline/active/SettingsCoverView$6;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-virtual {v9}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v7

    .line 285
    .local v7, proxy:Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v7}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 286
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    sget v9, Lcom/google/glass/home/R$string;->settings_cover_check_my_glass:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
