.class public final Lcom/google/majel/proto/ActionProtos$TvControl;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvControl"
.end annotation


# static fields
.field public static final ACTION_CHANGE_CHANNEL:I = 0x0

.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final ACTION_LOWER_VOLUME:I = 0x2

.field public static final ACTION_RAISE_VOLUME:I = 0x1

.field public static final CHANNEL_FIELD_NUMBER:I = 0x2


# instance fields
.field private action_:I

.field private cachedSize:I

.field private channel_:I

.field private hasAction:Z

.field private hasChannel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 828
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 838
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 855
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 891
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    .line 828
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$TvControl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$TvControl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 945
    new-instance v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$TvControl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->clearAction()Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 871
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->clearChannel()Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 872
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    .line 873
    return-object p0
.end method

.method public clearAction()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 847
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->hasAction:Z

    .line 848
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 849
    return-object p0
.end method

.method public clearChannel()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 864
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->hasChannel:Z

    .line 865
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 866
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    if-gez v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->getSerializedSize()I

    .line 898
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->hasAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->getAction()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 908
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->hasChannel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->getChannel()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 912
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    .line 913
    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->hasAction:Z

    return v0
.end method

.method public hasChannel()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->hasChannel:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 922
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 926
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$TvControl;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 927
    :sswitch_0
    return-object p0

    .line 932
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$TvControl;->setAction(I)Lcom/google/majel/proto/ActionProtos$TvControl;

    goto :goto_0

    .line 936
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$TvControl;->setChannel(I)Lcom/google/majel/proto/ActionProtos$TvControl;

    goto :goto_0

    .line 922
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 825
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$TvControl;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$TvControl;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .parameter "value"

    .prologue
    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->hasAction:Z

    .line 843
    iput p1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 844
    return-object p0
.end method

.method public setChannel(I)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .parameter "value"

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->hasChannel:Z

    .line 860
    iput p1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 861
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
    .line 883
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->getAction()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->getChannel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 889
    :cond_1
    return-void
.end method
