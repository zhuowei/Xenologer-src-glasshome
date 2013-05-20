.class public final Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenURLAction"
.end annotation


# static fields
.field public static final DISPLAY_URL_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private displayUrl_:Ljava/lang/String;

.field private hasDisplayUrl:Z

.field private hasName:Z

.field private hasUrl:Z

.field private name_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6087
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6092
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 6109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 6126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 6166
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    .line 6087
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6234
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6228
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 6141
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->clearUrl()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 6142
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->clearDisplayUrl()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 6143
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->clearName()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 6144
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    .line 6145
    return-object p0
.end method

.method public clearDisplayUrl()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 6118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasDisplayUrl:Z

    .line 6119
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 6120
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 6135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasName:Z

    .line 6136
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 6137
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 6101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasUrl:Z

    .line 6102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 6103
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6169
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 6171
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getSerializedSize()I

    .line 6173
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    return v0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6110
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6127
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6178
    const/4 v0, 0x0

    .line 6179
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6180
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6183
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasDisplayUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6184
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getDisplayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6187
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6188
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6191
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    .line 6192
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6093
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayUrl()Z
    .locals 1

    .prologue
    .line 6111
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasDisplayUrl:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 6128
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasName:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 6094
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6149
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6201
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6205
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6206
    :sswitch_0
    return-object p0

    .line 6211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    goto :goto_0

    .line 6215
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->setDisplayUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    goto :goto_0

    .line 6219
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    goto :goto_0

    .line 6201
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6084
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasDisplayUrl:Z

    .line 6114
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 6115
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasName:Z

    .line 6131
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 6132
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasUrl:Z

    .line 6097
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 6098
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6155
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6156
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6158
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasDisplayUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6159
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getDisplayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6161
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6162
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6164
    :cond_2
    return-void
.end method
