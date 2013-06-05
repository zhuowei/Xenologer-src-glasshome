.class final Lcom/google/glass/home/GCMIntentService$1;
.super Landroid/os/AsyncTask;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$application:Lcom/google/glass/home/HomeApplication;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/GCMIntentService$1;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    iget-object v4, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v4}, Lcom/google/glass/home/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v4, "android_id"

    invoke-virtual {v3, v4}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    #calls: Lcom/google/glass/home/GCMIntentService;->getGsfDeviceId(Landroid/content/Context;)J
    invoke-static {v3}, Lcom/google/glass/home/GCMIntentService;->access$000(Landroid/content/Context;)J

    move-result-wide v0

    .line 159
    .local v0, gsfDeviceId:J
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/GCMIntentService$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, deviceIds:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v7, "ro.build.version.glass"

    iget-object v8, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    sget v9, Lcom/google/glass/home/R$string;->deviceinfo_unknown:I

    invoke-virtual {v8, v9}, Lcom/google/glass/home/HomeApplication;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, majorVersion:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v7}, Lcom/google/glass/home/HomeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v8}, Lcom/google/glass/home/HomeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v6, version:I
    :goto_0
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 175
    .local v3, osVersion:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 178
    .local v1, hwVersion:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v7}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v5

    .line 179
    .local v5, requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/GCMIntentService$1;->val$registrationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v8

    iget-object v7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v8

    iget-object v7, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setMajorVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setVersion(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setDeviceOsVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setDeviceHardware(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v4

    .line 189
    .local v4, requestBuilder:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v7

    new-instance v8, Lcom/google/glass/home/GCMIntentService$1$1;

    invoke-direct {v8, p0}, Lcom/google/glass/home/GCMIntentService$1$1;-><init>(Lcom/google/glass/home/GCMIntentService$1;)V

    #calls: Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V
    invoke-static {v5, v7, v8}, Lcom/google/glass/home/GCMIntentService;->access$100(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    .line 205
    return-void

    .line 171
    .end local v1           #hwVersion:Ljava/lang/String;
    .end local v3           #osVersion:Ljava/lang/String;
    .end local v4           #requestBuilder:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .end local v5           #requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    .end local v6           #version:I
    :catch_0
    move-exception v0

    .line 172
    .local v0, exception:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, -0x1

    .restart local v6       #version:I
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/GCMIntentService$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
