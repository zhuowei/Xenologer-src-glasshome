.class final Lcom/google/googlex/glass/common/proto/AdminInternalDescriptors$1;
.super Ljava/lang/Object;
.source "AdminInternalDescriptors.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AdminInternalDescriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 1
    .parameter "root"

    .prologue
    .line 29
    sput-object p1, Lcom/google/googlex/glass/common/proto/AdminInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
