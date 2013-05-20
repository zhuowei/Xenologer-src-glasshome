.class public final Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalculatorResult"
.end annotation


# static fields
.field public static final LEFT_FIELD_NUMBER:I = 0x1

.field public static final RIGHT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLeft:Z

.field private hasRight:Z

.field private left_:Ljava/lang/String;

.field private right_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 922
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 939
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 975
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    .line 917
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1029
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->clearLeft()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 955
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->clearRight()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    .line 956
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    .line 957
    return-object p0
.end method

.method public clearLeft()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasLeft:Z

    .line 932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 933
    return-object p0
.end method

.method public clearRight()Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1

    .prologue
    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasRight:Z

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 950
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getSerializedSize()I

    .line 982
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    return v0
.end method

.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 989
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getLeft()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasRight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getRight()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->cachedSize:I

    .line 997
    return v0
.end method

.method public hasLeft()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasLeft:Z

    return v0
.end method

.method public hasRight()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasRight:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1005
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1006
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1010
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    :sswitch_0
    return-object p0

    .line 1016
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->setLeft(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    goto :goto_0

    .line 1020
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->setRight(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    goto :goto_0

    .line 1006
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 914
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;

    move-result-object v0

    return-object v0
.end method

.method public setLeft(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasLeft:Z

    .line 927
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->left_:Ljava/lang/String;

    .line 928
    return-object p0
.end method

.method public setRight(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasRight:Z

    .line 944
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->right_:Ljava/lang/String;

    .line 945
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
    .line 967
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getLeft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->hasRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$CalculatorResult;->getRight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 973
    :cond_1
    return-void
.end method
