.class public final Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
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
    name = "DescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x4

.field public static final EXTENSION_FIELD_NUMBER:I = 0x6

.field public static final EXTENSION_RANGE_FIELD_NUMBER:I = 0x5

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NESTED_TYPE_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_DECL_FIELD_NUMBER:I = 0x8

.field public static final OPTIONS_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

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

.field private extensionRange_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
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

.field private field_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/Object;

.field private nestedType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private oneofDecl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3209
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 3219
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    .line 3220
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->initFields()V

    .line 3221
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->makeImmutable()V

    .line 3222
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 3224
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 2211
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2281
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 2378
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 2475
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 2572
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 2669
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 2766
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 1923
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 1924
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 2211
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2281
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 2378
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 2475
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 2572
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 2669
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 2766
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 1924
    return-void
.end method

.method private ensureEnumTypeInitialized()V
    .locals 1

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 2577
    :cond_0
    return-void
.end method

.method private ensureExtensionInitialized()V
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 2383
    :cond_0
    return-void
.end method

.method private ensureExtensionRangeInitialized()V
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 2674
    :cond_0
    return-void
.end method

.method private ensureFieldInitialized()V
    .locals 1

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 2286
    :cond_0
    return-void
.end method

.method private ensureNestedTypeInitialized()V
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 2480
    :cond_0
    return-void
.end method

.method private ensureOneofDeclInitialized()V
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 2771
    :cond_0
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2866
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 2868
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1936
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1943
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1932
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 1933
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1929
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;"
        }
    .end annotation

    .prologue
    .line 2640
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2641
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureEnumTypeInitialized()V

    .line 2642
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2644
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;"
        }
    .end annotation

    .prologue
    .line 2446
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2447
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionInitialized()V

    .line 2448
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2450
    return-object p0
.end method

.method public addAllExtensionRange(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;"
        }
    .end annotation

    .prologue
    .line 2737
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2738
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionRangeInitialized()V

    .line 2739
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2741
    return-object p0
.end method

.method public addAllField(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;"
        }
    .end annotation

    .prologue
    .line 2349
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2350
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureFieldInitialized()V

    .line 2351
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2353
    return-object p0
.end method

.method public addAllNestedType(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;"
        }
    .end annotation

    .prologue
    .line 2543
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2544
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureNestedTypeInitialized()V

    .line 2545
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2547
    return-object p0
.end method

.method public addAllOneofDecl(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;"
        }
    .end annotation

    .prologue
    .line 2834
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2835
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOneofDeclInitialized()V

    .line 2836
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2838
    return-object p0
.end method

.method public addEnumType(Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2627
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2628
    if-nez p1, :cond_0

    .line 2629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2631
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureEnumTypeInitialized()V

    .line 2632
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2633
    return-object p0
.end method

.method public addEnumType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 2

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2618
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureEnumTypeInitialized()V

    .line 2619
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    .line 2620
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2621
    return-object v0
.end method

.method public addExtension(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2433
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2434
    if-nez p1, :cond_0

    .line 2435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2437
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionInitialized()V

    .line 2438
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2439
    return-object p0
.end method

.method public addExtension()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 2423
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2424
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionInitialized()V

    .line 2425
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    .line 2426
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2427
    return-object v0
.end method

.method public addExtensionRange()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2

    .prologue
    .line 2714
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2715
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionRangeInitialized()V

    .line 2716
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    .line 2717
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2718
    return-object v0
.end method

.method public addExtensionRange(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2724
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2725
    if-nez p1, :cond_0

    .line 2726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2728
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionRangeInitialized()V

    .line 2729
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2730
    return-object p0
.end method

.method public addField(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2337
    if-nez p1, :cond_0

    .line 2338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2340
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureFieldInitialized()V

    .line 2341
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2342
    return-object p0
.end method

.method public addField()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 2326
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2327
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureFieldInitialized()V

    .line 2328
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    .line 2329
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2330
    return-object v0
.end method

.method public addNestedType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 2

    .prologue
    .line 2520
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2521
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureNestedTypeInitialized()V

    .line 2522
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    .line 2523
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    return-object v0
.end method

.method public addNestedType(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2530
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2531
    if-nez p1, :cond_0

    .line 2532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2534
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureNestedTypeInitialized()V

    .line 2535
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2536
    return-object p0
.end method

.method public addOneofDecl(Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2821
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2822
    if-nez p1, :cond_0

    .line 2823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2825
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOneofDeclInitialized()V

    .line 2826
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2827
    return-object p0
.end method

.method public addOneofDecl()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 2

    .prologue
    .line 2811
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2812
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOneofDeclInitialized()V

    .line 2813
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    .line 2814
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2815
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3192
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 3193
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 3194
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 3195
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 3196
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 3197
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 3198
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 3199
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 3200
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 3201
    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 3202
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3203
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 3205
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 3206
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearEnumType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    .line 2665
    return-object p0
.end method

.method public clearExtension()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2469
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    .line 2471
    return-object p0
.end method

.method public clearExtensionRange()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2760
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    .line 2762
    return-object p0
.end method

.method public clearField()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    .line 2374
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2274
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2275
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2276
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2277
    return-object p0
.end method

.method public clearNestedType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2566
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    .line 2568
    return-object p0
.end method

.method public clearOneofDecl()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2858
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    .line 2859
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 2

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2908
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2909
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 2912
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

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
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1939
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

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
    .line 2588
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2591
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtension(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

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
    .line 2394
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtensionRange(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "index"

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public getExtensionRangeCount()I
    .locals 1

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getExtensionRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2686
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2688
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getField(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFieldList()Ljava/util/List;
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
    .line 2297
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2298
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMutableEnumType(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

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
    .line 2597
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2598
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureEnumTypeInitialized()V

    .line 2599
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableExtension(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

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
    .line 2403
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2404
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionInitialized()V

    .line 2405
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableExtensionRange(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "index"

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public getMutableExtensionRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2695
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionRangeInitialized()V

    .line 2696
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableField(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getMutableFieldList()Ljava/util/List;
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
    .line 2306
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2307
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureFieldInitialized()V

    .line 2308
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableNestedType(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getMutableNestedTypeList()Ljava/util/List;
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
    .line 2500
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2501
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureNestedTypeInitialized()V

    .line 2502
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableOneofDecl(I)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public getMutableOneofDeclList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2791
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2792
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOneofDeclInitialized()V

    .line 2793
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 2885
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2886
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOptionsInitialized()V

    .line 2887
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2888
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2222
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2223
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2224
    check-cast v1, Ljava/lang/String;

    .line 2232
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2226
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 2227
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 2229
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2230
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2232
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 2239
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2240
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 2241
    check-cast v2, Ljava/lang/String;

    .line 2242
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2243
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2246
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

.method public getNestedType(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getNestedTypeCount()I
    .locals 1

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getNestedTypeList()Ljava/util/List;
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
    .line 2491
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2492
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2494
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOneofDecl(I)Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public getOneofDeclCount()I
    .locals 1

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOneofDeclList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2785
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1954
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3134
    const/4 v1, 0x0

    .line 3135
    .local v1, size:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 3136
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v2

    add-int/2addr v1, v2

    .line 3139
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 3140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3141
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3145
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 3146
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3147
    const/4 v3, 0x6

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3151
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 3152
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3153
    const/4 v3, 0x3

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3157
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 3158
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3159
    const/4 v3, 0x4

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3158
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3163
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 3164
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 3165
    const/4 v3, 0x5

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3164
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3169
    .end local v0           #i:I
    :cond_5
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 3170
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 3171
    const/16 v3, 0x8

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3170
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3175
    .end local v0           #i:I
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_7

    .line 3176
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3179
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 3180
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->cachedSize:I

    .line 3181
    return v1
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2216
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

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
    .line 2873
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 1947
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$500()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3212
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 3213
    const-string v0, "com.google.protobuf.DescriptorProtos$DescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 3215
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2916
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2917
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getField(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2941
    :cond_0
    :goto_1
    return v1

    .line 2916
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2921
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2922
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getExtension(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2921
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2926
    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2927
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2926
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2931
    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 2932
    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2931
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2936
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2937
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2941
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1918
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 2959
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2960
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3006
    :goto_0
    return-object p0

    .line 2961
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2962
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2963
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2964
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2970
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2971
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureFieldInitialized()V

    .line 2972
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2975
    :cond_2
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2976
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureNestedTypeInitialized()V

    .line 2977
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2980
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2981
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureEnumTypeInitialized()V

    .line 2982
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2985
    :cond_4
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2986
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionRangeInitialized()V

    .line 2987
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2990
    :cond_5
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2991
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionInitialized()V

    .line 2992
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2995
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2996
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOptionsInitialized()V

    .line 2997
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;)Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 2998
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 3000
    :cond_7
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3001
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOneofDeclInitialized()V

    .line 3002
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3005
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 2966
    :cond_9
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2967
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 2950
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2951
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    .line 2952
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    .line 2954
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1918
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 3014
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 3017
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3018
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 3019
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 3020
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 3025
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3027
    const/4 v0, 0x1

    goto :goto_0

    .line 3022
    :sswitch_0
    const/4 v0, 0x1

    .line 3023
    goto :goto_0

    .line 3032
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 3033
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 3072
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 3073
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 3037
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->addField()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3041
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->addNestedType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3045
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->addEnumType()Lcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3049
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->addExtensionRange()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3053
    :sswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->addExtension()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3057
    :sswitch_7
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 3058
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 3060
    :cond_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 3061
    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3065
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->addOneofDecl()Lcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 3070
    .end local v2           #tag:I
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3071
    const/4 v4, 0x1

    goto :goto_1

    .line 3020
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
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 1926
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setEnumType(ILcom/google/protobuf/MutableDescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2651
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2652
    if-nez p2, :cond_0

    .line 2653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2655
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureEnumTypeInitialized()V

    .line 2656
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2657
    return-object p0
.end method

.method public setExtension(ILcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2457
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2458
    if-nez p2, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2461
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionInitialized()V

    .line 2462
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2463
    return-object p0
.end method

.method public setExtensionRange(ILcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2748
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2749
    if-nez p2, :cond_0

    .line 2750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2752
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureExtensionRangeInitialized()V

    .line 2753
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2754
    return-object p0
.end method

.method public setField(ILcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2360
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2361
    if-nez p2, :cond_0

    .line 2362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2364
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureFieldInitialized()V

    .line 2365
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2366
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2254
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2255
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2256
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2257
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2264
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2265
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2266
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2267
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->name_:Ljava/lang/Object;

    .line 2268
    return-object p0
.end method

.method public setNestedType(ILcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2555
    if-nez p2, :cond_0

    .line 2556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2558
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureNestedTypeInitialized()V

    .line 2559
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2560
    return-object p0
.end method

.method public setOneofDecl(ILcom/google/protobuf/MutableDescriptorProtos$OneofDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2845
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2846
    if-nez p2, :cond_0

    .line 2847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2849
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->ensureOneofDeclInitialized()V

    .line 2850
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2851
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 2895
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->assertMutable()V

    .line 2896
    if-nez p1, :cond_0

    .line 2897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2899
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    .line 2900
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    .line 2901
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
    .line 3188
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3080
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 3081
    .local v1, bytesWrittenBefore:I
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_0

    .line 3082
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 3084
    :cond_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 3085
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3086
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->field_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3085
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3090
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 3091
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3092
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3091
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3096
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 3097
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3098
    const/4 v4, 0x4

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3097
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3102
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 3103
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3104
    const/4 v4, 0x5

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3103
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3108
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 3109
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3110
    const/4 v4, 0x6

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3109
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3114
    .end local v2           #i:I
    :cond_5
    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_6

    .line 3115
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$MessageOptions;

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3117
    :cond_6
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 3118
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 3119
    const/16 v4, 0x8

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->oneofDecl_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 3118
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3123
    .end local v2           #i:I
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3124
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 3125
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_8

    .line 3126
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3131
    :cond_8
    return-void
.end method
