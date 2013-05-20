.class public final Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/MutableMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final END_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private end_:I

.field private start_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2189
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->immutableDefault:Lcom/google/protobuf/Message;

    .line 2199
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2200
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->initFields()V

    .line 2201
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->makeImmutable()V

    .line 2202
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->PARSER:Lcom/google/protobuf/Parser;

    .line 2204
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1965
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .parameter "noInit"

    .prologue
    .line 1966
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 1977
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1984
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1974
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 1971
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2180
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2181
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 2182
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    .line 2183
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2184
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    .line 2185
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2186
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clear()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public clearEnd()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2060
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2061
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    .line 2062
    return-object p0
.end method

.method public clearStart()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 2026
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2027
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2028
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    .line 2029
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 2070
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

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
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->clone()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 1980
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 2044
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1995
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2158
    const/4 v0, 0x0

    .line 2159
    .local v0, size:I
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 2160
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2163
    :cond_0
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 2164
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2167
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2168
    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->cachedSize:I

    .line 2169
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 2011
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    return v0
.end method

.method public hasEnd()Z
    .locals 2

    .prologue
    .line 2038
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

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

.method public hasStart()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2005
    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

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
    .line 1988
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$700()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2192
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 2193
    const-string v0, "com.google.protobuf.DescriptorProtos$DescriptorProto$ExtensionRange"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->immutableDefault:Lcom/google/protobuf/Message;

    .line 2195
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2066
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1960
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "other"

    .prologue
    .line 2084
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2085
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2093
    :goto_0
    return-object p0

    .line 2086
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2087
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->setStart(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2089
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2090
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->setEnd(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    .line 2092
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "other"

    .prologue
    .line 2075
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2076
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    if-eqz v0, :cond_0

    .line 2077
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    .line 2079
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1960
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2101
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 2104
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 2105
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 2107
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 2112
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2114
    const/4 v0, 0x1

    goto :goto_0

    .line 2109
    :sswitch_0
    const/4 v0, 0x1

    .line 2110
    goto :goto_0

    .line 2119
    :sswitch_1
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2120
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    goto :goto_0

    .line 2132
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 2133
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 2124
    .restart local v0       #done:Z
    .restart local v2       #tag:I
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :sswitch_2
    iget v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2125
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    goto :goto_0

    .line 2130
    .end local v2           #tag:I
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    const/4 v4, 0x1

    goto :goto_1

    .line 2107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1

    .prologue
    .line 1968
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 1960
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public setEnd(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "value"

    .prologue
    .line 2050
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2051
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2052
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    .line 2053
    return-object p0
.end method

.method public setStart(I)Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "value"

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->assertMutable()V

    .line 2018
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    .line 2019
    iput p1, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    .line 2020
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
    .line 2176
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

    .line 2140
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 2141
    .local v1, bytesWrittenBefore:I
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 2142
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->start_:I

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2144
    :cond_0
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 2145
    iget v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->end_:I

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2147
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2148
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 2149
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$DescriptorProto$ExtensionRange;->getCachedSize()I

    move-result v2

    sub-int v3, v0, v1

    if-eq v2, v3, :cond_2

    .line 2150
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2155
    :cond_2
    return-void
.end method
