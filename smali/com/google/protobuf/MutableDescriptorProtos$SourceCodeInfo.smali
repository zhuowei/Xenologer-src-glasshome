.class public final Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
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
    name = "SourceCodeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;",
        ">;",
        "Lcom/google/protobuf/MutableMessage;"
    }
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

.field private static volatile immutableDefault:Lcom/google/protobuf/Message;

.field private static final serialVersionUID:J


# instance fields
.field private location_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20138
    const/4 v0, 0x0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->immutableDefault:Lcom/google/protobuf/Message;

    .line 20148
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .line 20149
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->initFields()V

    .line 20150
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->makeImmutable()V

    .line 20151
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-static {v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/protobuf/MutableMessageLite;)Lcom/google/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 20153
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 19470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    .line 18346
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    .line 18347
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 19470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    .line 18347
    return-void
.end method

.method private ensureLocationInitialized()V
    .locals 1

    .prologue
    .line 19472
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    .line 19475
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 18358
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 18365
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 18355
    return-void
.end method

.method public static newMessage()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 18352
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllLocation(Ljava/lang/Iterable;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
            ">;)",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;"
        }
    .end annotation

    .prologue
    .line 19906
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 19907
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->ensureLocationInitialized()V

    .line 19908
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 19910
    return-object p0
.end method

.method public addLocation()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 2

    .prologue
    .line 19791
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 19792
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->ensureLocationInitialized()V

    .line 19793
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;->newMessage()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    .line 19794
    .local v0, value:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19795
    return-object v0
.end method

.method public addLocation(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 19847
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 19848
    if-nez p1, :cond_0

    .line 19849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19851
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->ensureLocationInitialized()V

    .line 19852
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19853
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 20132
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 20133
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    .line 20134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    .line 20135
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clear()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public clearLocation()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 20021
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 20022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    .line 20023
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMutableMessageLite;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 20031
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

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
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->clone()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 18361
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->defaultInstance:Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstanceForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(I)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "index"

    .prologue
    .line 19687
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public getLocationCount()I
    .locals 1

    .prologue
    .line 19526
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getLocationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19578
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19579
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 19581
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMutableLocation(I)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .parameter "index"

    .prologue
    .line 19739
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    return-object v0
.end method

.method public getMutableLocationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19633
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 19634
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->ensureLocationInitialized()V

    .line 19635
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18376
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 20112
    const/4 v1, 0x0

    .line 20113
    .local v1, size:I
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 20114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 20115
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    .line 20114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20119
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 20120
    iput v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->cachedSize:I

    .line 20121
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;
    .locals 2

    .prologue
    .line 18369
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos;->access$4300()Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMutableMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalImmutableDefault()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 20141
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->immutableDefault:Lcom/google/protobuf/Message;

    if-nez v0, :cond_0

    .line 20142
    const-string v0, "com.google.protobuf.DescriptorProtos$SourceCodeInfo"

    invoke-static {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/protobuf/Message;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->immutableDefault:Lcom/google/protobuf/Message;

    .line 20144
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->immutableDefault:Lcom/google/protobuf/Message;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 20027
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18341
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 2
    .parameter "other"

    .prologue
    .line 20045
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 20046
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 20053
    :goto_0
    return-object p0

    .line 20047
    :cond_0
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20048
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->ensureLocationInitialized()V

    .line 20049
    iget-object v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 20052
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMutableMessage;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1
    .parameter "other"

    .prologue
    .line 20036
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 20037
    instance-of v0, p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    if-eqz v0, :cond_0

    .line 20038
    check-cast p1, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->mergeFrom(Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    .line 20040
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/AbstractMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18341
    invoke-virtual {p0, p1}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->mergeFrom(Lcom/google/protobuf/MutableMessage;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"

    .prologue
    .line 20059
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 20061
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 20064
    .local v3, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 20065
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 20066
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 20067
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 20072
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20074
    const/4 v0, 0x1

    goto :goto_0

    .line 20069
    :sswitch_0
    const/4 v0, 0x1

    .line 20070
    goto :goto_0

    .line 20079
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->addLocation()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 20086
    .end local v0           #done:Z
    .end local v2           #tag:I
    .end local v3           #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :catch_0
    move-exception v1

    .line 20087
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 20084
    .restart local v0       #done:Z
    .restart local v3       #unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20085
    const/4 v4, 0x1

    goto :goto_1

    .line 20067
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1

    .prologue
    .line 18349
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 18341
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->newMessageForType()Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(ILcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 19963
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->assertMutable()V

    .line 19964
    if-nez p2, :cond_0

    .line 19965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19967
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->ensureLocationInitialized()V

    .line 19968
    iget-object v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19969
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
    .line 20128
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
    .line 20094
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v1

    .line 20095
    .local v1, bytesWrittenBefore:I
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 20096
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 20097
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->location_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/protobuf/MutableMessageLite;)V

    .line 20096
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20101
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 20102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 20103
    .local v0, bytesWrittenAfter:I
    invoke-virtual {p0}, Lcom/google/protobuf/MutableDescriptorProtos$SourceCodeInfo;->getCachedSize()I

    move-result v3

    sub-int v4, v0, v1

    if-eq v3, v4, :cond_1

    .line 20104
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 20109
    :cond_1
    return-void
.end method
