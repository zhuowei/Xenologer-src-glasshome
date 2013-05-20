.class public final Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final DEPENDENCY_FIELD_NUMBER:I = 0x3

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_DEPENDENCY_FIELD_NUMBER:I = 0xa

.field public static final SERVICE_FIELD_NUMBER:I = 0x6

.field public static final SOURCE_CODE_INFO_FIELD_NUMBER:I = 0x9

.field public static final WEAK_DEPENDENCY_FIELD_NUMBER:I = 0xb

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dependency_:Lcom/google/protobuf/LazyStringList;

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private messageType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

.field private package_:Ljava/lang/Object;

.field private publicDependency_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private service_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

.field private weakDependency_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1891
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 1901
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    .line 1902
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->initFields()V

    .line 1903
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->makeImmutable()V

    .line 1904
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1906
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 340
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 528
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 702
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 810
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 926
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1063
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1160
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1257
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 303
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 340
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 528
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 702
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 810
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 926
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1063
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1160
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1257
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 304
    return-void
.end method

.method private ensureDependencyInitialized()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 533
    :cond_0
    return-void
.end method

.method private ensureEnumTypeInitialized()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1068
    :cond_0
    return-void
.end method

.method private ensureExtensionInitialized()V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1262
    :cond_0
    return-void
.end method

.method private ensureMessageTypeInitialized()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 931
    :cond_0
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1357
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 1359
    :cond_0
    return-void
.end method

.method private ensurePublicDependencyInitialized()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 707
    :cond_0
    return-void
.end method

.method private ensureServiceInitialized()V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1165
    :cond_0
    return-void
.end method

.method private ensureSourceCodeInfoInitialized()V
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1410
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 1412
    :cond_0
    return-void
.end method

.method private ensureWeakDependencyInitialized()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 815
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 313
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 314
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllDependency(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 653
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 654
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 656
    return-object p0
.end method

.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1132
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureEnumTypeInitialized()V

    .line 1133
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1135
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 1325
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1326
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureExtensionInitialized()V

    .line 1327
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1329
    return-object p0
.end method

.method public addAllMessageType(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 1026
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1027
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureMessageTypeInitialized()V

    .line 1028
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1030
    return-object p0
.end method

.method public addAllPublicDependency(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 790
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 791
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensurePublicDependencyInitialized()V

    .line 792
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 794
    return-object p0
.end method

.method public addAllService(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 1228
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1229
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureServiceInitialized()V

    .line 1230
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1232
    return-object p0
.end method

.method public addAllWeakDependency(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 906
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureWeakDependencyInitialized()V

    .line 907
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 909
    return-object p0
.end method

.method public addDependency(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 624
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 626
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 627
    return-object p0
.end method

.method public addDependencyAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 639
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 641
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add([B)V

    .line 642
    return-object p0
.end method

.method public addEnumType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1109
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureEnumTypeInitialized()V

    .line 1110
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    .line 1111
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    return-object v0
.end method

.method public addEnumType(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1119
    if-nez p1, :cond_0

    .line 1120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1122
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureEnumTypeInitialized()V

    .line 1123
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    return-object p0
.end method

.method public addExtension()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1303
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureExtensionInitialized()V

    .line 1304
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    .line 1305
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1306
    return-object v0
.end method

.method public addExtension(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1313
    if-nez p1, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1316
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureExtensionInitialized()V

    .line 1317
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    return-object p0
.end method

.method public addMessageType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 2

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 996
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureMessageTypeInitialized()V

    .line 997
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    .line 998
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    return-object v0
.end method

.method public addMessageType(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1010
    if-nez p1, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureMessageTypeInitialized()V

    .line 1014
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    return-object p0
.end method

.method public addPublicDependency(I)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2
    .parameter "value"

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 777
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensurePublicDependencyInitialized()V

    .line 778
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    return-object p0
.end method

.method public addService(Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1216
    if-nez p1, :cond_0

    .line 1217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1219
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureServiceInitialized()V

    .line 1220
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    return-object p0
.end method

.method public addService()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1206
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureServiceInitialized()V

    .line 1207
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    .line 1208
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    return-object v0
.end method

.method public addWeakDependency(I)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2
    .parameter "value"

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 891
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureWeakDependencyInitialized()V

    .line 892
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1867
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1868
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 1869
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1870
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1871
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1872
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1873
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 1874
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1875
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1876
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1877
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1878
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1879
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1880
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 1883
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1884
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 1887
    :cond_1
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1888
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearDependency()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 698
    return-object p0
.end method

.method public clearEnumType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1156
    return-object p0
.end method

.method public clearExtension()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1350
    return-object p0
.end method

.method public clearMessageType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 1057
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1059
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 428
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 429
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 430
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1399
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1400
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 1403
    :cond_0
    return-object p0
.end method

.method public clearPackage()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 522
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 523
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 524
    return-object p0
.end method

.method public clearPublicDependency()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 806
    return-object p0
.end method

.method public clearService()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1253
    return-object p0
.end method

.method public clearSourceCodeInfo()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2

    .prologue
    .line 1486
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1487
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1488
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 1491
    :cond_0
    return-object p0
.end method

.method public clearWeakDependency()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 922
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

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
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDependencyAsBytes(I)[B
    .locals 1
    .parameter "index"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDependencyCount()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 555
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDependencyListAsBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 566
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 568
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnumType(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1080
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1082
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtension(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1276
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageType(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getMessageTypeCount()I
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 951
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 953
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMutableDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 580
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 581
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getMutableDependencyListAsBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 592
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 593
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableEnumType(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public getMutableEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1089
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureEnumTypeInitialized()V

    .line 1090
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableExtension(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getMutableExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1283
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureExtensionInitialized()V

    .line 1284
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableMessageType(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getMutableMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 964
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureMessageTypeInitialized()V

    .line 965
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1377
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureOptionsInitialized()V

    .line 1378
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1379
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    return-object v0
.end method

.method public getMutablePublicDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 730
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensurePublicDependencyInitialized()V

    .line 731
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableService(I)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public getMutableServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1186
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureServiceInitialized()V

    .line 1187
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableSourceCodeInfo()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1451
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureSourceCodeInfoInitialized()V

    .line 1452
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1453
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public getMutableWeakDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 840
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureWeakDependencyInitialized()V

    .line 841
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 360
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 361
    check-cast v1, Ljava/lang/String;

    .line 369
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 363
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 364
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 369
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 380
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 381
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 382
    check-cast v2, Ljava/lang/String;

    .line 383
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 384
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 387
    .end local v0           #byteArray:[B
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    check-cast v1, [B

    move-object v0, v1

    goto :goto_0
.end method

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 454
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 455
    check-cast v1, Ljava/lang/String;

    .line 463
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 457
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 458
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 463
    goto :goto_0
.end method

.method public getPackageAsBytes()[B
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 475
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 476
    check-cast v2, Ljava/lang/String;

    .line 477
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 478
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 481
    .end local v0           #byteArray:[B
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    check-cast v1, [B

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
            "Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPublicDependency(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPublicDependencyCount()I
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPublicDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 717
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1786
    const/4 v2, 0x0

    .line 1787
    .local v2, size:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 1791
    :cond_0
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_1

    .line 1792
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getPackageAsBytes()[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v3

    add-int/2addr v2, v3

    .line 1795
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1796
    const/4 v0, 0x0

    .line 1797
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1798
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v3

    add-int/2addr v0, v3

    .line 1797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1801
    :cond_2
    add-int/2addr v2, v0

    .line 1802
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 1804
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1805
    const/4 v0, 0x0

    .line 1806
    .restart local v0       #dataSize:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1807
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1806
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1810
    :cond_4
    add-int/2addr v2, v0

    .line 1811
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 1813
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1814
    const/4 v0, 0x0

    .line 1815
    .restart local v0       #dataSize:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1816
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 1815
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1819
    :cond_6
    add-int/2addr v2, v0

    .line 1820
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 1822
    .end local v0           #dataSize:I
    .end local v1           #i:I
    :cond_7
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 1823
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 1824
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1823
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1828
    .end local v1           #i:I
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 1829
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 1830
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1829
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1834
    .end local v1           #i:I
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 1835
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1836
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1835
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1840
    .end local v1           #i:I
    :cond_a
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 1841
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 1842
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1841
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1846
    .end local v1           #i:I
    :cond_b
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_c

    .line 1847
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1850
    :cond_c
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_d

    .line 1851
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1854
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    .line 1855
    iput v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->cachedSize:I

    .line 1856
    return v2
.end method

.method public getService(I)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getSourceCodeInfo()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public getWeakDependency(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWeakDependencyCount()I
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 853
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getWeakDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 826
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 828
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 349
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 1364
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method public hasPackage()Z
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method public hasSourceCodeInfo()Z
    .locals 2

    .prologue
    .line 1424
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 328
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1894
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 1895
    const-string v0, "com.google.protobuf.DescriptorProtos$FileDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 1897
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1495
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1496
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1520
    :cond_0
    :goto_1
    return v1

    .line 1495
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1501
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1500
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1505
    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1506
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1505
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1510
    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1511
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1515
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1516
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1520
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 1538
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1539
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1601
    :goto_0
    return-object p0

    .line 1540
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1541
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1542
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1543
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1549
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1550
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1551
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1552
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1558
    :cond_2
    :goto_2
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1559
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 1560
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->mergeFrom(Lcom/google/protobuf/LazyStringList;)V

    .line 1562
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1563
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureMessageTypeInitialized()V

    .line 1564
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1567
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1568
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureEnumTypeInitialized()V

    .line 1569
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1572
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1573
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureServiceInitialized()V

    .line 1574
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1577
    :cond_6
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1578
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureExtensionInitialized()V

    .line 1579
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1582
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1583
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureOptionsInitialized()V

    .line 1584
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 1585
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1587
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1588
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureSourceCodeInfoInitialized()V

    .line 1589
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 1590
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1592
    :cond_9
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1593
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensurePublicDependencyInitialized()V

    .line 1594
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1596
    :cond_a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1597
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureWeakDependencyInitialized()V

    .line 1598
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    iget-object v2, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1600
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto/16 :goto_0

    .line 1545
    :cond_c
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 1546
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1554
    .end local v0           #ba:[B
    :cond_d
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 1555
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1530
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    if-eqz v0, :cond_0

    .line 1531
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    .line 1533
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1609
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 1612
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 1613
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 1614
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1615
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 1620
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1622
    const/4 v0, 0x1

    goto :goto_0

    .line 1617
    :sswitch_0
    const/4 v0, 0x1

    .line 1618
    goto :goto_0

    .line 1627
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1628
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1715
    .end local v0           #done:Z
    .end local v4           #tag:I
    .end local v5           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 1716
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 1632
    .restart local v0       #done:Z
    .restart local v4       #tag:I
    .restart local v5       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1633
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    goto :goto_0

    .line 1637
    :sswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 1638
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add([B)V

    goto :goto_0

    .line 1642
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->addMessageType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 1646
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->addEnumType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 1650
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->addService()Lcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 1654
    :sswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->addExtension()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 1658
    :sswitch_8
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1659
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 1661
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1662
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 1666
    :sswitch_9
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 1667
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 1669
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1670
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 1674
    :sswitch_a
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-nez v6, :cond_3

    .line 1675
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1677
    :cond_3
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1681
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 1682
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 1683
    .local v3, limit:I
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-nez v6, :cond_4

    .line 1684
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1686
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_5

    .line 1687
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1689
    :cond_5
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 1693
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_c
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-nez v6, :cond_6

    .line 1694
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1696
    :cond_6
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1700
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 1701
    .restart local v2       #length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 1702
    .restart local v3       #limit:I
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-nez v6, :cond_7

    .line 1703
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1705
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_8

    .line 1706
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1708
    :cond_8
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 1713
    .end local v2           #length:I
    .end local v3           #limit:I
    .end local v4           #tag:I
    :cond_9
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1615
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x58 -> :sswitch_c
        0x5a -> :sswitch_d
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setDependency(ILjava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 668
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 670
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 671
    return-object p0
.end method

.method public setDependencyAsBytes(I[B)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 683
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 684
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureDependencyInitialized()V

    .line 685
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(I[B)V

    .line 686
    return-object p0
.end method

.method public setEnumType(ILcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1143
    if-nez p2, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureEnumTypeInitialized()V

    .line 1147
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1148
    return-object p0
.end method

.method public setExtension(ILcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1337
    if-nez p2, :cond_0

    .line 1338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1340
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureExtensionInitialized()V

    .line 1341
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1342
    return-object p0
.end method

.method public setMessageType(ILcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1042
    if-nez p2, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureMessageTypeInitialized()V

    .line 1046
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1047
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 399
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 400
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 401
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 402
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 414
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 415
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 416
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 417
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1387
    if-nez p1, :cond_0

    .line 1388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1390
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1391
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    .line 1392
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 493
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 495
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 496
    return-object p0
.end method

.method public setPackageAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 508
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 510
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 511
    return-object p0
.end method

.method public setPublicDependency(II)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 764
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensurePublicDependencyInitialized()V

    .line 765
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 766
    return-object p0
.end method

.method public setService(ILcom/google/protobuf/MutableDescriptorProtos$ServiceDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1240
    if-nez p2, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1243
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureServiceInitialized()V

    .line 1244
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1245
    return-object p0
.end method

.method public setSourceCodeInfo(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 1468
    if-nez p1, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1471
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1472
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 1473
    return-object p0
.end method

.method public setWeakDependency(II)Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->assertMutable()V

    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->ensureWeakDependencyInitialized()V

    .line 878
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 879
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1863
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1723
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 1724
    .local v1, bytesWrittenBefore:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 1725
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 1727
    :cond_0
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_1

    .line 1728
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getPackageAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 1730
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    if-eqz v3, :cond_2

    .line 1731
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1732
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 1731
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1735
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1736
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1737
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v6, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 1736
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1741
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 1742
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1743
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 1742
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1747
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 1748
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1749
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 1748
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1753
    .end local v2           #i:I
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 1754
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1755
    const/4 v4, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 1754
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1759
    .end local v2           #i:I
    :cond_6
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_7

    .line 1760
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;

    invoke-virtual {p1, v7, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 1762
    :cond_7
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_8

    .line 1763
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 1765
    :cond_8
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 1766
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1767
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1766
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1770
    .end local v2           #i:I
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 1771
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 1772
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1771
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1775
    .end local v2           #i:I
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1776
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 1777
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FileDescriptorProto;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_b

    .line 1778
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1783
    :cond_b
    return-void
.end method
