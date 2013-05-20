.class public final Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AuthInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AuthInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthInfo"
.end annotation


# static fields
.field public static final ADDITIONAL_GAIA_ID_FIELD_NUMBER:I = 0x5

.field public static final COOKIE_FIELD_NUMBER:I = 0x4

.field public static final EMAIL_FIELD_NUMBER:I = 0x1

.field public static final GAIA_ID_FIELD_NUMBER:I = 0x2

.field public static final ZWIEBACK_UID_FIELD_NUMBER:I = 0x3


# instance fields
.field private additionalGaiaId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private cookie_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CookieProtos$MajelCookie;",
            ">;"
        }
    .end annotation
.end field

.field private email_:Ljava/lang/String;

.field private gaiaId_:J

.field private hasEmail:Z

.field private hasGaiaId:Z

.field private hasZwiebackUid:Z

.field private zwiebackUid_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 32
    iput-wide v1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    .line 76
    iput-wide v1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    check-cast v0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    return-object v0
.end method


# virtual methods
.method public addAdditionalGaiaId(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public addCookie(Lcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->clearEmail()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 125
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->clearGaiaId()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 126
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->clearAdditionalGaiaId()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 127
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->clearZwiebackUid()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 128
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->clearCookie()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    .line 130
    return-object p0
.end method

.method public clearAdditionalGaiaId()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    .line 70
    return-object p0
.end method

.method public clearCookie()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    .line 120
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasEmail:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearGaiaId()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasGaiaId:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 43
    return-object p0
.end method

.method public clearZwiebackUid()Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasZwiebackUid:Z

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 87
    return-object p0
.end method

.method public getAdditionalGaiaId(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdditionalGaiaIdCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAdditionalGaiaIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getSerializedSize()I

    .line 164
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    return v0
.end method

.method public getCookie(I)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "index"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    return-object v0
.end method

.method public getCookieCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCookieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CookieProtos$MajelCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 169
    const/4 v4, 0x0

    .line 170
    .local v4, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasEmail()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasGaiaId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getGaiaId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasZwiebackUid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getZwiebackUid()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getCookieList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 183
    .local v1, element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    const/4 v5, 0x4

    invoke-static {v5, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 187
    .end local v1           #element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_3
    const/4 v0, 0x0

    .line 188
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getAdditionalGaiaIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 189
    .local v1, element:J
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 192
    .end local v1           #element:J
    :cond_4
    add-int/2addr v4, v0

    .line 193
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getAdditionalGaiaIdList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 195
    iput v4, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cachedSize:I

    .line 196
    return v4
.end method

.method public getZwiebackUid()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    return-wide v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasEmail:Z

    return v0
.end method

.method public hasGaiaId()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasGaiaId:Z

    return v0
.end method

.method public hasZwiebackUid()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasZwiebackUid:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :sswitch_0
    return-object p0

    .line 215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->setEmail(Ljava/lang/String;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    goto :goto_0

    .line 219
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->setGaiaId(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    goto :goto_0

    .line 223
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->setZwiebackUid(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    goto :goto_0

    .line 227
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    .line 228
    .local v1, value:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->addCookie(Lcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    goto :goto_0

    .line 233
    .end local v1           #value:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->addAdditionalGaiaId(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAdditionalGaiaId(IJ)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->additionalGaiaId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method

.method public setCookie(ILcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->cookie_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasEmail:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->email_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setGaiaId(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasGaiaId:Z

    .line 37
    iput-wide p1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->gaiaId_:J

    .line 38
    return-object p0
.end method

.method public setZwiebackUid(J)Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasZwiebackUid:Z

    .line 81
    iput-wide p1, p0, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->zwiebackUid_:J

    .line 82
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasEmail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasGaiaId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getGaiaId()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->hasZwiebackUid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getZwiebackUid()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getCookieList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 150
    .local v0, element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 152
    .end local v0           #element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/AuthInfoProtos$AuthInfo;->getAdditionalGaiaIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 153
    .local v0, element:J
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    goto :goto_1

    .line 155
    .end local v0           #element:J
    :cond_4
    return-void
.end method
