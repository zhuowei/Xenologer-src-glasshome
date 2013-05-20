.class public Lcom/google/glass/util/BuildHelper;
.super Ljava/lang/Object;
.source "BuildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BuildHelper$Type;
    }
.end annotation


# static fields
.field private static type:Lcom/google/glass/util/BuildHelper$Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getType()Lcom/google/glass/util/BuildHelper$Type;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/util/BuildHelper;->type:Lcom/google/glass/util/BuildHelper$Type;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/util/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/util/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BuildHelper;->type:Lcom/google/glass/util/BuildHelper$Type;

    .line 60
    :cond_0
    sget-object v0, Lcom/google/glass/util/BuildHelper;->type:Lcom/google/glass/util/BuildHelper$Type;

    return-object v0
.end method

.method public static isEng()Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/util/BuildHelper$Type;->ENG:Lcom/google/glass/util/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/util/BuildHelper;->getType()Lcom/google/glass/util/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUser()Z
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/util/BuildHelper$Type;->USER:Lcom/google/glass/util/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/util/BuildHelper;->getType()Lcom/google/glass/util/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserdebug()Z
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/util/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/util/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/util/BuildHelper;->getType()Lcom/google/glass/util/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
