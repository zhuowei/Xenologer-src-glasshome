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
    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1009
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1044
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 827
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 828
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1009
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1044
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1141
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 833
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 834
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 840
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 815
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 836
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 2

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    .line 881
    .local v0, result:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 884
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 5

    .prologue
    .line 888
    new-instance v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$1;)V

    .line 889
    .local v1, result:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 890
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 891
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 892
    or-int/lit8 v2, v2, 0x1

    .line 894
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$502(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 895
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 896
    or-int/lit8 v2, v2, 0x2

    .line 898
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$602(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 900
    or-int/lit8 v2, v2, 0x4

    .line 902
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$702(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 904
    or-int/lit8 v2, v2, 0x8

    .line 906
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$802(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 908
    or-int/lit8 v2, v2, 0x10

    .line 910
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$902(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 912
    or-int/lit8 v2, v2, 0x20

    .line 914
    :cond_5
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->version_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1002(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;J)J

    .line 915
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 916
    or-int/lit8 v2, v2, 0x40

    .line 918
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1102(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 920
    or-int/lit16 v2, v2, 0x80

    .line 922
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1202(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 924
    or-int/lit16 v2, v2, 0x100

    .line 926
    :cond_8
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->gsfDeviceId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1302(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;J)J

    .line 927
    #setter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1402(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;I)I

    .line 928
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onBuilt()V

    .line 929
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 844
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 845
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 846
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 848
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 850
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 851
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 852
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 854
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 855
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    .line 856
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 858
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 860
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 861
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    .line 862
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 863
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1038
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1039
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1040
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1041
    return-object p0
.end method

.method public clearDeviceHardware()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1604
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceHardware()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1605
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1606
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1226
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1227
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1228
    return-object p0
.end method

.method public clearDeviceOsVersion()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1530
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1531
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1532
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1533
    return-object p0
.end method

.method public clearGsfDeviceId()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2

    .prologue
    .line 1648
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1649
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    .line 1650
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1651
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1324
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1325
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1326
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1327
    return-object p0
.end method

.method public clearMajorVersion()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1422
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getMajorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1423
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1424
    return-object p0
.end method

.method public clearRegistrationId()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1119
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1121
    return-object p0
.end method

.method public clearVersion()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2

    .prologue
    .line 1470
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    .line 1472
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1473
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2

    .prologue
    .line 867
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
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 809
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
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
    .locals 1

    .prologue
    .line 876
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 872
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DmRegister;->internal_static_googlex_glass_common_proto_C2DMRegistrationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDeviceHardware()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1561
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1562
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1564
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1567
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDeviceHardwareBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1575
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1576
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1577
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1580
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1583
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
    .locals 3

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1165
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1166
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1171
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1186
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1187
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1190
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1193
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
    .locals 3

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1488
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1489
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1491
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1494
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDeviceOsVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1502
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1503
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1504
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1507
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1510
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
    .line 1633
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1270
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1271
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1276
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1289
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1290
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1293
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1296
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
    .locals 3

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1367
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1368
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1370
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1373
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getMajorVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1385
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1386
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1387
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1390
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1393
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
    .locals 3

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1064
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1065
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1070
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getRegistrationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1083
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1084
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1087
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1090
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
    .line 1455
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1014
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
    .line 1554
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
    .line 1152
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
    .line 1481
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
    .line 1627
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
    .line 1259
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
    .line 1356
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
    .line 1053
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
    .line 1449
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
    .line 820
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
    .line 987
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 942
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 983
    :goto_0
    return-object p0

    .line 943
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getAction()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 946
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasRegistrationId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 948
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->registrationId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$600(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 949
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 951
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 953
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$700(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 954
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 956
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 957
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 958
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->locale_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$800(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 961
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasMajorVersion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 962
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 963
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->majorVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$900(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 964
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 966
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 967
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setVersion(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 969
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasDeviceOsVersion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 971
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceOsVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1100(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 972
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 974
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasDeviceHardware()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 975
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 976
    #getter for: Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->deviceHardware_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->access$1200(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 977
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 979
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->hasGsfDeviceId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 980
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getGsfDeviceId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 982
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
    .line 994
    const/4 v2, 0x0

    .line 996
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

    .line 1001
    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    .line 1005
    :cond_0
    return-object p0

    .line 997
    :catch_0
    move-exception v1

    .line 998
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-object v2, v0

    .line 999
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1002
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 933
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    if-eqz v0, :cond_0

    .line 934
    check-cast p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object p0

    .line 937
    .end local p0
    :goto_0
    return-object p0

    .line 936
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
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
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
    .line 809
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
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 809
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
    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1026
    if-nez p1, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1030
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->action_:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 1031
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1032
    return-object p0
.end method

.method public setDeviceHardware(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1591
    if-nez p1, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1594
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1595
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1596
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1597
    return-object p0
.end method

.method public setDeviceHardwareBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1613
    if-nez p1, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1616
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1617
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceHardware_:Ljava/lang/Object;

    .line 1618
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1619
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1207
    if-nez p1, :cond_0

    .line 1208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1210
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1211
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1212
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1213
    return-object p0
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1241
    if-nez p1, :cond_0

    .line 1242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1244
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1245
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceId_:Ljava/lang/Object;

    .line 1246
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1247
    return-object p0
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1518
    if-nez p1, :cond_0

    .line 1519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1521
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1522
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1523
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1524
    return-object p0
.end method

.method public setDeviceOsVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1543
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1544
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->deviceOsVersion_:Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1546
    return-object p0
.end method

.method public setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1639
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1640
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->gsfDeviceId_:J

    .line 1641
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1642
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1308
    if-nez p1, :cond_0

    .line 1309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1311
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1312
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1313
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1314
    return-object p0
.end method

.method public setLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1338
    if-nez p1, :cond_0

    .line 1339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1341
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1342
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 1343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1344
    return-object p0
.end method

.method public setMajorVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1405
    if-nez p1, :cond_0

    .line 1406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1408
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1409
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1410
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1411
    return-object p0
.end method

.method public setMajorVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1435
    if-nez p1, :cond_0

    .line 1436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1438
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1439
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->majorVersion_:Ljava/lang/Object;

    .line 1440
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1441
    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1102
    if-nez p1, :cond_0

    .line 1103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1105
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1106
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1108
    return-object p0
.end method

.method public setRegistrationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1132
    if-nez p1, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1135
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1136
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->registrationId_:Ljava/lang/Object;

    .line 1137
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1138
    return-object p0
.end method

.method public setVersion(J)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1461
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->bitField0_:I

    .line 1462
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->version_:J

    .line 1463
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->onChanged()V

    .line 1464
    return-object p0
.end method
