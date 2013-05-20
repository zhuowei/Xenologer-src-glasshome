.class interface abstract Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Lcom/google/glass/home/voice/OverscrollView$OverscrollViewListener;
.implements Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/VoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VoiceMenuListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/google/glass/app/GlassError;)V
.end method

.method public abstract onShowSecondaryMenu()V
.end method
