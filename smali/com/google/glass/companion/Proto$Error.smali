.class public final Lcom/google/glass/companion/Proto$Error;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Error$Builder;,
        Lcom/google/glass/companion/Proto$Error$ErrorType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Error;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$Error;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11989
    new-instance v0, Lcom/google/glass/companion/Proto$Error$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 12159
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 12365
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Error;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    .line 12366
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;->initFields()V

    .line 12367
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 11936
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12114
    iput-byte v8, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 12136
    iput v8, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 11937
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Error;->initFields()V

    .line 11938
    const/4 v2, 0x0

    .line 11939
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 11941
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 11945
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 11946
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 11947
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 11948
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 11953
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$Error;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 11955
    const/4 v0, 0x1

    goto :goto_0

    .line 11950
    :sswitch_0
    const/4 v0, 0x1

    .line 11951
    goto :goto_0

    .line 11960
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11961
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$Error$ErrorType;->valueOf(I)Lcom/google/glass/companion/Proto$Error$ErrorType;

    move-result-object v7

    .line 11962
    .local v7, value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    if-nez v7, :cond_1

    .line 11963
    invoke-virtual {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 11964
    invoke-virtual {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 11973
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :catch_0
    move-exception v1

    .line 11974
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11979
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    .line 11980
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 11984
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 11986
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->makeExtensionsImmutable()V

    throw v8

    .line 11966
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v7       #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :cond_1
    :try_start_3
    iget v8, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    .line 11967
    iput-object v7, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 11975
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$Error$ErrorType;
    :catch_1
    move-exception v1

    .line 11976
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11980
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 11984
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 11986
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->makeExtensionsImmutable()V

    .line 11988
    return-void

    .line 11981
    :catch_2
    move-exception v8

    .line 11984
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 11981
    :catch_3
    move-exception v9

    .line 11984
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 11948
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 11912
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11918
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12114
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 12136
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 11919
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 11920
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11912
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Error;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11921
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12114
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 12136
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 11921
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$12102(Lcom/google/glass/companion/Proto$Error;Lcom/google/glass/companion/Proto$Error$ErrorType;)Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11912
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/google/glass/companion/Proto$Error;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11912
    iput p1, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    return p1
.end method

.method static synthetic access$12300(Lcom/google/glass/companion/Proto$Error;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11912
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 11925
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 12112
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 12113
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 12221
    #calls: Lcom/google/glass/companion/Proto$Error$Builder;->create()Lcom/google/glass/companion/Proto$Error$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Error$Builder;->access$11900()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 12224
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Error$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12201
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12207
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12171
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12177
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12212
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12218
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12191
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12197
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12181
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Error;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12187
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;
    .locals 1

    .prologue
    .line 11929
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->defaultInstance:Lcom/google/glass/companion/Proto$Error;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Error;

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
            "Lcom/google/glass/companion/Proto$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12001
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 12138
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    .line 12139
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12148
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 12141
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 12142
    iget v2, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 12143
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Error$ErrorType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12146
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 12147
    iput v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedSerializedSize:I

    move v1, v0

    .line 12148
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1

    .prologue
    .line 12108
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object v0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12102
    iget v1, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

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
    .line 12162
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 12163
    const-string v0, "com.google.glass.companion.MutableProto$Error"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Error;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 12165
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Error;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 12116
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    .line 12117
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 12124
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 12117
    goto :goto_0

    .line 12119
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 12120
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    move v1, v2

    .line 12121
    goto :goto_0

    .line 12123
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Error;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 12222
    invoke-static {}, Lcom/google/glass/companion/Proto$Error;->newBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->newBuilderForType()Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;
    .locals 1

    .prologue
    .line 12226
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Error;->newBuilder(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11912
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->toBuilder()Lcom/google/glass/companion/Proto$Error$Builder;

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
    .line 12155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 12129
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Error;->getSerializedSize()I

    .line 12130
    iget v0, p0, Lcom/google/glass/companion/Proto$Error;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12131
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->type_:Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Error$ErrorType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12133
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Error;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 12134
    return-void
.end method
