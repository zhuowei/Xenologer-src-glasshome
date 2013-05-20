.class public final Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    }
.end annotation


# static fields
.field public static final ID_TYPE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private idType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1117
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$1;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$1;-><init>()V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    .line 1226
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1562
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;-><init>(Z)V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    .line 1563
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->initFields()V

    .line 1564
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    .line 1037
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1180
    iput-byte v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedIsInitialized:B

    .line 1198
    iput v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedSerializedSize:I

    .line 1038
    invoke-direct {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->initFields()V

    .line 1039
    const/4 v3, 0x0

    .line 1040
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 1043
    .local v7, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 1044
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 1045
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 1046
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 1051
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1053
    const/4 v0, 0x1

    goto :goto_0

    .line 1048
    :sswitch_0
    const/4 v0, 0x1

    .line 1049
    goto :goto_0

    .line 1058
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 1059
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;->valueOf(I)Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;

    move-result-object v8

    .line 1060
    .local v8, value:Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    if-nez v8, :cond_2

    .line 1061
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1092
    .end local v5           #rawValue:I
    .end local v6           #tag:I
    .end local v8           #value:Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    :catch_0
    move-exception v1

    .line 1093
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    and-int/lit8 v10, v3, 0x1

    if-ne v10, v11, :cond_1

    .line 1099
    iget-object v10, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    .line 1101
    :cond_1
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1102
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->makeExtensionsImmutable()V

    throw v9

    .line 1063
    .restart local v5       #rawValue:I
    .restart local v6       #tag:I
    .restart local v8       #value:Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    :cond_2
    and-int/lit8 v9, v3, 0x1

    if-eq v9, v11, :cond_3

    .line 1064
    :try_start_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    .line 1065
    or-int/lit8 v3, v3, 0x1

    .line 1067
    :cond_3
    iget-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1094
    .end local v5           #rawValue:I
    .end local v6           #tag:I
    .end local v8           #value:Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    :catch_1
    move-exception v1

    .line 1095
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1072
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 1073
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 1074
    .local v4, oldLimit:I
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_6

    .line 1075
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 1076
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;->valueOf(I)Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;

    move-result-object v8

    .line 1077
    .restart local v8       #value:Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    if-nez v8, :cond_4

    .line 1078
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_1

    .line 1080
    :cond_4
    and-int/lit8 v9, v3, 0x1

    if-eq v9, v11, :cond_5

    .line 1081
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    .line 1082
    or-int/lit8 v3, v3, 0x1

    .line 1084
    :cond_5
    iget-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1087
    .end local v5           #rawValue:I
    .end local v8           #value:Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    :cond_6
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1098
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    .end local v6           #tag:I
    :cond_7
    and-int/lit8 v9, v3, 0x1

    if-ne v9, v11, :cond_8

    .line 1099
    iget-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    .line 1101
    :cond_8
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1102
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->makeExtensionsImmutable()V

    .line 1104
    return-void

    .line 1046
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
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
    .line 1008
    invoke-direct {p0, p1, p2}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$Builder;,"Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 1014
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1180
    iput-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedIsInitialized:B

    .line 1198
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedSerializedSize:I

    .line 1015
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1016
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1017
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1180
    iput-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedIsInitialized:B

    .line 1198
    iput v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedSerializedSize:I

    .line 1017
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 1008
    sget-boolean v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1

    .prologue
    .line 1021
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1107
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    .line 1179
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1288
    #calls: Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->create()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->access$300()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1291
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;->mergeFrom(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1238
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1244
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1285
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1248
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1254
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;
    .locals 1

    .prologue
    .line 1025
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->defaultInstance:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    return-object v0
.end method

.method public getIdType(I)Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;
    .locals 1
    .parameter "index"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;

    return-object v0
.end method

.method public getIdTypeCount()I
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIdTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1200
    iget v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedSerializedSize:I

    .line 1201
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 1215
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 1203
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1207
    iget-object v4, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;

    invoke-virtual {v4}, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 1206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1210
    :cond_1
    add-int/2addr v2, v0

    .line 1211
    iget-object v4, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1213
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 1214
    iput v2, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedSerializedSize:I

    move v3, v2

    .line 1215
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1112
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;

    const-class v2, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1229
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1230
    const-string v0, "com.google.protos.logs_proto.MutableLogsAnnotations$FieldDetails"

    invoke-static {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1232
    :cond_0
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1182
    iget-byte v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedIsInitialized:B

    .line 1183
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1186
    :goto_0
    return v1

    .line 1183
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1185
    :cond_1
    iput-byte v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1289
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->newBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1298
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protos/logs_proto/LogsAnnotations$1;)V

    .line 1299
    .local v0, builder:Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;
    .locals 1

    .prologue
    .line 1293
    invoke-static {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->newBuilder(Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;)Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails$Builder;

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
    .line 1222
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

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
    .line 1191
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getSerializedSize()I

    .line 1192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1193
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->idType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;

    invoke-virtual {v1}, Lcom/google/protos/logs_proto/LogsAnnotations$IdentifierType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/logs_proto/LogsAnnotations$FieldDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1196
    return-void
.end method
