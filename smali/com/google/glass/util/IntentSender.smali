.class public abstract Lcom/google/glass/util/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/IntentSender$DefaultIntentSender;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/glass/util/IntentSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/IntentSender;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    return-object v0
.end method

.method public static setInstance(Lcom/google/glass/util/IntentSender;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sput-object p0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
.end method
