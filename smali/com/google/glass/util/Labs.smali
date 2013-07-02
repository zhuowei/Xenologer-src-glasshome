.class public Lcom/google/glass/util/Labs;
.super Ljava/lang/Object;
.source "Labs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/Labs$Feature;
    }
.end annotation


# static fields
.field static final MAX_PROPERTY_LENGTH:I = 0x1f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROPERTY_PREFIX:Ljava/lang/String; = "persist.lab."
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    return-void
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->isSetByTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getValueForTest()Z

    move-result v0

    .line 319
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Z

    move-result v0

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getPropertyKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/hidden/HiddenSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Z)V
    .locals 0
    .parameter "feature"
    .parameter "value"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/google/glass/util/Assert;->assertIsTest()V

    .line 326
    invoke-virtual {p0, p1}, Lcom/google/glass/util/Labs$Feature;->setTestValue(Z)V

    .line 327
    return-void
.end method
