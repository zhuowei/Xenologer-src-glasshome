.class public final Lcom/google/majel/proto/ActionV2Protos$HelpAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HelpAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    }
.end annotation


# static fields
.field public static final FEATURE_FIELD_NUMBER:I = 0x3

.field public static final INTRODUCTION_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private feature_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private hasIntroduction:Z

.field private hasTitle:Z

.field private introduction_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

.field private title_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8353
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9015
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9035
    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9054
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    .line 9111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    .line 8353
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9185
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9179
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    return-object v0
.end method


# virtual methods
.method public addFeature(Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9071
    if-nez p1, :cond_0

    .line 9072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9074
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    .line 9077
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9078
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1

    .prologue
    .line 9086
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->clearTitle()Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 9087
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->clearIntroduction()Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 9088
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->clearFeature()Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    .line 9089
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    .line 9090
    return-object p0
.end method

.method public clearFeature()Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1

    .prologue
    .line 9081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    .line 9082
    return-object p0
.end method

.method public clearIntroduction()Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1

    .prologue
    .line 9047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasIntroduction:Z

    .line 9048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9049
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1

    .prologue
    .line 9027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasTitle:Z

    .line 9028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9029
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9114
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 9116
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getSerializedSize()I

    .line 9118
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    return v0
.end method

.method public getFeature(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    .locals 1
    .parameter "index"

    .prologue
    .line 9061
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    return-object v0
.end method

.method public getFeatureCount()I
    .locals 1

    .prologue
    .line 9059
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFeatureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9057
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    return-object v0
.end method

.method public getIntroduction()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 9037
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 9123
    const/4 v2, 0x0

    .line 9124
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9125
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getTitle()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9128
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasIntroduction()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9129
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getIntroduction()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 9132
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getFeatureList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 9133
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 9136
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->cachedSize:I

    .line 9137
    return v2
.end method

.method public getTitle()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    .locals 1

    .prologue
    .line 9017
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    return-object v0
.end method

.method public hasIntroduction()Z
    .locals 1

    .prologue
    .line 9036
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasIntroduction:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 9016
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9094
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9146
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9150
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9151
    :sswitch_0
    return-object p0

    .line 9156
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    .line 9157
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9158
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->setTitle(Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    goto :goto_0

    .line 9162
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;-><init>()V

    .line 9163
    .restart local v1       #value:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9164
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->setIntroduction(Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    goto :goto_0

    .line 9168
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;-><init>()V

    .line 9169
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9170
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->addFeature(Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    goto :goto_0

    .line 9146
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
    .line 8350
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;

    move-result-object v0

    return-object v0
.end method

.method public setFeature(ILcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9064
    if-nez p2, :cond_0

    .line 9065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9067
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->feature_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9068
    return-object p0
.end method

.method public setIntroduction(Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9039
    if-nez p1, :cond_0

    .line 9040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9042
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasIntroduction:Z

    .line 9043
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->introduction_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9044
    return-object p0
.end method

.method public setTitle(Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 9019
    if-nez p1, :cond_0

    .line 9020
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9022
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasTitle:Z

    .line 9023
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->title_:Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    .line 9024
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
    .line 9100
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9101
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getTitle()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9103
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->hasIntroduction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9104
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getIntroduction()Lcom/google/majel/proto/ActionV2Protos$TranslationConsoleString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9106
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction;->getFeatureList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;

    .line 9107
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 9109
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
    :cond_2
    return-void
.end method
