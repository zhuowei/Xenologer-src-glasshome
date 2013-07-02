.class public final Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "C2DMRegistrationRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

.field private bitField0_:I

.field private deviceHardware_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private deviceOsVersion_:Ljava/lang/Object;

.field private gsfDeviceId_:J

.field private locale_:Ljava/lang/Object;

.field private majorVersion_:Ljava/lang/Object;

.field private registrationId_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1015
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1262
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1494
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 833
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 834
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1015
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1262
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1494
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 839
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 840
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 846
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 821
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 842
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 2

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    .line 887
    .local v0, result:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 890
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 5

    .prologue
    .line 894
    new-instance v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V

    .line 895
    .local v1, result:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 896
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 897
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 898
    or-int/lit8 v2, v2, 0x1

    .line 900
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 901
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 902
    or-int/lit8 v2, v2, 0x2

    .line 904
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 906
    or-int/lit8 v2, v2, 0x4

    .line 908
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$702(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 910
    or-int/lit8 v2, v2, 0x8

    .line 912
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$802(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 914
    or-int/lit8 v2, v2, 0x10

    .line 916
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$902(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 918
    or-int/lit8 v2, v2, 0x20

    .line 920
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1002(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;J)J

    .line 921
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 922
    or-int/lit8 v2, v2, 0x40

    .line 924
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1102(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 926
    or-int/lit16 v2, v2, 0x80

    .line 928
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1202(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 930
    or-int/lit16 v2, v2, 0x100

    .line 932
    :cond_8
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1302(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;J)J

    .line 933
    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1402(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;I)I

    .line 934
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onBuilt()V

    .line 935
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 850
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 851
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 852
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 854
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 856
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 860
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 861
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    .line 862
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 864
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 866
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 867
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    .line 868
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 869
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1045
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1046
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1047
    return-object p0
.end method

.method public clearDeviceHardware()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1628
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceHardware()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1629
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1630
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1238
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1239
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1240
    return-object p0
.end method

.method public clearDeviceOsVersion()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1551
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1552
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1553
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1554
    return-object p0
.end method

.method public clearGsfDeviceId()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2

    .prologue
    .line 1672
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1673
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    .line 1674
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1675
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1340
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1341
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1342
    return-object p0
.end method

.method public clearMajorVersion()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1439
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1440
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getMajorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1441
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1442
    return-object p0
.end method

.method public clearRegistrationId()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1128
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1129
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1130
    return-object p0
.end method

.method public clearVersion()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2

    .prologue
    .line 1488
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    .line 1490
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1491
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2

    .prologue
    .line 873
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceHardware()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1582
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1583
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1585
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1586
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1587
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1591
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1599
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1600
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1601
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1604
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1607
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1173
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1174
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1175
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1177
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1179
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1183
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1198
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1199
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1202
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1205
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1505
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1506
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1507
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1509
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1510
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1511
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1515
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1524
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1525
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1528
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1531
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getGsfDeviceId()J
    .locals 2

    .prologue
    .line 1657
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1282
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1283
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1285
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1286
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1287
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1291
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1304
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1305
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1308
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1311
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getMajorVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1381
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1382
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1383
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1385
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1386
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1387
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1391
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getMajorVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1404
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1405
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1408
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1411
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1069
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1070
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1071
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1073
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1075
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1079
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getRegistrationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1092
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1093
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1096
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1099
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 1473
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1020
    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceHardware()Z
    .locals 2

    .prologue
    .line 1575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceOsVersion()Z
    .locals 2

    .prologue
    .line 1499
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGsfDeviceId()Z
    .locals 2

    .prologue
    .line 1651
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 1271
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMajorVersion()Z
    .locals 2

    .prologue
    .line 1371
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationId()Z
    .locals 2

    .prologue
    .line 1059
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 1467
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 826
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 948
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 989
    :goto_0
    return-object p0

    .line 949
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 952
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasRegistrationId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 954
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$600(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 955
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 957
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 958
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 959
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$700(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 962
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 963
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 964
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$800(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 965
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 967
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasMajorVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 968
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 969
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$900(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 970
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 972
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 973
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setVersion(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 975
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasDeviceOsVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 976
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 977
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1100(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 978
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 980
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasDeviceHardware()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 981
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 982
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1200(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 983
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 985
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasGsfDeviceId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 986
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getGsfDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 988
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    const/4 v2, 0x0

    .line 1002
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    if-eqz v2, :cond_0

    .line 1008
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 1011
    :cond_0
    return-object p0

    .line 1003
    :catch_0
    move-exception v1

    .line 1004
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-object v2, v0

    .line 1005
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1007
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1008
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 939
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    if-eqz v0, :cond_0

    .line 940
    check-cast p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object p0

    .line 943
    .end local p0
    :goto_0
    return-object p0

    .line 942
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1032
    if-nez p1, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1035
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1036
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1038
    return-object p0
.end method

.method public setDeviceHardware(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1615
    if-nez p1, :cond_0

    .line 1616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1618
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1619
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1620
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1621
    return-object p0
.end method

.method public setDeviceHardwareBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1637
    if-nez p1, :cond_0

    .line 1638
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1640
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1641
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1642
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1643
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1219
    if-nez p1, :cond_0

    .line 1220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1222
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1223
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1224
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1225
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1256
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1257
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1258
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1259
    return-object p0
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1539
    if-nez p1, :cond_0

    .line 1540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1542
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1543
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1544
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1545
    return-object p0
.end method

.method public setDeviceOsVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1561
    if-nez p1, :cond_0

    .line 1562
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1564
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1565
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1566
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1567
    return-object p0
.end method

.method public setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1663
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1664
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    .line 1665
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1666
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1323
    if-nez p1, :cond_0

    .line 1324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1326
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1327
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1328
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1329
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1353
    if-nez p1, :cond_0

    .line 1354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1356
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1357
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1358
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1359
    return-object p0
.end method

.method public setMajorVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1423
    if-nez p1, :cond_0

    .line 1424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1426
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1427
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1428
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1429
    return-object p0
.end method

.method public setMajorVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1453
    if-nez p1, :cond_0

    .line 1454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1456
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1457
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1458
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1459
    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1111
    if-nez p1, :cond_0

    .line 1112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1114
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1115
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1116
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1117
    return-object p0
.end method

.method public setRegistrationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1141
    if-nez p1, :cond_0

    .line 1142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1144
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1145
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1146
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1147
    return-object p0
.end method

.method public setVersion(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1479
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1480
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    .line 1481
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1482
    return-object p0
.end method
