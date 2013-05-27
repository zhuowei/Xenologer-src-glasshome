.class public final Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;
.super Ljava/lang/Object;
.source "VoiceTriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/app/VoiceTriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trigger"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mConstraints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyword:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .registers 14
    .parameter "pm"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mComponent:Landroid/content/ComponentName;

    .line 107
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 109
    .local v6, metadata:Landroid/os/Bundle;
    if-eqz v6, :cond_20

    const-string v8, "com.google.android.glass.voice_trigger"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 110
    :cond_20
    new-instance v8, Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;

    const-string v9, "No text defined for voice trigger."

    invoke-direct {v8, v9}, Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 112
    :cond_28
    const-string v8, "com.google.android.glass.voice_trigger"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, keywordResource:I
    :try_start_2e
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 116
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mKeyword:Ljava/lang/String;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_3c} :catch_60

    .line 121
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mConstraints:Ljava/util/Set;

    .line 122
    invoke-static {}, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->values()[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_49
    if-ge v3, v5, :cond_67

    aget-object v1, v0, v3

    .line 123
    .local v1, constraint:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    invoke-virtual {v1}, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 124
    iget-object v8, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mConstraints:Ljava/util/Set;

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .line 117
    .end local v0           #arr$:[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    .end local v1           #constraint:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #resources:Landroid/content/res/Resources;
    :catch_60
    move-exception v2

    .line 118
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;

    invoke-direct {v8, v2}, Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 127
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #arr$:[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #resources:Landroid/content/res/Resources;
    :cond_67
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/google/android/glass/app/VoiceTriggerManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/glass/app/VoiceTriggerManager$TriggerBuildingException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public hasConstraint(Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;)Z
    .registers 3
    .parameter "constraint"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mConstraints:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Trigger;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
