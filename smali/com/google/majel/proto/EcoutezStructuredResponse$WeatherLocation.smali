.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherLocation"
.end annotation


# static fields
.field public static final CITY_FIELD_NUMBER:I = 0x2

.field public static final FORMATTED_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private formattedAddress_:Ljava/lang/String;

.field private hasCity:Z

.field private hasFormattedAddress:Z

.field private hasTimeZone:Z

.field private timeZone_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->formattedAddress_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->city_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->timeZone_:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->clearFormattedAddress()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 65
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->clearCity()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 66
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->clearTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->cachedSize:I

    .line 68
    return-object p0
.end method

.method public clearCity()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasCity:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->city_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public clearFormattedAddress()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasFormattedAddress:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->formattedAddress_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasTimeZone:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->timeZone_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->cachedSize:I

    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getSerializedSize()I

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->formattedAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasFormattedAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasTimeZone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->cachedSize:I

    .line 115
    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasCity:Z

    return v0
.end method

.method public hasFormattedAddress()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasFormattedAddress:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasTimeZone:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 124
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :sswitch_0
    return-object p0

    .line 134
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->setFormattedAddress(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->setCity(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    goto :goto_0

    .line 142
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->setTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    goto :goto_0

    .line 124
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;

    move-result-object v0

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasCity:Z

    .line 37
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->city_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setFormattedAddress(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasFormattedAddress:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->formattedAddress_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasTimeZone:Z

    .line 54
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->timeZone_:Ljava/lang/String;

    .line 55
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
    .line 78
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasFormattedAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->hasTimeZone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$WeatherLocation;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 87
    :cond_2
    return-void
.end method
