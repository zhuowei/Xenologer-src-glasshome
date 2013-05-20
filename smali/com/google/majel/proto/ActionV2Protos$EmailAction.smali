.class public final Lcom/google/majel/proto/ActionV2Protos$EmailAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailAction"
.end annotation


# static fields
.field public static final BCC_FIELD_NUMBER:I = 0x3

.field public static final BODY_FIELD_NUMBER:I = 0x5

.field public static final BODY_SPAN_FIELD_NUMBER:I = 0x7

.field public static final CC_FIELD_NUMBER:I = 0x2

.field public static final SUBJECT_FIELD_NUMBER:I = 0x4

.field public static final SUBJECT_SPAN_FIELD_NUMBER:I = 0x6

.field public static final TO_FIELD_NUMBER:I = 0x1


# instance fields
.field private bcc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;",
            ">;"
        }
    .end annotation
.end field

.field private bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private cc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;",
            ">;"
        }
    .end annotation
.end field

.field private hasBody:Z

.field private hasBodySpan:Z

.field private hasSubject:Z

.field private hasSubjectSpan:Z

.field private subjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private subject_:Ljava/lang/String;

.field private to_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3733
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3737
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    .line 3770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    .line 3803
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    .line 3837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 3854
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 3874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 3891
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 3950
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    .line 3733
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4060
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4054
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    return-object v0
.end method


# virtual methods
.method public addBcc(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3820
    if-nez p1, :cond_0

    .line 3821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3823
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    .line 3826
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3827
    return-object p0
.end method

.method public addCc(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3787
    if-nez p1, :cond_0

    .line 3788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3790
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    .line 3793
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3794
    return-object p0
.end method

.method public addTo(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3754
    if-nez p1, :cond_0

    .line 3755
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3757
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    .line 3760
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3761
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3909
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearTo()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3910
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearCc()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3911
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearBcc()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3912
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearSubject()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3913
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearSubjectSpan()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3914
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearBody()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3915
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->clearBodySpan()Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    .line 3916
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    .line 3917
    return-object p0
.end method

.method public clearBcc()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3830
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    .line 3831
    return-object p0
.end method

.method public clearBody()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3883
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBody:Z

    .line 3884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 3885
    return-object p0
.end method

.method public clearBodySpan()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBodySpan:Z

    .line 3904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 3905
    return-object p0
.end method

.method public clearCc()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    .line 3798
    return-object p0
.end method

.method public clearSubject()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubject:Z

    .line 3847
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 3848
    return-object p0
.end method

.method public clearSubjectSpan()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubjectSpan:Z

    .line 3867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 3868
    return-object p0
.end method

.method public clearTo()Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1

    .prologue
    .line 3764
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    .line 3765
    return-object p0
.end method

.method public getBcc(I)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0
.end method

.method public getBccCount()I
    .locals 1

    .prologue
    .line 3808
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBccList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3806
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getBodySpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3953
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 3955
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getSerializedSize()I

    .line 3957
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    return v0
.end method

.method public getCc(I)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0
.end method

.method public getCcCount()I
    .locals 1

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3773
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3962
    const/4 v2, 0x0

    .line 3963
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getToList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3964
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3967
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getCcList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3968
    .restart local v0       #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 3971
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getBccList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3972
    .restart local v0       #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 3975
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3976
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3979
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBody()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3980
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3983
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubjectSpan()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3984
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getSubjectSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3987
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBodySpan()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3988
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getBodySpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3991
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cachedSize:I

    .line 3992
    return v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectSpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getTo(I)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 3744
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0
.end method

.method public getToCount()I
    .locals 1

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 3876
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBody:Z

    return v0
.end method

.method public hasBodySpan()Z
    .locals 1

    .prologue
    .line 3892
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBodySpan:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 3839
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubject:Z

    return v0
.end method

.method public hasSubjectSpan()Z
    .locals 1

    .prologue
    .line 3855
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubjectSpan:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3921
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4001
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4005
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4006
    :sswitch_0
    return-object p0

    .line 4011
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    .line 4012
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4013
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->addTo(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4017
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    .line 4018
    .restart local v1       #value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4019
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->addCc(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4023
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    .line 4024
    .restart local v1       #value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4025
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->addBcc(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4029
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->setSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4033
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4037
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 4038
    .local v1, value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4039
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->setSubjectSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4043
    .end local v1           #value:Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 4044
    .restart local v1       #value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4045
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->setBodySpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    goto :goto_0

    .line 4001
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 3730
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;

    move-result-object v0

    return-object v0
.end method

.method public setBcc(ILcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3813
    if-nez p2, :cond_0

    .line 3814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3816
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bcc_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3817
    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBody:Z

    .line 3879
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->body_:Ljava/lang/String;

    .line 3880
    return-object p0
.end method

.method public setBodySpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3895
    if-nez p1, :cond_0

    .line 3896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3898
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBodySpan:Z

    .line 3899
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 3900
    return-object p0
.end method

.method public setCc(ILcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3780
    if-nez p2, :cond_0

    .line 3781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3783
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->cc_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3784
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubject:Z

    .line 3842
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subject_:Ljava/lang/String;

    .line 3843
    return-object p0
.end method

.method public setSubjectSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3858
    if-nez p1, :cond_0

    .line 3859
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3861
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubjectSpan:Z

    .line 3862
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->subjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 3863
    return-object p0
.end method

.method public setTo(ILcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$EmailAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3747
    if-nez p2, :cond_0

    .line 3748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3750
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->to_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3751
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
    .line 3927
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getToList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3928
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3930
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getCcList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3931
    .restart local v0       #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 3933
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getBccList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3934
    .restart local v0       #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 3936
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3937
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3939
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBody()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3940
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3942
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasSubjectSpan()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3943
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getSubjectSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3945
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->hasBodySpan()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3946
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$EmailAction;->getBodySpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3948
    :cond_6
    return-void
.end method
