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
    .line 1219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2677
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2851
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1220
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1221
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1225
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1529
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1953
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2059
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2677
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2733
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2851
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1226
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1227
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1202
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1234
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMessagesIsMutable()V
    .locals 2

    .prologue
    .line 2062
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 2063
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2066
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1208
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
    .line 2359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2360
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

    .line 2366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2360
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1229
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1232
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
    .line 2238
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/GlasswareMessages;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2239
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2240
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2242
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2246
    :goto_0
    return-object p0

    .line 2244
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
    .line 2220
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2221
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2222
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2223
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2227
    :goto_0
    return-object p0

    .line 2225
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
    .line 2181
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2182
    if-nez p2, :cond_0

    .line 2183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2185
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2186
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2187
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2191
    :goto_0
    return-object p0

    .line 2189
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessages(Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2203
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2204
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2205
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2209
    :goto_0
    return-object p0

    .line 2207
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
    .line 2160
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2161
    if-nez p1, :cond_0

    .line 2162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2164
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2165
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2166
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2170
    :goto_0
    return-object p0

    .line 2168
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMessagesBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;
    .locals 2

    .prologue
    .line 2330
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
    .line 2342
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
    .line 1286
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    .line 1287
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1290
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    .locals 5

    .prologue
    .line 1294
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$1;)V

    .line 1295
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1296
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1297
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1298
    or-int/lit8 v2, v2, 0x1

    .line 1300
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->projectId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$502(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;J)J

    .line 1301
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1302
    or-int/lit8 v2, v2, 0x2

    .line 1304
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$602(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1306
    or-int/lit8 v2, v2, 0x4

    .line 1308
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$702(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1310
    or-int/lit8 v2, v2, 0x8

    .line 1312
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$802(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1314
    or-int/lit8 v2, v2, 0x10

    .line 1316
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$902(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1318
    or-int/lit8 v2, v2, 0x20

    .line 1320
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1002(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_d

    .line 1322
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1323
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1324
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1326
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1102(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/util/List;)Ljava/util/List;

    .line 1330
    :goto_0
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1331
    or-int/lit8 v2, v2, 0x40

    .line 1333
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1202(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1335
    or-int/lit16 v2, v2, 0x80

    .line 1337
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1302(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1339
    or-int/lit16 v2, v2, 0x100

    .line 1341
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1402(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1343
    or-int/lit16 v2, v2, 0x200

    .line 1345
    :cond_a
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->internalGlassware_:I
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1502(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;I)I

    .line 1346
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1347
    or-int/lit16 v2, v2, 0x400

    .line 1349
    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1602(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1351
    or-int/lit16 v2, v2, 0x800

    .line 1353
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1702(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1354
    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1802(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;I)I

    .line 1355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onBuilt()V

    .line 1356
    return-object v1

    .line 1328
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
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 1238
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    .line 1240
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1242
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1243
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1244
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1246
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1250
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1251
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1253
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1257
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 1258
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 1260
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 1262
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1263
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 1264
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1265
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 1266
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1267
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 1268
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1269
    return-object p0

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthUrl()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2453
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2454
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2455
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2456
    return-object p0
.end method

.method public clearIconGlass160Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1823
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1824
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass160Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1825
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1826
    return-object p0
.end method

.method public clearIconGlass30Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1612
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass30Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1613
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1614
    return-object p0
.end method

.method public clearIconGlass50Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1718
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconGlass50Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1719
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1720
    return-object p0
.end method

.method public clearIconWeb40Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 1929
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1930
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb40Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1931
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1932
    return-object p0
.end method

.method public clearIconWeb85Url()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2035
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2036
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getIconWeb85Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2038
    return-object p0
.end method

.method public clearInternalGlassware()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2727
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2728
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2729
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2730
    return-object p0
.end method

.method public clearMessages()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 2258
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2259
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2263
    :goto_0
    return-object p0

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearMoreInfoUrl()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2655
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getMoreInfoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2656
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2657
    return-object p0
.end method

.method public clearNameTextColor()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2825
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2826
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getNameTextColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2827
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2828
    return-object p0
.end method

.method public clearProjectId()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 1523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1524
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    .line 1525
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1526
    return-object p0
.end method

.method public clearSettingsUrl()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2554
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2555
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getSettingsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2556
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2557
    return-object p0
.end method

.method public clearVisibility()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1

    .prologue
    .line 2880
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2881
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;->PUBLIC:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 2882
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2883
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2

    .prologue
    .line 1273
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
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1202
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
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2392
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2393
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2394
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2396
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2397
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2398
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2402
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getAuthUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2415
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2416
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2417
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2420
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2423
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
    .line 1282
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1278
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClass;->internal_static_googlex_glass_common_proto_GlasswareRegistryEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getIconGlass160Url()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1762
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1763
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1764
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1766
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1768
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1772
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIconGlass160UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1786
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1787
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1790
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1793
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
    .locals 4

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1551
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1552
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1554
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1560
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIconGlass30UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1573
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1574
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1575
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1578
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1581
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
    .locals 4

    .prologue
    .line 1656
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1657
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1658
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1660
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1661
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1662
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1666
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIconGlass50UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1679
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1680
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1681
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1684
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1687
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
    .locals 4

    .prologue
    .line 1868
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1869
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1870
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1872
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1873
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1874
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1878
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIconWeb40UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1891
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1892
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1893
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1896
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1899
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
    .locals 4

    .prologue
    .line 1974
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1975
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1976
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1978
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1979
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1980
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1984
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIconWeb85UrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1997
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1998
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1999
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2002
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2005
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
    .line 2700
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    return v0
.end method

.method public getMessages(I)Lcom/google/googlex/glass/common/proto/GlasswareMessages;
    .locals 1
    .parameter "index"

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    .line 2110
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
    .line 2291
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
    .line 2354
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2096
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
    .line 2079
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2082
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
    .line 2302
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMessagesOrBuilder;

    .line 2304
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
    .line 2316
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2319
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMoreInfoUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2596
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2597
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2598
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2600
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2601
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2602
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2606
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getMoreInfoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2618
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2619
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2620
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2623
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2626
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
    .locals 4

    .prologue
    .line 2758
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2759
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2760
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2762
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2763
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2764
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2768
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getNameTextColorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2783
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2784
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2785
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2788
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2791
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
    .line 1498
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    return-wide v0
.end method

.method public getSettingsUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2496
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2497
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2498
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2500
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2501
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2502
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2506
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getSettingsUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2518
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2519
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2520
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2523
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2526
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
    .line 2862
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    return-object v0
.end method

.method public hasAuthUrl()Z
    .locals 2

    .prologue
    .line 2381
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
    .line 1751
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
    .line 1539
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
    .line 1645
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
    .line 1857
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
    .line 1963
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
    .line 2688
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
    .line 2586
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
    .line 2745
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

    .line 1487
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
    .line 2486
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
    .line 2856
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
    .line 1213
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
    .line 1455
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1369
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1451
    :goto_0
    return-object p0

    .line 1370
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasProjectId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getProjectId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->setProjectId(J)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1373
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconGlass30Url()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1374
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1375
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass30Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$600(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1376
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1378
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconGlass50Url()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1379
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1380
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass50Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$700(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1381
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1383
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconGlass160Url()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1384
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1385
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconGlass160Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$800(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1388
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconWeb40Url()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1389
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1390
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb40Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$900(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1391
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1393
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasIconWeb85Url()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1394
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1395
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->iconWeb85Url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1000(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 1396
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1398
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_f

    .line 1399
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1400
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1401
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1407
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1424
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasAuthUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1425
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1426
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->authUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1200(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 1427
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1429
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasSettingsUrl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1430
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1431
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->settingsUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1300(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 1432
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1434
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasMoreInfoUrl()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1435
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1436
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->moreInfoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1400(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 1437
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1439
    :cond_a
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasInternalGlassware()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1440
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getInternalGlassware()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->setInternalGlassware(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1442
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasNameTextColor()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1443
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1444
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->nameTextColor_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1600(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 1445
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1447
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->hasVisibility()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1448
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getVisibility()Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->setVisibility(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1450
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1404
    :cond_e
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 1405
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1410
    :cond_f
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1411
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1412
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1413
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1414
    #getter for: Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->messages_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1100(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    .line 1415
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1416
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1420
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
    .line 1462
    const/4 v2, 0x0

    .line 1464
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

    .line 1469
    if-eqz v2, :cond_0

    .line 1470
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    .line 1473
    :cond_0
    return-object p0

    .line 1465
    :catch_0
    move-exception v1

    .line 1466
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    move-object v2, v0

    .line 1467
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1470
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1360
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    if-eqz v0, :cond_0

    .line 1361
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object p0

    .line 1364
    .end local p0
    :goto_0
    return-object p0

    .line 1363
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
    .line 1202
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1202
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
    .line 1202
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
    .line 1202
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1202
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
    .line 1202
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeMessages(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2274
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2275
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2276
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2280
    :goto_0
    return-object p0

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAuthUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2436
    if-nez p1, :cond_0

    .line 2437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2439
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2440
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2441
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2442
    return-object p0
.end method

.method public setAuthUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2468
    if-nez p1, :cond_0

    .line 2469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2471
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2472
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->authUrl_:Ljava/lang/Object;

    .line 2473
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2474
    return-object p0
.end method

.method public setIconGlass160Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1806
    if-nez p1, :cond_0

    .line 1807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1809
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1810
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1811
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1812
    return-object p0
.end method

.method public setIconGlass160UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1838
    if-nez p1, :cond_0

    .line 1839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1841
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1842
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass160Url_:Ljava/lang/Object;

    .line 1843
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1844
    return-object p0
.end method

.method public setIconGlass30Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1594
    if-nez p1, :cond_0

    .line 1595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1597
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1598
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1599
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1600
    return-object p0
.end method

.method public setIconGlass30UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1626
    if-nez p1, :cond_0

    .line 1627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1629
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1630
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass30Url_:Ljava/lang/Object;

    .line 1631
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1632
    return-object p0
.end method

.method public setIconGlass50Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
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

.method public setIconGlass50UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1732
    if-nez p1, :cond_0

    .line 1733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1735
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1736
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconGlass50Url_:Ljava/lang/Object;

    .line 1737
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1738
    return-object p0
.end method

.method public setIconWeb40Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1912
    if-nez p1, :cond_0

    .line 1913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1915
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1916
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1917
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1918
    return-object p0
.end method

.method public setIconWeb40UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1944
    if-nez p1, :cond_0

    .line 1945
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1947
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1948
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb40Url_:Ljava/lang/Object;

    .line 1949
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1950
    return-object p0
.end method

.method public setIconWeb85Url(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2018
    if-nez p1, :cond_0

    .line 2019
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2021
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2022
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2023
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2024
    return-object p0
.end method

.method public setIconWeb85UrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2050
    if-nez p1, :cond_0

    .line 2051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2053
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2054
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->iconWeb85Url_:Ljava/lang/Object;

    .line 2055
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2056
    return-object p0
.end method

.method public setInternalGlassware(I)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2712
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2713
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->internalGlassware_:I

    .line 2714
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2715
    return-object p0
.end method

.method public setMessages(ILcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2144
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2145
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/GlasswareMessages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMessages;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2150
    :goto_0
    return-object p0

    .line 2148
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
    .line 2122
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2123
    if-nez p2, :cond_0

    .line 2124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2126
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->ensureMessagesIsMutable()V

    .line 2127
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messages_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2128
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2132
    :goto_0
    return-object p0

    .line 2130
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMoreInfoUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2638
    if-nez p1, :cond_0

    .line 2639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2641
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2642
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2643
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2644
    return-object p0
.end method

.method public setMoreInfoUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2668
    if-nez p1, :cond_0

    .line 2669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2671
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2672
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->moreInfoUrl_:Ljava/lang/Object;

    .line 2673
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2674
    return-object p0
.end method

.method public setNameTextColor(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2806
    if-nez p1, :cond_0

    .line 2807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2809
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2810
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2811
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2812
    return-object p0
.end method

.method public setNameTextColorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2842
    if-nez p1, :cond_0

    .line 2843
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2845
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2846
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->nameTextColor_:Ljava/lang/Object;

    .line 2847
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2848
    return-object p0
.end method

.method public setProjectId(J)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1509
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 1510
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->projectId_:J

    .line 1511
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 1512
    return-object p0
.end method

.method public setSettingsUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2538
    if-nez p1, :cond_0

    .line 2539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2541
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2542
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2543
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2544
    return-object p0
.end method

.method public setSettingsUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2568
    if-nez p1, :cond_0

    .line 2569
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2571
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2572
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->settingsUrl_:Ljava/lang/Object;

    .line 2573
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2574
    return-object p0
.end method

.method public setVisibility(Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2868
    if-nez p1, :cond_0

    .line 2869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2871
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->bitField0_:I

    .line 2872
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->visibility_:Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Visibility;

    .line 2873
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryEntry$Builder;->onChanged()V

    .line 2874
    return-object p0
.end method
