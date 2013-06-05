.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlasswareRegistryEntry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private authUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private iconGlass160Url_:Ljava/lang/Object;

.field private iconGlass30Url_:Ljava/lang/Object;

.field private iconGlass50Url_:Ljava/lang/Object;

.field private iconWeb40Url_:Ljava/lang/Object;

.field private iconWeb85Url_:Ljava/lang/Object;

.field private internalGlassware_:I

.field private messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private messages_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation
.end field

.field private moreInfoUrl_:Ljava/lang/Object;

.field private nameTextColor_:Ljava/lang/Object;

.field private projectId_:J

.field private settingsUrl_:Ljava/lang/Object;

.field private visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1915
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2627
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2798
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1194
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1195
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1812
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1915
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2433
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2530
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2627
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2798
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1200
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1201
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1208
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMessagesIsMutable()V
    .locals 2

    .prologue
    .line 2021
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 2022
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2023
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2025
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1182
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2319
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1203
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1206
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;"
        }
    .end annotation

    .prologue
    .line 2197
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/GlasswareMessages;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2198
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2199
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2201
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2205
    :goto_0
    return-object p0

    .line 2203
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessages(ILcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2180
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2181
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2182
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2186
    :goto_0
    return-object p0

    .line 2184
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessages(ILcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2141
    if-nez p2, :cond_0

    .line 2142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2144
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2145
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2146
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2150
    :goto_0
    return-object p0

    .line 2148
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessages(Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2162
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2163
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2164
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2168
    :goto_0
    return-object p0

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessages(Lcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2120
    if-nez p1, :cond_0

    .line 2121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2123
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2124
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2129
    :goto_0
    return-object p0

    .line 2127
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessagesBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 2

    .prologue
    .line 2289
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    return-object v0
.end method

.method public addMessagesBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 2301
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMessages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 2

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    .line 1261
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1262
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1264
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 5

    .prologue
    .line 1268
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V

    .line 1269
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1270
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1271
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1272
    or-int/lit8 v2, v2, 0x1

    .line 1274
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$502(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;J)J

    .line 1275
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1276
    or-int/lit8 v2, v2, 0x2

    .line 1278
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$602(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1280
    or-int/lit8 v2, v2, 0x4

    .line 1282
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$702(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1284
    or-int/lit8 v2, v2, 0x8

    .line 1286
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$802(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1288
    or-int/lit8 v2, v2, 0x10

    .line 1290
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$902(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1292
    or-int/lit8 v2, v2, 0x20

    .line 1294
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1002(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_d

    .line 1296
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1297
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1298
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1300
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1102(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/util/List;)Ljava/util/List;

    .line 1304
    :goto_0
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1305
    or-int/lit8 v2, v2, 0x40

    .line 1307
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1202(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1309
    or-int/lit16 v2, v2, 0x80

    .line 1311
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1302(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1313
    or-int/lit16 v2, v2, 0x100

    .line 1315
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1402(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1317
    or-int/lit16 v2, v2, 0x200

    .line 1319
    :cond_a
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1502(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;I)I

    .line 1320
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1321
    or-int/lit16 v2, v2, 0x400

    .line 1323
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1602(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1325
    or-int/lit16 v2, v2, 0x800

    .line 1327
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1702(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1328
    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1802(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;I)I

    .line 1329
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onBuilt()V

    .line 1330
    return-object v1

    .line 1302
    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1102(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 1212
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    .line 1214
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1216
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1218
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1220
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1222
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1224
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1225
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1231
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 1232
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 1234
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1235
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 1236
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1237
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 1238
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1239
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 1240
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1241
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1242
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1243
    return-object p0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthUrl()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2409
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2410
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2411
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2412
    return-object p0
.end method

.method public clearIconGlass160Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1789
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass160Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1790
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1791
    return-object p0
.end method

.method public clearIconGlass30Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1583
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass30Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1584
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1585
    return-object p0
.end method

.method public clearIconGlass50Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1685
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1686
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass50Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1687
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1688
    return-object p0
.end method

.method public clearIconWeb40Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1891
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1892
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb40Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1893
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1894
    return-object p0
.end method

.method public clearIconWeb85Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1995
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb85Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1996
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1997
    return-object p0
.end method

.method public clearInternalGlassware()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2678
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2679
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2680
    return-object p0
.end method

.method public clearMessages()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2217
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2222
    :goto_0
    return-object p0

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearMoreInfoUrl()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2604
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2605
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getMoreInfoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2606
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2607
    return-object p0
.end method

.method public clearNameTextColor()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2772
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2773
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getNameTextColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2774
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2775
    return-object p0
.end method

.method public clearProjectId()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 1497
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1498
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    .line 1499
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1500
    return-object p0
.end method

.method public clearSettingsUrl()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2507
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2508
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSettingsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2509
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2510
    return-object p0
.end method

.method public clearVisibility()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2827
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2828
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 2829
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2830
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 1247
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

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
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2352
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2353
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2355
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2358
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAuthUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2371
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2372
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2373
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2376
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2379
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 1

    .prologue
    .line 1256
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1252
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getIconGlass160Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1731
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1732
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1734
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1737
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1750
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1751
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1752
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1755
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1758
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

.method public getIconGlass30Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1525
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1526
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1528
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1531
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1544
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1545
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1546
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1549
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1552
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

.method public getIconGlass50Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1628
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1634
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1647
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1648
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1649
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1652
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1655
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

.method public getIconWeb40Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1834
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1835
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1837
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1840
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1853
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1854
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1855
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1858
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1861
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

.method public getIconWeb85Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1937
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1938
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1940
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1943
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1956
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1957
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1958
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1961
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1964
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

.method public getInternalGlassware()I
    .locals 1

    .prologue
    .line 2650
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    return v0
.end method

.method public getMessages(I)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "index"

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .line 2069
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    goto :goto_0
.end method

.method public getMessagesBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2250
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;

    return-object v0
.end method

.method public getMessagesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2313
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2055
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMessagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2041
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessagesOrBuilder(I)Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;

    .line 2263
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;

    goto :goto_0
.end method

.method public getMessagesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMoreInfoUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2550
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2551
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2553
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2556
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2568
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2569
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2570
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2573
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2576
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

.method public getNameTextColor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2709
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2710
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2712
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2715
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getNameTextColorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2730
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2731
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2732
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2735
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2738
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

.method public getProjectId()J
    .locals 2

    .prologue
    .line 1472
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    return-wide v0
.end method

.method public getSettingsUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2453
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2454
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2456
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2459
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSettingsUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2471
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2472
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2473
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2476
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2479
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

.method public getVisibility()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    return-object v0
.end method

.method public hasAuthUrl()Z
    .locals 2

    .prologue
    .line 2340
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasIconGlass160Url()Z
    .locals 2

    .prologue
    .line 1719
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasIconGlass30Url()Z
    .locals 2

    .prologue
    .line 1513
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasIconGlass50Url()Z
    .locals 2

    .prologue
    .line 1616
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasIconWeb40Url()Z
    .locals 2

    .prologue
    .line 1822
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasIconWeb85Url()Z
    .locals 2

    .prologue
    .line 1925
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasInternalGlassware()Z
    .locals 2

    .prologue
    .line 2638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoUrl()Z
    .locals 2

    .prologue
    .line 2539
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNameTextColor()Z
    .locals 2

    .prologue
    .line 2695
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1461
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSettingsUrl()Z
    .locals 2

    .prologue
    .line 2442
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

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

.method public hasVisibility()Z
    .locals 2

    .prologue
    .line 2803
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

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
    .line 1187
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1343
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1425
    :goto_0
    return-object p0

    .line 1344
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasProjectId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1345
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getProjectId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->setProjectId(J)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1347
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconGlass30Url()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1348
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1349
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$600(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1350
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1352
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconGlass50Url()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1353
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1354
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$700(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1357
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconGlass160Url()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1358
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1359
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$800(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1360
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1362
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconWeb40Url()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1363
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1364
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$900(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1367
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconWeb85Url()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1368
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1369
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1000(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1370
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1372
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_f

    .line 1373
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1374
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1375
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1376
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1381
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1398
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasAuthUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1399
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1400
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1200(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 1401
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1403
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasSettingsUrl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1405
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1300(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 1406
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1408
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasMoreInfoUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1409
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1410
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1400(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 1411
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1413
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasInternalGlassware()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1414
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getInternalGlassware()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->setInternalGlassware(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1416
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasNameTextColor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1418
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1600(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 1419
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1421
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasVisibility()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1422
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getVisibility()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->setVisibility(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1424
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1378
    :cond_e
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 1379
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1384
    :cond_f
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1385
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1386
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1387
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1388
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1389
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1390
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1394
    :cond_11
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1436
    const/4 v2, 0x0

    .line 1438
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    if-eqz v2, :cond_0

    .line 1444
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1447
    :cond_0
    return-object p0

    .line 1439
    :catch_0
    move-exception v1

    .line 1440
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-object v2, v0

    .line 1441
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1444
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1334
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    if-eqz v0, :cond_0

    .line 1335
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object p0

    .line 1338
    .end local p0
    :goto_0
    return-object p0

    .line 1337
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1176
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeMessages(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2233
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2234
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2235
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2239
    :goto_0
    return-object p0

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAuthUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2392
    if-nez p1, :cond_0

    .line 2393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2395
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2396
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2397
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2398
    return-object p0
.end method

.method public setAuthUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2424
    if-nez p1, :cond_0

    .line 2425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2427
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2428
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2429
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2430
    return-object p0
.end method

.method public setIconGlass160Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1771
    if-nez p1, :cond_0

    .line 1772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1774
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1775
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1776
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1777
    return-object p0
.end method

.method public setIconGlass160UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1803
    if-nez p1, :cond_0

    .line 1804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1806
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1807
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1808
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1809
    return-object p0
.end method

.method public setIconGlass30Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1565
    if-nez p1, :cond_0

    .line 1566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1568
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1569
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1570
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1571
    return-object p0
.end method

.method public setIconGlass30UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1597
    if-nez p1, :cond_0

    .line 1598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1600
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1601
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1602
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1603
    return-object p0
.end method

.method public setIconGlass50Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1668
    if-nez p1, :cond_0

    .line 1669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1671
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1672
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1673
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1674
    return-object p0
.end method

.method public setIconGlass50UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1700
    if-nez p1, :cond_0

    .line 1701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1703
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1704
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1705
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1706
    return-object p0
.end method

.method public setIconWeb40Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1874
    if-nez p1, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1877
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1878
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1879
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1880
    return-object p0
.end method

.method public setIconWeb40UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1906
    if-nez p1, :cond_0

    .line 1907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1909
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1910
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1911
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1912
    return-object p0
.end method

.method public setIconWeb85Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1977
    if-nez p1, :cond_0

    .line 1978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1980
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1981
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1982
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1983
    return-object p0
.end method

.method public setIconWeb85UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2009
    if-nez p1, :cond_0

    .line 2010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2012
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2013
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2015
    return-object p0
.end method

.method public setInternalGlassware(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2662
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2663
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2664
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2665
    return-object p0
.end method

.method public setMessages(ILcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2103
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2104
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2105
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2109
    :goto_0
    return-object p0

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMessages(ILcom/google/googlex/glass/common/proto/GlasswareMessages;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2082
    if-nez p2, :cond_0

    .line 2083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2085
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2086
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2087
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2091
    :goto_0
    return-object p0

    .line 2089
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMoreInfoUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2588
    if-nez p1, :cond_0

    .line 2589
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2591
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2592
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2593
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2594
    return-object p0
.end method

.method public setMoreInfoUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2618
    if-nez p1, :cond_0

    .line 2619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2621
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2622
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2623
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2624
    return-object p0
.end method

.method public setNameTextColor(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2753
    if-nez p1, :cond_0

    .line 2754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2756
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2757
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2758
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2759
    return-object p0
.end method

.method public setNameTextColorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2789
    if-nez p1, :cond_0

    .line 2790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2792
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2793
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2794
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2795
    return-object p0
.end method

.method public setProjectId(J)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1483
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1484
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    .line 1485
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1486
    return-object p0
.end method

.method public setSettingsUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2491
    if-nez p1, :cond_0

    .line 2492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2494
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2495
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2496
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2497
    return-object p0
.end method

.method public setSettingsUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2521
    if-nez p1, :cond_0

    .line 2522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2524
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2525
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2526
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2527
    return-object p0
.end method

.method public setVisibility(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2815
    if-nez p1, :cond_0

    .line 2816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2818
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2819
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 2820
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2821
    return-object p0
.end method
