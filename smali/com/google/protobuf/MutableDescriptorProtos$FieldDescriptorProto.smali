.class public final Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
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
    name = "FieldDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;,
        Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE_FIELD_NUMBER:I = 0x7

.field public static final EXTENDEE_FIELD_NUMBER:I = 0x2

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x3

.field public static final ONEOF_INDEX_FIELD_NUMBER:I = 0x9

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field public static final TYPE_NAME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private defaultValue_:Ljava/lang/Object;

.field private extendee_:Ljava/lang/Object;

.field private label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

.field private typeName_:Ljava/lang/Object;

.field private type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4617
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4627
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4628
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->initFields()V

    .line 4629
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->makeImmutable()V

    .line 4630
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4632
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3241
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 3682
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3785
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3821
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3877
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3995
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4095
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 3241
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 3242
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 3682
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3785
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3821
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3877
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3995
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4095
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 3242
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4277
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4279
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3256
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3263
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3250
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3251
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3252
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 3253
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3247
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4592
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4593
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 4594
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 4595
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4596
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    .line 4597
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4598
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 4599
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4600
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 4601
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4602
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 4603
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4604
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4605
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4606
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4607
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4608
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    .line 4609
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4610
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4611
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4613
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4614
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultValue()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4206
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4207
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4208
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4209
    return-object p0
.end method

.method public clearExtendee()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4088
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4089
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4090
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4091
    return-object p0
.end method

.method public clearLabel()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3814
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3815
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3816
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3817
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3745
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3746
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3747
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3748
    return-object p0
.end method

.method public clearNumber()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3779
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3780
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    .line 3781
    return-object p0
.end method

.method public clearOneofIndex()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4267
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4268
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4269
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    .line 4270
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4319
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4320
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4321
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4323
    :cond_0
    return-object p0
.end method

.method public clearType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3870
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3871
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3872
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3873
    return-object p0
.end method

.method public clearTypeName()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3988
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3989
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3990
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3991
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4336
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

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
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3259
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4122
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4123
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4124
    check-cast v1, Ljava/lang/String;

    .line 4132
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4126
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4127
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4129
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4130
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4132
    goto :goto_0
.end method

.method public getDefaultValueAsBytes()[B
    .locals 4

    .prologue
    .line 4147
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4148
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4149
    check-cast v2, Ljava/lang/String;

    .line 4150
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4151
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4154
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

.method public getExtendee()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4016
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4017
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4018
    check-cast v1, Ljava/lang/String;

    .line 4026
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4020
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4021
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4023
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4024
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4026
    goto :goto_0
.end method

.method public getExtendeeAsBytes()[B
    .locals 4

    .prologue
    .line 4038
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4039
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4040
    check-cast v2, Ljava/lang/String;

    .line 4041
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4042
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4045
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

.method public getLabel()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 4296
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4297
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->ensureOptionsInitialized()V

    .line 4298
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4299
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3693
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3694
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3695
    check-cast v1, Ljava/lang/String;

    .line 3703
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 3697
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 3698
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 3700
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3701
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3703
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 3710
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3711
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 3712
    check-cast v2, Ljava/lang/String;

    .line 3713
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3714
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3717
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

.method public getNumber()I
    .locals 1

    .prologue
    .line 3763
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    .prologue
    .line 4238
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3274
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4542
    const/4 v0, 0x0

    .line 4543
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 4544
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4547
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 4548
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4551
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 4552
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4555
    :cond_2
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 4556
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4559
    :cond_3
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 4560
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getTypeNameAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4563
    :cond_4
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 4564
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getExtendeeAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4567
    :cond_5
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 4568
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultValueAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4571
    :cond_6
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 4572
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4575
    :cond_7
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 4576
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4579
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4580
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->cachedSize:I

    .line 4581
    return v0
.end method

.method public getType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3904
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3905
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3906
    check-cast v1, Ljava/lang/String;

    .line 3914
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 3908
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 3909
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 3911
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3912
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3914
    goto :goto_0
.end method

.method public getTypeNameAsBytes()[B
    .locals 4

    .prologue
    .line 3929
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3930
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 3931
    check-cast v2, Ljava/lang/String;

    .line 3932
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3933
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3936
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

.method public hasDefaultValue()Z
    .locals 2

    .prologue
    .line 4108
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasExtendee()Z
    .locals 2

    .prologue
    .line 4005
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 3790
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3687
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 2

    .prologue
    .line 3757
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasOneofIndex()Z
    .locals 2

    .prologue
    .line 4225
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 4284
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 3831
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method public hasTypeName()Z
    .locals 2

    .prologue
    .line 3890
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 3267
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$900()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4620
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 4621
    const-string v0, "com.google.protobuf.DescriptorProtos$FieldDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4623
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4328
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4329
    const/4 v0, 0x0

    .line 4332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3236
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 4350
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4351
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4406
    :goto_0
    return-object p0

    .line 4352
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4353
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4354
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 4355
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 4361
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4362
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4363
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 4364
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4370
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4371
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4373
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4374
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setLabel(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4376
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4377
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setType(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4379
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4380
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4381
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 4382
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 4388
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4389
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4390
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 4391
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4397
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4398
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->ensureOptionsInitialized()V

    .line 4399
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4400
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4402
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4403
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setOneofIndex(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4405
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    goto/16 :goto_0

    .line 4357
    :cond_a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4358
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4366
    .end local v0           #ba:[B
    :cond_b
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4367
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    goto/16 :goto_2

    .line 4384
    .end local v0           #ba:[B
    :cond_c
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4385
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    goto :goto_3

    .line 4393
    .end local v0           #ba:[B
    :cond_d
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4394
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "other"

    .prologue
    .line 4341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4342
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    .line 4343
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    .line 4345
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3236
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 4412
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4414
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 4417
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 4418
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 4419
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4420
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4425
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4427
    const/4 v0, 0x1

    goto :goto_0

    .line 4422
    :sswitch_0
    const/4 v0, 0x1

    .line 4423
    goto :goto_0

    .line 4432
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4433
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 4495
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 4496
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 4437
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4438
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    goto :goto_0

    .line 4442
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4443
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    goto :goto_0

    .line 4447
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 4448
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v5

    .line 4449
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    if-nez v5, :cond_1

    .line 4450
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4452
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4453
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 4458
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 4459
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v5

    .line 4460
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    if-nez v5, :cond_2

    .line 4461
    const/4 v6, 0x5

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4463
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4464
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 4469
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4470
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    goto :goto_0

    .line 4474
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4475
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4479
    :sswitch_8
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 4480
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4482
    :cond_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4483
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 4487
    :sswitch_9
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4488
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    goto/16 :goto_0

    .line 4493
    .end local v3           #tag:I
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4494
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 4420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3244
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 3236
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4169
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4170
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4171
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4172
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4173
    return-object p0
.end method

.method public setDefaultValueAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4188
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4189
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4190
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4191
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4192
    return-object p0
.end method

.method public setExtendee(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4057
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4058
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4059
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4060
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4061
    return-object p0
.end method

.method public setExtendeeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4073
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4074
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4075
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4076
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4077
    return-object p0
.end method

.method public setLabel(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3802
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3803
    if-nez p1, :cond_0

    .line 3804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3806
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3807
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3808
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3724
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3725
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3726
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3727
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3728
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3735
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3736
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3737
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3738
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3739
    return-object p0
.end method

.method public setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3769
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3770
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3771
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    .line 3772
    return-object p0
.end method

.method public setOneofIndex(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4251
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4252
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4253
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    .line 4254
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4306
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4307
    if-nez p1, :cond_0

    .line 4308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4310
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4311
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4312
    return-object p0
.end method

.method public setType(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3853
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3854
    if-nez p1, :cond_0

    .line 3855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3857
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3858
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3859
    return-object p0
.end method

.method public setTypeName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3952
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3953
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3954
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3955
    return-object p0
.end method

.method public setTypeNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3970
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3971
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3972
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3973
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3974
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
    .line 4588
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4503
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 4504
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 4505
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4507
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 4508
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getExtendeeAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4510
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4511
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4513
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4514
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v2

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4516
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 4517
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4519
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4520
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getTypeNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4522
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 4523
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultValueAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4525
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7

    .line 4526
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 4528
    :cond_7
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 4529
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->oneofIndex_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4531
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4532
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 4533
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_9

    .line 4534
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4539
    :cond_9
    return-void
.end method
