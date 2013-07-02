.class public interface abstract Lcom/google/glass/companion/Proto$MotionEventOrBuilder;
.super Ljava/lang/Object;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()I
.end method

.method public abstract getButtonState()I
.end method

.method public abstract getDeviceId()I
.end method

.method public abstract getDownTime()J
.end method

.method public abstract getEdgeFlags()I
.end method

.method public abstract getEventTime()J
.end method

.method public abstract getFlags()I
.end method

.method public abstract getMetaState()I
.end method

.method public abstract getPointerCoords(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.end method

.method public abstract getPointerCoordsCount()I
.end method

.method public abstract getPointerCoordsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPointerCount()I
.end method

.method public abstract getPointerProperties(I)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
.end method

.method public abstract getPointerPropertiesCount()I
.end method

.method public abstract getPointerPropertiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSource()I
.end method

.method public abstract getXPrecision()F
.end method

.method public abstract getYPrecision()F
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasButtonState()Z
.end method

.method public abstract hasDeviceId()Z
.end method

.method public abstract hasDownTime()Z
.end method

.method public abstract hasEdgeFlags()Z
.end method

.method public abstract hasEventTime()Z
.end method

.method public abstract hasFlags()Z
.end method

.method public abstract hasMetaState()Z
.end method

.method public abstract hasPointerCount()Z
.end method

.method public abstract hasSource()Z
.end method

.method public abstract hasXPrecision()Z
.end method

.method public abstract hasYPrecision()Z
.end method
