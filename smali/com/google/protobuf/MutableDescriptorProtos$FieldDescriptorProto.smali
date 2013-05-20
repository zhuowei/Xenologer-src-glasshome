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

.field private options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

.field private typeName_:Ljava/lang/Object;

.field private type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4420
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4430
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4431
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->initFields()V

    .line 4432
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->makeImmutable()V

    .line 4433
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 4435
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 3563
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3666
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3702
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3758
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3876
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3976
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 3122
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 3123
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 3563
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3666
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3702
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3758
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3876
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3976
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 3123
    return-void
.end method

.method private ensureOptionsInitialized()V
    .locals 2

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4097
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4099
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3137
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3144
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3131
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3132
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3133
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 3134
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3128
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 4397
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4398
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 4399
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 4400
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4401
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    .line 4402
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4403
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 4404
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4405
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 4406
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4407
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 4408
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4409
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4410
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4411
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4412
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4413
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4414
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4416
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4417
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultValue()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4087
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4088
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4089
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4090
    return-object p0
.end method

.method public clearExtendee()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3969
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3970
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3971
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3972
    return-object p0
.end method

.method public clearLabel()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3695
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3696
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3697
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3698
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3626
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3627
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3628
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3629
    return-object p0
.end method

.method public clearNumber()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3659
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3660
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3661
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    .line 3662
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 2

    .prologue
    .line 4138
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4139
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4140
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4141
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->clear()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4143
    :cond_0
    return-object p0
.end method

.method public clearType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3751
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3752
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3753
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3754
    return-object p0
.end method

.method public clearTypeName()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3869
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3870
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3871
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3872
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4156
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 3117
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
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->clone()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3140
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4003
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4004
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4005
    check-cast v1, Ljava/lang/String;

    .line 4013
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 4007
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 4008
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 4010
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4011
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4013
    goto :goto_0
.end method

.method public getDefaultValueAsBytes()[B
    .locals 4

    .prologue
    .line 4028
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4029
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 4030
    check-cast v2, Ljava/lang/String;

    .line 4031
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4032
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4035
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
    .line 3897
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3898
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3899
    check-cast v1, Ljava/lang/String;

    .line 3907
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 3901
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 3902
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 3904
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3905
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3907
    goto :goto_0
.end method

.method public getExtendeeAsBytes()[B
    .locals 4

    .prologue
    .line 3919
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3920
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 3921
    check-cast v2, Ljava/lang/String;

    .line 3922
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3923
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3926
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
    .line 3677
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method

.method public getMutableOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 4116
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4117
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->ensureOptionsInitialized()V

    .line 4118
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4119
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3574
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3575
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3576
    check-cast v1, Ljava/lang/String;

    .line 3584
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 3578
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 3579
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 3581
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3582
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3584
    goto :goto_0
.end method

.method public getNameAsBytes()[B
    .locals 4

    .prologue
    .line 3591
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3592
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 3593
    check-cast v2, Ljava/lang/String;

    .line 3594
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3595
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3598
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
    .line 3644
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    return v0
.end method

.method public getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 4110
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
    .line 3155
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

    .line 4351
    const/4 v0, 0x0

    .line 4352
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 4353
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getNameAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4356
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 4357
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4360
    :cond_1
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 4361
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4364
    :cond_2
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 4365
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4368
    :cond_3
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 4369
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getTypeNameAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4372
    :cond_4
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 4373
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getExtendeeAsBytes()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4376
    :cond_5
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 4377
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultValueAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 4380
    :cond_6
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 4381
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4384
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4385
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->cachedSize:I

    .line 4386
    return v0
.end method

.method public getType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .prologue
    .line 3723
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3785
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3786
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3787
    check-cast v1, Ljava/lang/String;

    .line 3795
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 3789
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 3790
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 3792
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3793
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3795
    goto :goto_0
.end method

.method public getTypeNameAsBytes()[B
    .locals 4

    .prologue
    .line 3810
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3811
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 3812
    check-cast v2, Ljava/lang/String;

    .line 3813
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3814
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3817
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
    .line 3989
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
    .line 3886
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
    .line 3671
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

    .line 3568
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
    .line 3638
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

.method public hasOptions()Z
    .locals 2

    .prologue
    .line 4104
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

.method public hasType()Z
    .locals 2

    .prologue
    .line 3712
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
    .line 3771
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
    .line 3148
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
    .line 4423
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 4424
    const-string v0, "com.google.protobuf.DescriptorProtos$FieldDescriptorProto"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    .line 4426
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4147
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4148
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4149
    const/4 v0, 0x0

    .line 4152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 3
    .parameter "other"

    .prologue
    .line 4170
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4171
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4223
    :goto_0
    return-object p0

    .line 4172
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4173
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4174
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 4175
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 4181
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4182
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4183
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 4184
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 4190
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4191
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4193
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4194
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setLabel(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4196
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4197
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setType(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .line 4199
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4200
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4201
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 4202
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 4208
    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4209
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4210
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 4211
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4217
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4218
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->ensureOptionsInitialized()V

    .line 4219
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4220
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4222
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto/16 :goto_0

    .line 4177
    :cond_9
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4178
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 4186
    .end local v0           #ba:[B
    :cond_a
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4187
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    goto/16 :goto_2

    .line 4204
    .end local v0           #ba:[B
    :cond_b
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4205
    .restart local v0       #ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    goto :goto_3

    .line 4213
    .end local v0           #ba:[B
    :cond_c
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 4214
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
    .line 4161
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4162
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    .line 4163
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    .line 4165
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 4229
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4231
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 4234
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 4235
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 4236
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4237
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4242
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4244
    const/4 v0, 0x1

    goto :goto_0

    .line 4239
    :sswitch_0
    const/4 v0, 0x1

    .line 4240
    goto :goto_0

    .line 4249
    :sswitch_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4250
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 4307
    .end local v0           #done:Z
    .end local v3           #tag:I
    .end local v4           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 4308
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v6

    .line 4254
    .restart local v0       #done:Z
    .restart local v3       #tag:I
    .restart local v4       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4255
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    goto :goto_0

    .line 4259
    :sswitch_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4260
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    goto :goto_0

    .line 4264
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 4265
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v5

    .line 4266
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    if-nez v5, :cond_1

    .line 4267
    const/4 v6, 0x4

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4269
    :cond_1
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4270
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    goto :goto_0

    .line 4275
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 4276
    .restart local v2       #rawValue:I
    invoke-static {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v5

    .line 4277
    .local v5, value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    if-nez v5, :cond_2

    .line 4278
    const/4 v6, 0x5

    invoke-virtual {v4, v6, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4280
    :cond_2
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4281
    iput-object v5, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    goto :goto_0

    .line 4286
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;
    :sswitch_6
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4287
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    goto :goto_0

    .line 4291
    :sswitch_7
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4292
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4296
    :sswitch_8
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 4297
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4299
    :cond_3
    iget v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4300
    iget-object v6, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 4305
    .end local v3           #tag:I
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4306
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 4237
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
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3125
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4050
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4051
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4052
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4053
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4054
    return-object p0
.end method

.method public setDefaultValueAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4069
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4070
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4071
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4072
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/Object;

    .line 4073
    return-object p0
.end method

.method public setExtendee(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3938
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3939
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3940
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3941
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3942
    return-object p0
.end method

.method public setExtendeeAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3954
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3955
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3956
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3957
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/Object;

    .line 3958
    return-object p0
.end method

.method public setLabel(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3683
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3684
    if-nez p1, :cond_0

    .line 3685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3687
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3688
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    .line 3689
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3605
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3606
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3607
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3608
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3609
    return-object p0
.end method

.method public setNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3616
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3617
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3618
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3619
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/Object;

    .line 3620
    return-object p0
.end method

.method public setNumber(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3650
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3651
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3652
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    .line 3653
    return-object p0
.end method

.method public setOptions(Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 4126
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 4127
    if-nez p1, :cond_0

    .line 4128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4130
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 4131
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    .line 4132
    return-object p0
.end method

.method public setType(Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3734
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3735
    if-nez p1, :cond_0

    .line 3736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3738
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3739
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    .line 3740
    return-object p0
.end method

.method public setTypeName(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3832
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3833
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3834
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3835
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3836
    return-object p0
.end method

.method public setTypeNameAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 3851
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->assertMutable()V

    .line 3852
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3853
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    .line 3854
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/Object;

    .line 3855
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
    .line 4393
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

    .line 4315
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 4316
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 4317
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4319
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 4320
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getExtendeeAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4322
    :cond_1
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4323
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->number_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4325
    :cond_2
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4326
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->label_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result v2

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4328
    :cond_3
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 4329
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->type_:Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;

    invoke-virtual {v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4331
    :cond_4
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4332
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getTypeNameAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4334
    :cond_5
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 4335
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getDefaultValueAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4337
    :cond_6
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 4338
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->options_:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;

    invoke-virtual {p1, v6, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 4340
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4341
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 4342
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldDescriptorProto;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_8

    .line 4343
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4348
    :cond_8
    return-void
.end method
