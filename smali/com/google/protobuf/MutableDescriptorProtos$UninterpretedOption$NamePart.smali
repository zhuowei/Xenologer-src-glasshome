.class public final Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamePart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final IS_EXTENSION_FIELD_NUMBER:I = 0x2

.field public static final NAME_PART_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isExtension_:Z

.field private namePart_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17659
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17669
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    .line 17670
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->initFields()V

    .line 17671
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->makeImmutable()V

    .line 17672
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->PARSER:Lcom/google/protobuf/Parser;

    .line 17674
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17386
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 17421
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17386
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 17387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 17421
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17387
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17398
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 17405
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 17395
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17392
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17650
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 17652
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17653
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    .line 17655
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17656
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clear()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public clearIsExtension()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17517
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17518
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    .line 17520
    return-object p0
.end method

.method public clearNamePart()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17484
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17485
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17486
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17487
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17534
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

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
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->clone()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17401
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public getIsExtension()Z
    .locals 1

    .prologue
    .line 17502
    iget-boolean v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    return v0
.end method

.method public getNamePart()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17432
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17433
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 17434
    check-cast v1, Ljava/lang/String;

    .line 17442
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 17436
    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, [B

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [B

    .line 17437
    .local v0, byteArray:[B
    invoke-static {v0}, Lcom/google/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v2

    .line 17439
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17440
    iput-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 17442
    goto :goto_0
.end method

.method public getNamePartAsBytes()[B
    .locals 4

    .prologue
    .line 17449
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17450
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 17451
    check-cast v2, Ljava/lang/String;

    .line 17452
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 17453
    .local v0, byteArray:[B
    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17456
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
            "Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17416
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 17628
    const/4 v0, 0x0

    .line 17629
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 17630
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getNamePartAsBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 17633
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 17634
    iget-boolean v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17637
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17638
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->cachedSize:I

    .line 17639
    return v0
.end method

.method public hasIsExtension()Z
    .locals 2

    .prologue
    .line 17496
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

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

.method public hasNamePart()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 17426
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 17409
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4100()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 17662
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 17663
    const-string v0, "com.google.protobuf.DescriptorProtos$UninterpretedOption$NamePart"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->immutableDefault:Lcom/google/protobuf/Message;

    .line 17665
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17524
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 17530
    :cond_0
    :goto_0
    return v0

    .line 17527
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17530
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17381
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 2
    .parameter "other"

    .prologue
    .line 17548
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17549
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 17563
    :goto_0
    return-object p0

    .line 17550
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17551
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17552
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 17553
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17559
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17560
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getIsExtension()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->setIsExtension(Z)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    .line 17562
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0

    .line 17555
    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 17556
    .local v0, ba:[B
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "other"

    .prologue
    .line 17539
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17540
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    if-eqz v0, :cond_0

    .line 17541
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    .line 17543
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17381
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 17569
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17571
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 17574
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 17575
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 17576
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 17577
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 17582
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 17584
    const/4 v0, 0x1

    goto :goto_0

    .line 17579
    :sswitch_0
    const/4 v0, 0x1

    .line 17580
    goto :goto_0

    .line 17589
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17590
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    goto :goto_0

    .line 17602
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 17603
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 17594
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17595
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    goto :goto_0

    .line 17600
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17601
    const/4 v4, 0x1

    goto :goto_1

    .line 17577
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .prologue
    .line 17389
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 17381
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public setIsExtension(Z)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "value"

    .prologue
    .line 17508
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17509
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17510
    iput-boolean p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    .line 17511
    return-object p0
.end method

.method public setNamePart(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "value"

    .prologue
    .line 17463
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17464
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17465
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17466
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17467
    return-object p0
.end method

.method public setNamePartAsBytes([B)Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .parameter "value"

    .prologue
    .line 17474
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->assertMutable()V

    .line 17475
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17476
    :cond_0
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    .line 17477
    iput-object p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->namePart_:Ljava/lang/Object;

    .line 17478
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
    .line 17646
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 17610
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 17611
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 17612
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getNamePartAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 17614
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 17615
    iget-boolean v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->isExtension_:Z

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 17617
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 17618
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 17619
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$UninterpretedOption$NamePart;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_2

    .line 17620
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 17625
    :cond_2
    return-void
.end method
