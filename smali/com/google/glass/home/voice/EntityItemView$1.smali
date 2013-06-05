.class Lcom/google/glass/home/voice/EntityItemView$1;
.super Lcom/google/glass/util/PersonImageDownloadTask;
.source "EntityItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/EntityItemView;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/EntityItemView;

.field final synthetic val$displayName:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/EntityItemView;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/glass/home/voice/EntityItemView$1;->this$0:Lcom/google/glass/home/voice/EntityItemView;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/glass/home/voice/EntityItemView$1;->val$displayName:Ljava/lang/String;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/glass/home/voice/EntityItemView$1;->val$id:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/util/PersonImageDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    return-void
.end method


# virtual methods
.method protected getCacheId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView$1;->val$id:Ljava/lang/String;

    return-object v0
.end method

.method protected getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/home/voice/EntityItemView$1;->val$displayName:Ljava/lang/String;

    return-object v0
.end method
