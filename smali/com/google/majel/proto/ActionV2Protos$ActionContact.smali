.class public final Lcom/google/majel/proto/ActionV2Protos$ActionContact;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionContact"
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x5

.field public static final EMAIL_FIELD_NUMBER:I = 0x3

.field public static final EMBEDDED_ACTION_CONTACT_EXTENSION_FIELD_NUMBER:I = 0x2533256

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PARSED_NAME_FIELD_NUMBER:I = 0x4

.field public static final PHONE_FIELD_NUMBER:I = 0x2

.field public static final RELATIONSHIP_FIELD_NUMBER:I = 0x6


# instance fields
.field private address_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private email_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ContactEmail;",
            ">;"
        }
    .end annotation
.end field

.field private embeddedActionContactExtension_:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

.field private hasEmbeddedActionContactExtension:Z

.field private hasName:Z

.field private hasParsedName:Z

.field private hasRelationship:Z

.field private name_:Ljava/lang/String;

.field private parsedName_:Ljava/lang/String;

.field private phone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private relationship_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1960
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 1981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    .line 2014
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    .line 2047
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    .line 2081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension_:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2174
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    .line 1960
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2282
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2276
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0
.end method


# virtual methods
.method public addAddress(Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 2064
    if-nez p1, :cond_0

    .line 2065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    .line 2070
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2071
    return-object p0
.end method

.method public addEmail(Lcom/google/majel/proto/ActionV2Protos$ContactEmail;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 2031
    if-nez p1, :cond_0

    .line 2032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    .line 2037
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2038
    return-object p0
.end method

.method public addPhone(Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 1998
    if-nez p1, :cond_0

    .line 1999
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2001
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2002
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    .line 2004
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2005
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearName()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2134
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearPhone()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2135
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearEmail()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2136
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearAddress()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2137
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearRelationship()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2138
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearParsedName()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2139
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->clearEmbeddedActionContactExtension()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    .line 2141
    return-object p0
.end method

.method public clearAddress()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2074
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    .line 2075
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2041
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    .line 2042
    return-object p0
.end method

.method public clearEmbeddedActionContactExtension()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasEmbeddedActionContactExtension:Z

    .line 2128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension_:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2129
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasName:Z

    .line 1975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 1976
    return-object p0
.end method

.method public clearParsedName()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasParsedName:Z

    .line 2108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2109
    return-object p0
.end method

.method public clearPhone()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2008
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    .line 2009
    return-object p0
.end method

.method public clearRelationship()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 2090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasRelationship:Z

    .line 2091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2092
    return-object p0
.end method

.method public getAddress(I)Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    .locals 1
    .parameter "index"

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    return-object v0
.end method

.method public getAddressCount()I
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2177
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    if-gez v0, :cond_0

    .line 2179
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getSerializedSize()I

    .line 2181
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    return v0
.end method

.method public getEmail(I)Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    .locals 1
    .parameter "index"

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    return-object v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ContactEmail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    return-object v0
.end method

.method public getEmbeddedActionContactExtension()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension_:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone(I)Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    .locals 1
    .parameter "index"

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2186
    const/4 v2, 0x0

    .line 2187
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2188
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2191
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getPhoneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 2192
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2195
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getEmailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 2196
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 2199
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasParsedName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2200
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getParsedName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2203
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getAddressList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 2204
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 2207
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasRelationship()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2208
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getRelationship()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2211
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasEmbeddedActionContactExtension()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2212
    const v3, 0x2533256

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getEmbeddedActionContactExtension()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2215
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->cachedSize:I

    .line 2216
    return v2
.end method

.method public hasEmbeddedActionContactExtension()Z
    .locals 1

    .prologue
    .line 2116
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasEmbeddedActionContactExtension:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1967
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasName:Z

    return v0
.end method

.method public hasParsedName()Z
    .locals 1

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasParsedName:Z

    return v0
.end method

.method public hasRelationship()Z
    .locals 1

    .prologue
    .line 2083
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasRelationship:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2145
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2224
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2225
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2229
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2230
    :sswitch_0
    return-object p0

    .line 2235
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2239
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;-><init>()V

    .line 2240
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2241
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->addPhone(Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2245
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;-><init>()V

    .line 2246
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2247
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->addEmail(Lcom/google/majel/proto/ActionV2Protos$ContactEmail;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2251
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->setParsedName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2255
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;-><init>()V

    .line 2256
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2257
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->addAddress(Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2261
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->setRelationship(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2265
    :sswitch_7
    new-instance v1, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;-><init>()V

    .line 2266
    .local v1, value:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2267
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->setEmbeddedActionContactExtension(Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2225
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x129992b2 -> :sswitch_7
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
    .line 1957
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(ILcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2057
    if-nez p2, :cond_0

    .line 2058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->address_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2061
    return-object p0
.end method

.method public setEmail(ILcom/google/majel/proto/ActionV2Protos$ContactEmail;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2024
    if-nez p2, :cond_0

    .line 2025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->email_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2028
    return-object p0
.end method

.method public setEmbeddedActionContactExtension(Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 2119
    if-nez p1, :cond_0

    .line 2120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasEmbeddedActionContactExtension:Z

    .line 2123
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->embeddedActionContactExtension_:Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 2124
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 1969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasName:Z

    .line 1970
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->name_:Ljava/lang/String;

    .line 1971
    return-object p0
.end method

.method public setParsedName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 2102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasParsedName:Z

    .line 2103
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->parsedName_:Ljava/lang/String;

    .line 2104
    return-object p0
.end method

.method public setPhone(ILcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1991
    if-nez p2, :cond_0

    .line 1992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->phone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1995
    return-object p0
.end method

.method public setRelationship(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 2085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasRelationship:Z

    .line 2086
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->relationship_:Ljava/lang/String;

    .line 2087
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2151
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2152
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2154
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getPhoneList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;

    .line 2155
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 2157
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ContactPhoneNumber;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getEmailList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactEmail;

    .line 2158
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 2160
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ContactEmail;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasParsedName()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2161
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getParsedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2163
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getAddressList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;

    .line 2164
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 2166
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ContactPostalAddress;
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasRelationship()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2167
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getRelationship()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2169
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->hasEmbeddedActionContactExtension()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2170
    const v2, 0x2533256

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->getEmbeddedActionContactExtension()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2172
    :cond_6
    return-void
.end method
