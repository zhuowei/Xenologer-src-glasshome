.class public final Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
.super Lcom/google/protobuf/GeneratedMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpgradedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22241
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 22393
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 22756
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    .line 22757
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->initFields()V

    .line 22758
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 22187
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 22345
    iput-byte v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedIsInitialized:B

    .line 22366
    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedSerializedSize:I

    .line 22188
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->initFields()V

    .line 22189
    const/4 v2, 0x0

    .line 22190
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 22193
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 22194
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 22195
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 22196
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 22201
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 22203
    const/4 v0, 0x1

    goto :goto_0

    .line 22198
    :sswitch_0
    const/4 v0, 0x1

    .line 22199
    goto :goto_0

    .line 22208
    :sswitch_1
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 22209
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 22219
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 22220
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22225
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22226
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->makeExtensionsImmutable()V

    throw v5

    .line 22213
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    .line 22214
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 22221
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 22222
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 22225
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22226
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->makeExtensionsImmutable()V

    .line 22228
    return-void

    .line 22196
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
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
    .line 22158
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 22164
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 22345
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedIsInitialized:B

    .line 22366
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedSerializedSize:I

    .line 22165
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22166
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22158
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22167
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 22345
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedIsInitialized:B

    .line 22366
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedSerializedSize:I

    .line 22167
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$16900(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22158
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22158
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22158
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17002(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22158
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17102(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22158
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 22171
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 22231
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 22342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 22343
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 22344
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22455
    #calls: Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->create()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->access$16600()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 22458
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22435
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22441
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22405
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22411
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22446
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22452
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22425
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22431
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22415
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 22421
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;
    .locals 1

    .prologue
    .line 22175
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 22158
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 22158
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22269
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 22270
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 22271
    check-cast v1, Ljava/lang/String;

    .line 22279
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 22273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22275
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22276
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22277
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 22279
    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 22287
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 22288
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 22289
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22292
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->name_:Ljava/lang/Object;

    .line 22295
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22253
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22368
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedSerializedSize:I

    .line 22369
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 22382
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 22371
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 22372
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 22373
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22376
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 22377
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22380
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 22381
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedSerializedSize:I

    move v1, v0

    .line 22382
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 22182
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22311
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 22312
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 22313
    check-cast v1, Ljava/lang/String;

    .line 22321
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 22315
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22317
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22318
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22319
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 22321
    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 22329
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 22330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 22331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22334
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->value_:Ljava/lang/Object;

    .line 22337
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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22263
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 22305
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 22236
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 22396
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 22397
    const-string v0, "com.google.protobuf.MutableDescriptorProtos$FieldOptions$UpgradedOption"

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 22399
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 22347
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedIsInitialized:B

    .line 22348
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 22351
    :goto_0
    return v1

    .line 22348
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 22350
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22456
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 22465
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 22466
    .local v0, builder:Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22158
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22158
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22158
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;
    .locals 1

    .prologue
    .line 22460
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->newBuilder(Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;)Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 22158
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 22158
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption$Builder;

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
    .line 22389
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22356
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getSerializedSize()I

    .line 22357
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 22358
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22360
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 22361
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22363
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions$UpgradedOption;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 22364
    return-void
.end method
