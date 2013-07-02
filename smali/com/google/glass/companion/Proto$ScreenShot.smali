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

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12527
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    .line 12703
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 13086
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    .line 13087
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->initFields()V

    .line 13088
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 12470
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12648
    iput-byte v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 12672
    iput v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 12471
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->initFields()V

    .line 12472
    const/4 v3, 0x0

    .line 12473
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 12475
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 12479
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 12480
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 12481
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 12482
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 12487
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$ScreenShot;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 12489
    const/4 v1, 0x1

    goto :goto_0

    .line 12484
    :sswitch_0
    const/4 v1, 0x1

    .line 12485
    goto :goto_0

    .line 12494
    :sswitch_1
    iget v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 12495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 12511
    .end local v4           #tag:I
    :catch_0
    move-exception v2

    .line 12512
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12517
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v7

    .line 12518
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 12522
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 12524
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->makeExtensionsImmutable()V

    throw v7

    .line 12499
    .restart local v4       #tag:I
    :sswitch_2
    :try_start_3
    iget v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 12500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 12513
    .end local v4           #tag:I
    :catch_1
    move-exception v2

    .line 12514
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12504
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12505
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    .line 12506
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 12518
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v4           #tag:I
    :cond_1
    :try_start_6
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 12522
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 12524
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->makeExtensionsImmutable()V

    .line 12526
    return-void

    .line 12519
    :catch_2
    move-exception v7

    .line 12522
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 12519
    :catch_3
    move-exception v8

    .line 12522
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v7

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v7

    .line 12482
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
    .line 12446
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12452
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12648
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 12672
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 12453
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 12454
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12446
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12455
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12648
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 12672
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 12455
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$12702(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12446
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/google/glass/companion/Proto$ScreenShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12446
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return p1
.end method

.method static synthetic access$12900(Lcom/google/glass/companion/Proto$ScreenShot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12446
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/glass/companion/Proto$ScreenShot;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12446
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/glass/companion/Proto$ScreenShot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12446
    iput p1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    return p1
.end method

.method static synthetic access$13100(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12446
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    .line 12459
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12644
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    .line 12645
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    .line 12646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12647
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12765
    #calls: Lcom/google/glass/companion/Proto$ScreenShot$Builder;->create()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot$Builder;->access$12500()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 12768
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
    .line 12745
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
    .line 12751
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
    .line 12715
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
    .line 12721
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
    .line 12756
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
    .line 12762
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
    .line 12735
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
    .line 12741
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
    .line 12725
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
    .line 12731
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
    .line 12463
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->defaultInstance:Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12446
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
    .line 12539
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScreenshotBytesG2C()Ljava/lang/String;
    .locals 4

    .prologue
    .line 12609
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12610
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12611
    check-cast v1, Ljava/lang/String;

    .line 12619
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 12613
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12615
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12616
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12617
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 12619
    goto :goto_0
.end method

.method public getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 12631
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12632
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12633
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12636
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C_:Ljava/lang/Object;

    .line 12639
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

    .line 12674
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    .line 12675
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12692
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 12677
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 12678
    iget v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 12679
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12682
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 12683
    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12686
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 12687
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12690
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 12691
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedSerializedSize:I

    move v1, v0

    .line 12692
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStartScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 12563
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    return v0
.end method

.method public getStopScreenshotRequestC2G()Z
    .locals 1

    .prologue
    .line 12586
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    return v0
.end method

.method public hasScreenshotBytesG2C()Z
    .locals 2

    .prologue
    .line 12599
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

    .line 12553
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
    .line 12576
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
    .line 12706
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 12707
    const-string v0, "com.google.glass.companion.MutableProto$ScreenShot"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ScreenShot;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 12709
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 12650
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    .line 12651
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 12654
    :goto_0
    return v1

    .line 12651
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 12653
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12766
    invoke-static {}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12446
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilderForType()Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$ScreenShot$Builder;
    .locals 1

    .prologue
    .line 12770
    invoke-static {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->newBuilder(Lcom/google/glass/companion/Proto$ScreenShot;)Lcom/google/glass/companion/Proto$ScreenShot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12446
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
    .line 12699
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

    .line 12659
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getSerializedSize()I

    .line 12660
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12661
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12663
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12664
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12666
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 12667
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getScreenshotBytesG2CBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12669
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 12670
    return-void
.end method
