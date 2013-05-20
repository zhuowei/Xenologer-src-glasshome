.class public final Lcom/google/majel/proto/ActionProtos$Email;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x5

.field public static final CC_FIELD_NUMBER:I = 0x3

.field public static final SUBJECT_FIELD_NUMBER:I = 0x4

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private cc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private hasBody:Z

.field private hasSubject:Z

.field private subject_:Ljava/lang/String;

.field private to_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 612
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    .line 645
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    .line 679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 740
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    .line 608
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Email;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Email;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Email;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Email;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 814
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Email;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Email;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Email;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Email;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Email;

    return-object v0
.end method


# virtual methods
.method public addCc(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "value"

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    return-object p0
.end method

.method public addTo(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "value"

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->clearTo()Lcom/google/majel/proto/ActionProtos$Email;

    .line 712
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->clearCc()Lcom/google/majel/proto/ActionProtos$Email;

    .line 713
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->clearSubject()Lcom/google/majel/proto/ActionProtos$Email;

    .line 714
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->clearBody()Lcom/google/majel/proto/ActionProtos$Email;

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    .line 716
    return-object p0
.end method

.method public clearBody()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->hasBody:Z

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 707
    return-object p0
.end method

.method public clearCc()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 672
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    .line 673
    return-object p0
.end method

.method public clearSubject()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->hasSubject:Z

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public clearTo()Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1

    .prologue
    .line 639
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    .line 640
    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    if-gez v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getSerializedSize()I

    .line 747
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    return v0
.end method

.method public getCc(I)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "index"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0
.end method

.method public getCcCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

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
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 752
    const/4 v2, 0x0

    .line 753
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getToList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    .line 754
    .local v0, element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 757
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getCcList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    .line 758
    .restart local v0       #element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 761
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->hasSubject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 765
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->hasBody()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 766
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 769
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/ActionProtos$Email;->cachedSize:I

    .line 770
    return v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    return-object v0
.end method

.method public getTo(I)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "index"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0
.end method

.method public getToCount()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

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
            "Lcom/google/majel/proto/ActionProtos$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->hasBody:Z

    return v0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->hasSubject:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 779
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 783
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$Email;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    :sswitch_0
    return-object p0

    .line 789
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    .line 790
    .local v1, value:Lcom/google/majel/proto/ActionProtos$Contact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 791
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Email;->addTo(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Email;

    goto :goto_0

    .line 795
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Contact;
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    .line 796
    .restart local v1       #value:Lcom/google/majel/proto/ActionProtos$Contact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 797
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Email;->addCc(Lcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Email;

    goto :goto_0

    .line 801
    .end local v1           #value:Lcom/google/majel/proto/ActionProtos$Contact;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionProtos$Email;->setSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Email;

    goto :goto_0

    .line 805
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionProtos$Email;->setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Email;

    goto :goto_0

    .line 779
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
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
    .line 605
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Email;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Email;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "value"

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->hasBody:Z

    .line 701
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Email;->body_:Ljava/lang/String;

    .line 702
    return-object p0
.end method

.method public setCc(ILcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 655
    if-nez p2, :cond_0

    .line 656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->cc_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "value"

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->hasSubject:Z

    .line 684
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Email;->subject_:Ljava/lang/String;

    .line 685
    return-object p0
.end method

.method public setTo(ILcom/google/majel/proto/ActionProtos$Contact;)Lcom/google/majel/proto/ActionProtos$Email;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 622
    if-nez p2, :cond_0

    .line 623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Email;->to_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
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
    .line 726
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getToList()Ljava/util/List;

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

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    .line 727
    .local v0, element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 729
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getCcList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    .line 730
    .restart local v0       #element:Lcom/google/majel/proto/ActionProtos$Contact;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 732
    .end local v0           #element:Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 733
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 735
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->hasBody()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 736
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Email;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 738
    :cond_3
    return-void
.end method
