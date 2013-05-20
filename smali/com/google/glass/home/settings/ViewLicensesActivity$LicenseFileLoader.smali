.class final Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;
.super Landroid/os/AsyncTask;
.source "ViewLicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/ViewLicensesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LicenseFileLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileName:Ljava/lang/String;

.field private html:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/ViewLicensesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .parameter "params"

    .prologue
    const/16 v6, 0x800

    const/4 v9, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, inputReader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 132
    .local v0, data:Ljava/lang/StringBuilder;
    const/16 v6, 0x800

    :try_start_0
    new-array v5, v6, [C

    .line 134
    .local v5, tmp:[C
    iget-object v6, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    const-string v7, ".gz"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .local v3, inputReader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 141
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, numRead:I
    if-ltz v4, :cond_2

    .line 142
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 144
    .end local v4           #numRead:I
    .end local v5           #tmp:[C
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "License HTML file not found at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 152
    if-eqz v2, :cond_0

    .line 153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 166
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-object v6

    .line 138
    .restart local v5       #tmp:[C
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v2       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_0

    .line 152
    .restart local v4       #numRead:I
    :cond_2
    if-eqz v2, :cond_3

    .line 153
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    :cond_3
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 161
    invoke-static {}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "License HTML is empty (from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    .line 147
    .end local v4           #numRead:I
    .end local v5           #tmp:[C
    :catch_1
    move-exception v1

    .line 148
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading license HTML file at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 152
    if-eqz v2, :cond_0

    .line 153
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 155
    :catch_2
    move-exception v7

    goto :goto_1

    .line 151
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 152
    if-eqz v2, :cond_4

    .line 153
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 157
    :cond_4
    :goto_3
    throw v6

    .line 165
    .restart local v4       #numRead:I
    .restart local v5       #tmp:[C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->html:Ljava/lang/String;

    .line 166
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    .line 155
    :catch_3
    move-exception v6

    goto :goto_2

    .end local v4           #numRead:I
    .end local v5           #tmp:[C
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;

    iget-object v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->html:Ljava/lang/String;

    #calls: Lcom/google/glass/home/settings/ViewLicensesActivity;->showHtml(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$100(Lcom/google/glass/home/settings/ViewLicensesActivity;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;

    #calls: Lcom/google/glass/home/settings/ViewLicensesActivity;->showError()V
    invoke-static {v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$200(Lcom/google/glass/home/settings/ViewLicensesActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
