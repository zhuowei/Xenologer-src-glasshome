.class public final Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$HelpAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    }
.end annotation


# static fields
.field public static final EXAMPLE_FIELD_NUMBER:I = 0x2

.field public static final HEADLINE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private example_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;",
            ">;"
        }
    .end annotation
.end field

.field private hasHeadline:Z

.field private headline_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8358
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 8890
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    .line 8943
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    .line 8358
    return-void
.end method


# virtual methods
.method public addExample(Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .parameter "value"

    .prologue
    .line 8907
    if-nez p1, :cond_0

    .line 8908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8910
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    .line 8913
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8914
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1

    .prologue
    .line 8922
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->clearHeadline()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 8923
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->clearExample()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 8924
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    .line 8925
    return-object p0
.end method

.method public clearExample()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1

    .prologue
    .line 8917
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    .line 8918
    return-object p0
.end method

.method public clearHeadline()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1

    .prologue
    .line 8883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->hasHeadline:Z

    .line 8884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 8885
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8946
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    if-gez v0, :cond_0

    .line 8948
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->getSerializedSize()I

    .line 8950
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    return v0
.end method

.method public getExample(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "index"

    .prologue
    .line 8897
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    return-object v0
.end method

.method public getExampleCount()I
    .locals 1

    .prologue
    .line 8895
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExampleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8893
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    return-object v0
.end method

.method public getHeadline()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 8873
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 8955
    const/4 v2, 0x0

    .line 8956
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->hasHeadline()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8957
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->getHeadline()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8960
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->getExampleList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8961
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 8964
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->cachedSize:I

    .line 8965
    return v2
.end method

.method public hasHeadline()Z
    .locals 1

    .prologue
    .line 8872
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->hasHeadline:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8929
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8974
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8978
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8979
    :sswitch_0
    return-object p0

    .line 8984
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    .line 8985
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8986
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->setHeadline(Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    goto :goto_0

    .line 8990
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    .line 8991
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8992
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->addExample(Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    goto :goto_0

    .line 8974
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
    .line 8355
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9007
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9001
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    return-object v0
.end method

.method public setExample(ILcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8900
    if-nez p2, :cond_0

    .line 8901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8903
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->example_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8904
    return-object p0
.end method

.method public setHeadline(Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .parameter "value"

    .prologue
    .line 8875
    if-nez p1, :cond_0

    .line 8876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8878
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->hasHeadline:Z

    .line 8879
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->headline_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 8880
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
    .line 8935
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->hasHeadline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8936
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->getHeadline()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8938
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;->getExampleList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8939
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 8941
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    :cond_1
    return-void
.end method
