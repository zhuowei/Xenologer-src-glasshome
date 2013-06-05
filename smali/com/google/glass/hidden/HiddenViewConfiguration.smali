.class public final Lcom/google/glass/hidden/HiddenViewConfiguration;
.super Ljava/lang/Object;
.source "HiddenViewConfiguration.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTapTimeout(Landroid/view/ViewConfiguration;)J
    .locals 2
    .parameter "config"

    .prologue
    .line 14
    const-wide/32 v0, 0xffff

    return-wide v0
.end method
