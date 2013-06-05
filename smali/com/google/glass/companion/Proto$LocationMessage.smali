.class public final Lcom/google/glass/companion/Proto$LocationMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationMessage$Builder;,
        Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    }
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x2

.field public static final RECEIVER_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/companion/Proto$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private provider_:Ljava/lang/Object;

.field private receiver_:Ljava/lang/Object;

.field private status_:I

.field private type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4734
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5068
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5627
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 5628
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->initFields()V

    .line 5629
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 4653
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4991
    iput-byte v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 5029
    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4654
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->initFields()V

    .line 4655
    const/4 v2, 0x0

    .line 4656
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v7

    .line 4658
    .local v7, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v6

    .line 4662
    .local v6, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 4663
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 4664
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 4665
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 4670
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/companion/Proto$LocationMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4672
    const/4 v0, 0x1

    goto :goto_0

    .line 4667
    :sswitch_0
    const/4 v0, 0x1

    .line 4668
    goto :goto_0

    .line 4677
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4678
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->valueOf(I)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    move-result-object v8

    .line 4679
    .local v8, value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    if-nez v8, :cond_1

    .line 4680
    invoke-virtual {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 4681
    invoke-virtual {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4718
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :catch_0
    move-exception v1

    .line 4719
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4724
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    .line 4725
    :try_start_2
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4729
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4731
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->makeExtensionsImmutable()V

    throw v9

    .line 4683
    .restart local v3       #rawValue:I
    .restart local v5       #tag:I
    .restart local v8       #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :cond_1
    :try_start_3
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4684
    iput-object v8, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4720
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :catch_1
    move-exception v1

    .line 4721
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4689
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_5
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4690
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    goto :goto_0

    .line 4694
    :sswitch_3
    const/4 v4, 0x0

    .line 4695
    .local v4, subBuilder:Lcom/google/glass/companion/Proto$Location$Builder;
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 4696
    iget-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v9}, Lcom/google/glass/companion/Proto$Location;->toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v4

    .line 4698
    :cond_2
    sget-object v9, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/glass/companion/Proto$Location;

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 4699
    if-eqz v4, :cond_3

    .line 4700
    iget-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v4, v9}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 4701
    invoke-virtual {v4}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 4703
    :cond_3
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto/16 :goto_0

    .line 4707
    .end local v4           #subBuilder:Lcom/google/glass/companion/Proto$Location$Builder;
    :sswitch_4
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4708
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    goto/16 :goto_0

    .line 4712
    :sswitch_5
    iget v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 4713
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 4725
    .end local v5           #tag:I
    :cond_4
    :try_start_6
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4729
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4731
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->makeExtensionsImmutable()V

    .line 4733
    return-void

    .line 4726
    :catch_2
    move-exception v9

    .line 4729
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 4726
    :catch_3
    move-exception v10

    .line 4729
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 4665
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 4629
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4635
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4991
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 5029
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4636
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4637
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4638
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4991
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 5029
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 4638
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3702(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/glass/companion/Proto$LocationMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return p1
.end method

.method static synthetic access$4100(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/glass/companion/Proto$LocationMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4629
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$4300(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4629
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 4642
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4985
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 4986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4987
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 4988
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 4989
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4990
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5130
    #calls: Lcom/google/glass/companion/Proto$LocationMessage$Builder;->create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->access$3500()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5133
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5110
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5116
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5080
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5086
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5121
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5127
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5100
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5106
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5090
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5096
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 4646
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 4901
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4746
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4851
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4852
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4853
    check-cast v1, Ljava/lang/String;

    .line 4861
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4855
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4857
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4858
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4859
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4861
    goto :goto_0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4869
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4870
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4871
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4874
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 4877
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

.method public getReceiver()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4949
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4950
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4951
    check-cast v1, Ljava/lang/String;

    .line 4959
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4953
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4955
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4956
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4957
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4959
    goto :goto_0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4972
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4977
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 4980
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
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5031
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 5032
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5057
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5034
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5035
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5036
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5039
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5040
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5043
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 5044
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5047
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 5048
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5051
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 5052
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5055
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 5056
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 5057
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 4924
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 1

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 4891
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasProvider()Z
    .locals 2

    .prologue
    .line 4845
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasReceiver()Z
    .locals 2

    .prologue
    .line 4938
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 4914
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4830
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5071
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 5072
    const-string v0, "com.google.glass.companion.MutableProto$LocationMessage"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5074
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4993
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 4994
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 5005
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 4994
    goto :goto_0

    .line 4996
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4997
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 4998
    goto :goto_0

    .line 5000
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5001
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 5002
    goto :goto_0

    .line 5004
    :cond_3
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5131
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilderForType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 5135
    invoke-static {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

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
    .line 5064
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5010
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getSerializedSize()I

    .line 5011
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5012
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5014
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5015
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5017
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5018
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5020
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 5021
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5023
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 5024
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5026
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 5027
    return-void
.end method
