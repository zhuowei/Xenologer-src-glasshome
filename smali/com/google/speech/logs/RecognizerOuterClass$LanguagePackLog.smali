.class public final Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguagePackLog"
.end annotation


# static fields
.field public static final LOCALE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLocale:Z

.field private hasVersion:Z

.field private locale_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 1023
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 965
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1077
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->clearLocale()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1003
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->clearVersion()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 1004
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1005
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale:Z

    .line 980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 981
    return-object p0
.end method

.method public clearVersion()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion:Z

    .line 997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 998
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getSerializedSize()I

    .line 1030
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1040
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1041
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1044
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->cachedSize:I

    .line 1045
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x1

    return v0
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
    .line 962
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1054
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1058
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    :sswitch_0
    return-object p0

    .line 1064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    goto :goto_0

    .line 1068
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    goto :goto_0

    .line 1054
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale:Z

    .line 975
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->locale_:Ljava/lang/String;

    .line 976
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion:Z

    .line 992
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->version_:Ljava/lang/String;

    .line 993
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
    .line 1015
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1021
    :cond_1
    return-void
.end method
