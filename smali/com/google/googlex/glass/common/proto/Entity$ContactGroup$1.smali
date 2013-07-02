.class final Lcom/google/googlex/glass/common/proto/Entity$ContactGroup$1;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 1
    .parameter "number"

    .prologue
    .line 418
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup$1;->findValueByNumber(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    move-result-object v0

    return-object v0
.end method
