.class public final Lcom/google/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I

.field private totalBytesWritten:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .parameter "output"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 58
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    .line 60
    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 61
    array-length v0, p2

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    .line 62
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 52
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    .line 53
    iput p2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 54
    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    .line 55
    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 516
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1
    .parameter "value"

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public static computeByteArraySize(I[B)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 575
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeByteArraySizeNoTag([B)I
    .locals 2
    .parameter "value"

    .prologue
    .line 812
    array-length v0, p0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSize(ILcom/google/protobuf/ByteString;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 566
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 457
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1
    .parameter "value"

    .prologue
    .line 681
    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 601
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 507
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 734
    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 498
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 726
    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 465
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 689
    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/google/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 534
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 764
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 713
    if-ltz p0, :cond_0

    .line 714
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    .line 717
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 481
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 705
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeLazyFieldMessageSetExtensionSize(ILcom/google/protobuf/LazyField;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 669
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/google/protobuf/LazyField;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeLazyFieldSize(ILcom/google/protobuf/LazyField;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 584
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyField;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeLazyFieldSizeNoTag(Lcom/google/protobuf/LazyField;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/google/protobuf/LazyField;->getSerializedSize()I

    move-result v0

    .line 795
    .local v0, size:I
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeMessageSetExtensionSize(ILcom/google/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSize(ILcom/google/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 557
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 785
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    .line 786
    .local v0, size:I
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static computePreferredBufferSize(I)I
    .locals 1
    .parameter "dataLength"

    .prologue
    const/16 v0, 0x1000

    .line 45
    if-le p0, v0, :cond_0

    move p0, v0

    .line 46
    .end local p0
    :cond_0
    return p0
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/google/protobuf/ByteString;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 657
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1085
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1089
    :goto_0
    return v0

    .line 1086
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1087
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1088
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1089
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x0

    .line 1107
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1116
    :goto_0
    return v0

    .line 1108
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1109
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1110
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1111
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1112
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1113
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1114
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1115
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1116
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 610
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 836
    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 619
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 844
    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 627
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 852
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 635
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 860
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 525
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 751
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 752
    .local v0, bytes:[B
    array-length v2, v0

    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    array-length v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    return v2

    .line 754
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 755
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static computeTagSize(I)I
    .locals 1
    .parameter "fieldNumber"

    .prologue
    .line 1060
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 592
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 820
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 473
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 697
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSize(ILcom/google/protobuf/MessageLite;)I
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 777
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static encodeZigZag32(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 1155
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4
    .parameter "n"

    .prologue
    .line 1170
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;
    .locals 1
    .parameter "output"

    .prologue
    .line 69
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/google/protobuf/CodedOutputStream;
    .locals 2
    .parameter "output"
    .parameter "bufferSize"

    .prologue
    .line 78
    new-instance v0, Lcom/google/protobuf/CodedOutputStream;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/CodedOutputStream;
    .locals 2
    .parameter "flatArray"

    .prologue
    .line 89
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->newInstance([BII)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/CodedOutputStream;
    .locals 1
    .parameter "flatArray"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 102
    new-instance v0, Lcom/google/protobuf/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 878
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 879
    return-void
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 889
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    return v0
.end method

.method public spaceLeft()I
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 897
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 899
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 160
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 161
    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 350
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByteArray(I[B)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 231
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    .line 232
    return-void
.end method

.method public writeByteArrayNoTag([B)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 414
    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 224
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 225
    return-void
.end method

.method public writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 407
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 408
    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 112
    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 310
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 248
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    .line 249
    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 427
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 153
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 154
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 345
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 146
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 147
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 340
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 119
    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 315
    return-void
.end method

.method public writeGroup(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 175
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 176
    return-void
.end method

.method public writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 365
    return-void
.end method

.method public writeGroupNoTagWithCachedSizes(Lcom/google/protobuf/MutableMessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-interface {p1, p0}, Lcom/google/protobuf/MutableMessageLite;->writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V

    .line 374
    return-void
.end method

.method public writeGroupWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTagWithCachedSizes(Lcom/google/protobuf/MutableMessageLite;)V

    .line 187
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 188
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 140
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    if-ltz p1, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 133
    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 325
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 207
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 208
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 391
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 392
    return-void
.end method

.method public writeMessageNoTagWithCachedSizes(Lcom/google/protobuf/MutableMessageLite;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-interface {p1}, Lcom/google/protobuf/MutableMessageLite;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 401
    invoke-interface {p1, p0}, Lcom/google/protobuf/MutableMessageLite;->writeToWithCachedSizes(Lcom/google/protobuf/CodedOutputStream;)V

    .line 402
    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 286
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 287
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 288
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 289
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 290
    return-void
.end method

.method public writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 217
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageNoTagWithCachedSizes(Lcom/google/protobuf/MutableMessageLite;)V

    .line 218
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    if-ne v0, v1, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    .line 949
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 950
    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(B)V

    .line 955
    return-void
.end method

.method public writeRawBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 959
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;II)V

    .line 960
    return-void
.end method

.method public writeRawBytes(Lcom/google/protobuf/ByteString;II)V
    .locals 9
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1004
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v4, v5

    if-lt v4, p3, :cond_1

    .line 1006
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v4, p2, v5, p3}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 1007
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 1008
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int v2, v4, v5

    .line 1013
    .local v2, bytesWritten:I
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-virtual {p1, v4, p2, v5, v2}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 1014
    add-int/2addr p2, v2

    .line 1015
    sub-int/2addr p3, v2

    .line 1016
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 1017
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1018
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1023
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v4, :cond_2

    .line 1025
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    invoke-virtual {p1, v4, p2, v8, p3}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 1026
    iput p3, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 1027
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->newInput()Ljava/io/InputStream;

    move-result-object v3

    .line 1034
    .local v3, inputStreamFrom:Ljava/io/InputStream;
    int-to-long v4, p2

    int-to-long v6, p2

    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 1035
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Skip failed? Should never happen."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1044
    .local v0, bytesRead:I
    .local v1, bytesToRead:I
    :cond_3
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    invoke-virtual {v4, v5, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1045
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 1046
    sub-int/2addr p3, v0

    .line 1038
    .end local v0           #bytesRead:I
    .end local v1           #bytesToRead:I
    :cond_4
    if-lez p3, :cond_0

    .line 1039
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1040
    .restart local v1       #bytesToRead:I
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    invoke-virtual {v3, v4, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1041
    .restart local v0       #bytesRead:I
    if-eq v0, v1, :cond_3

    .line 1042
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Read failed? Should never happen"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public writeRawBytes([B)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    .line 965
    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 970
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_0

    .line 972
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 974
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 999
    :goto_0
    return-void

    .line 978
    :cond_0
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    sub-int v0, v1, v2

    .line 979
    .local v0, bytesWritten:I
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 980
    add-int/2addr p2, v0

    .line 981
    sub-int/2addr p3, v0

    .line 982
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 983
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    .line 984
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 989
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v1, :cond_1

    .line 991
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iput p3, p0, Lcom/google/protobuf/CodedOutputStream;->position:I

    .line 997
    :goto_1
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream;->totalBytesWritten:I

    goto :goto_0

    .line 995
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1122
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1123
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1124
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1125
    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1132
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1133
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1134
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1135
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1136
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1137
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1138
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1139
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 299
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 300
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 301
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 302
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 303
    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1070
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1071
    return-void

    .line 1073
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1074
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1095
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1096
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1097
    return-void

    .line 1099
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1100
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 255
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 256
    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 432
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 262
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 263
    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 437
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 269
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 270
    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 442
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 276
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 277
    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 447
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 358
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 359
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 360
    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "wireType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1056
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 238
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 239
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 419
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 125
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 126
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 320
    return-void
.end method

.method public writeUnknownGroup(ILcom/google/protobuf/MessageLite;)V
    .locals 0
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 201
    return-void
.end method

.method public writeUnknownGroupNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 386
    return-void
.end method
