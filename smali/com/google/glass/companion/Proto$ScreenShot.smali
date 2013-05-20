.class public final Lcom/google/glass/companion/Proto$ScreenShot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ScreenShotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenShot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$ScreenShot;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREENSHOT_BYTES_G2C_FIELD_NUMBER:I = 0x3

.field public static final START_SCREENSHOT_REQUEST_C2G_FIELD_NUMBER:I = 0x1

.field public static final STOP_SCREENSHOT_REQUEST_C2G_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private screenshotBytesG2C_:Ljava/lang/Object;

.field private startScreenshotRequestC2G_:Z

.field private stopScreenshotRequestC2G_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9046
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    .line 9220
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 9599
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 9600
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->initFields()V

    .line 9601
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 9002
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9167
    iput-byte v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 9190
    iput v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 9003
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->initFields()V

    .line 9004
    const/4 v2, 0x0

    .line 9006
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 9007
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 9008
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9009
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 9014
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/companion/Proto$ScreenShot;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9016
    const/4 v0, 0x1

    goto :goto_0

    .line 9011
    :sswitch_0
    const/4 v0, 0x1

    .line 9012
    goto :goto_0

    .line 9021
    :sswitch_1
    iget v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 9022
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 9037
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 9038
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9043
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->makeExtensionsImmutable()V

    throw v4

    .line 9026
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 9027
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 9039
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 9040
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9031
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 9032
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 9043
    .end local v3           #tag:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->makeExtensionsImmutable()V

    .line 9045
    return-void

    .line 9009
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8979
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8985
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9167
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 9190
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 8987
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8979
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8988
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9167
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 9190
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 8988
    return-void
.end method

.method static synthetic access$7902(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8979
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8979
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/google/glass/companion/Proto$ScreenShot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8979
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/google/glass/companion/Proto$ScreenShot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8979
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/glass/companion/Proto$ScreenShot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8979
    iput p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 8992
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9163
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 9164
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 9165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9166
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9282
    #calls: Lcom/google/glass/companion/Proto$ScreenShot$Builder;->create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->access$7700()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 9285
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9262
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9268
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9232
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9238
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9273
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9279
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9252
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9258
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9242
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9248
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 8996
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8979
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$ScreenShot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9058
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenshotBytesG2C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9128
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9129
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9130
    check-cast v1, Ljava/lang/String;

    .line 9138
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 9132
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9134
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9135
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9136
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9138
    goto :goto_0
.end method

.method public getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 9150
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9151
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9152
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9155
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 9158
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

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9192
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 9193
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 9209
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 9195
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 9196
    iget v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 9197
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9200
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 9201
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9204
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 9205
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9208
    :cond_3
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    move v1, v0

    .line 9209
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 9082
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 9105
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public hasScreenshotBytesG2C()Z
    .locals 2

    .prologue
    .line 9118
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

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

.method public hasStartScreenshotRequestC2G()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 9072
    iget v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStopScreenshotRequestC2G()Z
    .locals 2

    .prologue
    .line 9095
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 9223
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 9224
    const-string v0, "com.google.glass.companion.MutableProto$ScreenShot"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 9226
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 9169
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 9170
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 9173
    :goto_0
    return v1

    .line 9170
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 9172
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9283
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8979
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilderForType()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 9287
    invoke-static {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8979
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->toBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 9216
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 9178
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getSerializedSize()I

    .line 9179
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 9180
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9182
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 9183
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9185
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 9186
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9188
    :cond_2
    return-void
.end method
