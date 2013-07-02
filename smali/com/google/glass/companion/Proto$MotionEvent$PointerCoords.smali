.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    }
.end annotation


# static fields
.field public static final ORIENTATION_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESSURE_FIELD_NUMBER:I = 0x2

.field public static final SIZE_FIELD_NUMBER:I = 0x3

.field public static final TOOL_MAJOR_FIELD_NUMBER:I = 0x4

.field public static final TOOL_MINOR_FIELD_NUMBER:I = 0x5

.field public static final TOUCH_MAJOR_FIELD_NUMBER:I = 0x6

.field public static final TOUCH_MINOR_FIELD_NUMBER:I = 0x7

.field public static final X_FIELD_NUMBER:I = 0x8

.field public static final Y_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private orientation_:F

.field private pressure_:F

.field private size_:F

.field private toolMajor_:F

.field private toolMinor_:F

.field private touchMajor_:F

.field private touchMinor_:F

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private x_:F

.field private y_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4750
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    .line 5009
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5529
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 5530
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->initFields()V

    .line 5531
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4664
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4912
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedIsInitialized:B

    .line 4954
    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedSerializedSize:I

    .line 4665
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->initFields()V

    .line 4666
    const/4 v2, 0x0

    .line 4667
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 4669
    .local v5, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    .line 4673
    .local v4, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 4674
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4675
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4676
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4681
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4683
    const/4 v0, 0x1

    goto :goto_0

    .line 4678
    :sswitch_0
    const/4 v0, 0x1

    .line 4679
    goto :goto_0

    .line 4688
    :sswitch_1
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4689
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4734
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 4735
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4740
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    .line 4741
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4745
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4747
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->makeExtensionsImmutable()V

    throw v6

    .line 4693
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_3
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4694
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4736
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 4737
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4698
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_3
    :try_start_5
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4699
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    goto :goto_0

    .line 4703
    :sswitch_4
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4704
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    goto :goto_0

    .line 4708
    :sswitch_5
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4709
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    goto :goto_0

    .line 4713
    :sswitch_6
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4714
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    goto/16 :goto_0

    .line 4718
    :sswitch_7
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4719
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    goto/16 :goto_0

    .line 4723
    :sswitch_8
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4724
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    goto/16 :goto_0

    .line 4728
    :sswitch_9
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 4729
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 4741
    .end local v3           #tag:I
    :cond_1
    :try_start_6
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4745
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4747
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->makeExtensionsImmutable()V

    .line 4749
    return-void

    .line 4742
    :catch_2
    move-exception v6

    .line 4745
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 4742
    :catch_3
    move-exception v7

    .line 4745
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 4676
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
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
    .line 4640
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4646
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4912
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedIsInitialized:B

    .line 4954
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedSerializedSize:I

    .line 4647
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4648
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4649
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4912
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedIsInitialized:B

    .line 4954
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedSerializedSize:I

    .line 4649
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3602(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    return p1
.end method

.method static synthetic access$3702(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    return p1
.end method

.method static synthetic access$3802(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    return p1
.end method

.method static synthetic access$3902(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    return p1
.end method

.method static synthetic access$4002(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    return p1
.end method

.method static synthetic access$4102(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    return p1
.end method

.method static synthetic access$4202(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    return p1
.end method

.method static synthetic access$4302(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    return p1
.end method

.method static synthetic access$4402(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    return p1
.end method

.method static synthetic access$4502(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4640
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    return p1
.end method

.method static synthetic access$4600(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4640
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 4653
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4902
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 4903
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 4904
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 4905
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 4906
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 4907
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 4908
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 4909
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 4910
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 4911
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5071
    #calls: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->access$3400()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 5074
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5051
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5057
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5021
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5027
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5062
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5068
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5041
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5047
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5031
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5037
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 4657
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4640
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 4778
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4762
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 4793
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4956
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedSerializedSize:I

    .line 4957
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4998
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4959
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4960
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4961
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4964
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4965
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4968
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4969
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4972
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 4973
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4976
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 4977
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4980
    :cond_5
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 4981
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4984
    :cond_6
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 4985
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4988
    :cond_7
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 4989
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4992
    :cond_8
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 4993
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 4996
    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 4997
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedSerializedSize:I

    move v1, v0

    .line 4998
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 4808
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    return v0
.end method

.method public getToolMajor()F
    .locals 1

    .prologue
    .line 4823
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    return v0
.end method

.method public getToolMinor()F
    .locals 1

    .prologue
    .line 4838
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .prologue
    .line 4853
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .prologue
    .line 4868
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 4883
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 4898
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    return v0
.end method

.method public hasOrientation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4772
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPressure()Z
    .locals 2

    .prologue
    .line 4787
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasSize()Z
    .locals 2

    .prologue
    .line 4802
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasToolMajor()Z
    .locals 2

    .prologue
    .line 4817
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasToolMinor()Z
    .locals 2

    .prologue
    .line 4832
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasTouchMajor()Z
    .locals 2

    .prologue
    .line 4847
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasTouchMinor()Z
    .locals 2

    .prologue
    .line 4862
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasX()Z
    .locals 2

    .prologue
    .line 4877
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method public hasY()Z
    .locals 2

    .prologue
    .line 4892
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 5012
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 5013
    const-string v0, "com.google.glass.companion.MutableProto$MotionEvent$PointerCoords"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 5015
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4914
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedIsInitialized:B

    .line 4915
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 4918
    :goto_0
    return v1

    .line 4915
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4917
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5072
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4640
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->newBuilderForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5076
    invoke-static {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->newBuilder(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4640
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

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
    .line 5005
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4923
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getSerializedSize()I

    .line 4924
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4925
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4927
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4928
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4930
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4931
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4933
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 4934
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4936
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4937
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4939
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 4940
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4942
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 4943
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4945
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 4946
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4948
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 4949
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4951
    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 4952
    return-void
.end method
