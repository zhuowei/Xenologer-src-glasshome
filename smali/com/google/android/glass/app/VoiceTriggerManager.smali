.class public final Lcom/google/android/glass/app/VoiceTriggerManager;
.super Ljava/lang/Object;
.source "VoiceTriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/app/VoiceTriggerManager$1;,
        Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;,
        Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;,
        Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    }
.end annotation


# static fields
.field private static final ACTION_VOICE_TRIGGER:Ljava/lang/String; = "com.google.android.glass.action.VOICE_TRIGGER"

.field private static final KEY_TRIGGER_TEXT:Ljava/lang/String; = "com.google.android.glass.voice_trigger"

.field private static final TAG:Ljava/lang/String; = "VoiceTriggers"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/glass/app/VoiceTriggerManager;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public load()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-string v8, "VoiceTriggers"

    const-string v9, "Loading voice triggers"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;>;"
    iget-object v8, p0, Lcom/google/android/glass/app/VoiceTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 60
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.android.glass.action.VOICE_TRIGGER"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, triggerIntent:Landroid/content/Intent;
    const/16 v8, 0x80

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 65
    .local v1, activity:Landroid/content/pm/ResolveInfo;
    :try_start_2f
    new-instance v6, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v1, v8}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/google/android/glass/app/VoiceTriggerManager$1;)V

    .line 66
    .local v6, trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v8, "VoiceTriggers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException; {:try_start_2f .. :try_end_50} :catch_51

    goto :goto_23

    .line 68
    .end local v6           #trigger:Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
    :catch_51
    move-exception v2

    .line 69
    .local v2, e:Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;
    const-string v8, "VoiceTriggers"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to build voice trigger for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 72
    .end local v1           #activity:Landroid/content/pm/ResolveInfo;
    .end local v2           #e:Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;
    :cond_6b
    return-object v5
.end method
