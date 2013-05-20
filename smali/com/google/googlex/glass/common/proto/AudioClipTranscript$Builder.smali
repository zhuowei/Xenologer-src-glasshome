.class public final Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AudioClipTranscript.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/AudioClipTranscriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/AudioClipTranscriptOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 941
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->maybeForceBuilderInitialization()V

    .line 942
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1070
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 947
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->maybeForceBuilderInitialization()V

    .line 948
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 955
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTokenIsMutable()V
    .locals 2

    .prologue
    .line 1073
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 1075
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 1077
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 929
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1298
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 1299
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    iget v3, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 950
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 953
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllToken(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1210
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1213
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1217
    :goto_0
    return-object p0

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addToken(ILcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1196
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1197
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1198
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1202
    :goto_0
    return-object p0

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addToken(ILcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1165
    if-nez p2, :cond_0

    .line 1166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1168
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1169
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1170
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1174
    :goto_0
    return-object p0

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addToken(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1182
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1188
    :goto_0
    return-object p0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addToken(Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1148
    if-nez p1, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1151
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1152
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1157
    :goto_0
    return-object p0

    .line 1155
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTokenBuilder()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 2

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    return-object v0
.end method

.method public addTokenBuilder(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 2

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    .line 984
    .local v0, result:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 987
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 4

    .prologue
    .line 991
    new-instance v1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/AudioClipTranscript$1;)V

    .line 992
    .local v1, result:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 993
    .local v0, from_bitField0_:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v2, :cond_1

    .line 994
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 995
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 996
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 998
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1302(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;Ljava/util/List;)Ljava/util/List;

    .line 1002
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onBuilt()V

    .line 1003
    return-object v1

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1302(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 960
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 961
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 962
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 966
    :goto_0
    return-object p0

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clear()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearToken()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 1225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 1226
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1230
    :goto_0
    return-object p0

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 2

    .prologue
    .line 970
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->create()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

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
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->clone()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    .locals 1

    .prologue
    .line 979
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getToken(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;
    .locals 1
    .parameter "index"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    .line 1109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    goto :goto_0
.end method

.method public getTokenBuilder(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;

    return-object v0
.end method

.method public getTokenBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTokenCount()I
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1099
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1089
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenOrBuilder(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;

    .line 1259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;

    goto :goto_0
.end method

.method public getTokenOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/AudioClipTranscript$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 934
    sget-object v0, Lcom/google/googlex/glass/common/proto/AudioClip;->internal_static_googlex_glass_common_proto_AudioClipTranscript_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    const-class v2, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1016
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1044
    :goto_0
    return-object p0

    .line 1017
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 1018
    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 1021
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 1026
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1043
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1023
    :cond_2
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1024
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1029
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1031
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1032
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1033
    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    .line 1034
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->bitField0_:I

    .line 1035
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1039
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->token_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->access$1300(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v2, 0x0

    .line 1057
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/AudioClipTranscript;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    if-eqz v2, :cond_0

    .line 1063
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    .line 1066
    :cond_0
    return-object p0

    .line 1058
    :catch_0
    move-exception v1

    .line 1059
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    move-object v2, v0

    .line 1060
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1063
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1007
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    if-eqz v0, :cond_0

    .line 1008
    check-cast p1, Lcom/google/googlex/glass/common/proto/AudioClipTranscript;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/AudioClipTranscript;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object p0

    .line 1011
    .end local p0
    :goto_0
    return-object p0

    .line 1010
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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 923
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 923
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeToken(I)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1237
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1238
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1239
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1243
    :goto_0
    return-object p0

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setToken(ILcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1135
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1136
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1137
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1141
    :goto_0
    return-object p0

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token$Builder;->build()Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setToken(ILcom/google/googlex/glass/common/proto/AudioClipTranscript$Token;)Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1118
    if-nez p2, :cond_0

    .line 1119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1121
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->ensureTokenIsMutable()V

    .line 1122
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->token_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1123
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->onChanged()V

    .line 1127
    :goto_0
    return-object p0

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AudioClipTranscript$Builder;->tokenBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
