.class public final Lcom/google/majel/proto/ActionV2Protos$SMSAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SMSAction"
.end annotation


# static fields
.field public static final CONTACT_FIELD_NUMBER:I = 0x2

.field public static final CONTACT_NAME_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_BODY_FIELD_NUMBER:I = 0x3

.field public static final MESSAGE_BODY_SPAN_FIELD_NUMBER:I = 0x4

.field public static final RECIPIENT_FIELD_NUMBER:I = 0x5


# instance fields
.field private cachedSize:I

.field private contactName_:Ljava/lang/String;

.field private contact_:Lcom/google/majel/proto/ActionV2Protos$ActionContact;

.field private hasContact:Z

.field private hasContactName:Z

.field private hasMessageBody:Z

.field private messageBodySpan_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/SpanProtos$Span;",
            ">;"
        }
    .end annotation
.end field

.field private messageBody_:Ljava/lang/String;

.field private recipient_:Ljava/util/List;
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
    .locals 1

    .prologue
    .line 3479
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3484
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 3501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contact_:Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 3520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    .line 3554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 3570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    .line 3635
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    .line 3479
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3725
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3719
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    return-object v0
.end method


# virtual methods
.method public addMessageBodySpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3587
    if-nez p1, :cond_0

    .line 3588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3590
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    .line 3593
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3594
    return-object p0
.end method

.method public addRecipient(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3537
    if-nez p1, :cond_0

    .line 3538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3540
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    .line 3543
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3544
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 3602
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->clearContactName()Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 3603
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->clearContact()Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 3604
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->clearRecipient()Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 3605
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->clearMessageBody()Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 3606
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->clearMessageBodySpan()Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    .line 3607
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    .line 3608
    return-object p0
.end method

.method public clearContact()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 3513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContact:Z

    .line 3514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contact_:Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 3515
    return-object p0
.end method

.method public clearContactName()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 3493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContactName:Z

    .line 3494
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 3495
    return-object p0
.end method

.method public clearMessageBody()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 3563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasMessageBody:Z

    .line 3564
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 3565
    return-object p0
.end method

.method public clearMessageBodySpan()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 3597
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    .line 3598
    return-object p0
.end method

.method public clearRecipient()Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1

    .prologue
    .line 3547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    .line 3548
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3638
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 3640
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getSerializedSize()I

    .line 3642
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    return v0
.end method

.method public getContact()Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .locals 1

    .prologue
    .line 3503
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contact_:Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    return-object v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBodySpan(I)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .parameter "index"

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getMessageBodySpanCount()I
    .locals 1

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageBodySpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/SpanProtos$Span;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    return-object v0
.end method

.method public getRecipient(I)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 3525
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientList()Ljava/util/List;
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
    .line 3523
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3647
    const/4 v2, 0x0

    .line 3648
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContactName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3649
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getContactName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3652
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContact()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3653
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getContact()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3656
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasMessageBody()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3657
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3660
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getMessageBodySpanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$Span;

    .line 3661
    .local v0, element:Lcom/google/majel/proto/SpanProtos$Span;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3664
    .end local v0           #element:Lcom/google/majel/proto/SpanProtos$Span;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getRecipientList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3665
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 3668
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_4
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->cachedSize:I

    .line 3669
    return v2
.end method

.method public hasContact()Z
    .locals 1

    .prologue
    .line 3502
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContact:Z

    return v0
.end method

.method public hasContactName()Z
    .locals 1

    .prologue
    .line 3486
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContactName:Z

    return v0
.end method

.method public hasMessageBody()Z
    .locals 1

    .prologue
    .line 3556
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasMessageBody:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3612
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3677
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3678
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3682
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3683
    :sswitch_0
    return-object p0

    .line 3688
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->setContactName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    goto :goto_0

    .line 3692
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    .line 3693
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3694
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->setContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    goto :goto_0

    .line 3698
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->setMessageBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    goto :goto_0

    .line 3702
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 3703
    .local v1, value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3704
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->addMessageBodySpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    goto :goto_0

    .line 3708
    .end local v1           #value:Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    .line 3709
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3710
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->addRecipient(Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    goto :goto_0

    .line 3678
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 3476
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;

    move-result-object v0

    return-object v0
.end method

.method public setContact(Lcom/google/majel/proto/ActionV2Protos$ActionContact;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3505
    if-nez p1, :cond_0

    .line 3506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3508
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContact:Z

    .line 3509
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contact_:Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 3510
    return-object p0
.end method

.method public setContactName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContactName:Z

    .line 3489
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->contactName_:Ljava/lang/String;

    .line 3490
    return-object p0
.end method

.method public setMessageBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 3558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasMessageBody:Z

    .line 3559
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBody_:Ljava/lang/String;

    .line 3560
    return-object p0
.end method

.method public setMessageBodySpan(ILcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3580
    if-nez p2, :cond_0

    .line 3581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3583
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->messageBodySpan_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3584
    return-object p0
.end method

.method public setRecipient(ILcom/google/majel/proto/ActionV2Protos$ActionContactGroup;)Lcom/google/majel/proto/ActionV2Protos$SMSAction;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3530
    if-nez p2, :cond_0

    .line 3531
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3533
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3534
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
    .line 3618
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContactName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3619
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3621
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasContact()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3622
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getContact()Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3624
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->hasMessageBody()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3625
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3627
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getMessageBodySpanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$Span;

    .line 3628
    .local v0, element:Lcom/google/majel/proto/SpanProtos$Span;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3630
    .end local v0           #element:Lcom/google/majel/proto/SpanProtos$Span;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SMSAction;->getRecipientList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 3631
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 3633
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    :cond_4
    return-void
.end method
