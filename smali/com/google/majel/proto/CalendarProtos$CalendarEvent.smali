.class public final Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CalendarProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CalendarProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;,
        Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    }
.end annotation


# static fields
.field public static final ATTENDEE_FIELD_NUMBER:I = 0x7

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final END_TIME_FIELD_NUMBER:I = 0x6

.field public static final HTML_LINK_FIELD_NUMBER:I = 0x1

.field public static final IS_ALL_DAY_FIELD_NUMBER:I = 0x9

.field public static final LOCATION_FIELD_NUMBER:I = 0x4

.field public static final OTHER_ATTENDEES_EXCLUDED_FIELD_NUMBER:I = 0x8

.field public static final REMINDER_FIELD_NUMBER:I = 0xa

.field public static final START_TIME_FIELD_NUMBER:I = 0x5

.field public static final SUMMARY_FIELD_NUMBER:I = 0x2


# instance fields
.field private attendee_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private endTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

.field private hasDescription:Z

.field private hasEndTime:Z

.field private hasHtmlLink:Z

.field private hasIsAllDay:Z

.field private hasLocation:Z

.field private hasOtherAttendeesExcluded:Z

.field private hasStartTime:Z

.field private hasSummary:Z

.field private htmlLink_:Ljava/lang/String;

.field private isAllDay_:Z

.field private location_:Ljava/lang/String;

.field private otherAttendeesExcluded_:Z

.field private reminder_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private startTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

.field private summary_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 648
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 665
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 699
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 716
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 736
    iput-object v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 756
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    .line 806
    iput-boolean v1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 822
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    .line 907
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    .line 262
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1033
    new-instance v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    invoke-direct {v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    return-object v0
.end method


# virtual methods
.method public addAttendee(Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 789
    if-nez p1, :cond_0

    .line 790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    return-object p0
.end method

.method public addReminder(Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 839
    if-nez p1, :cond_0

    .line 840
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearHtmlLink()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 855
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearSummary()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 856
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearDescription()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 857
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearLocation()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 858
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearStartTime()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 859
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearEndTime()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 860
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearIsAllDay()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 861
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearAttendee()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 862
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearOtherAttendeesExcluded()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 863
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->clearReminder()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    .line 864
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    .line 865
    return-object p0
.end method

.method public clearAttendee()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 799
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    .line 800
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasDescription:Z

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 693
    return-object p0
.end method

.method public clearEndTime()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasEndTime:Z

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 750
    return-object p0
.end method

.method public clearHtmlLink()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasHtmlLink:Z

    .line 658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 659
    return-object p0
.end method

.method public clearIsAllDay()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 765
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasIsAllDay:Z

    .line 766
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 767
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasLocation:Z

    .line 709
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 710
    return-object p0
.end method

.method public clearOtherAttendeesExcluded()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasOtherAttendeesExcluded:Z

    .line 816
    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 817
    return-object p0
.end method

.method public clearReminder()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 849
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    .line 850
    return-object p0
.end method

.method public clearStartTime()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasStartTime:Z

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 730
    return-object p0
.end method

.method public clearSummary()Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasSummary:Z

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 676
    return-object p0
.end method

.method public getAttendee(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    .locals 1
    .parameter "index"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    return-object v0
.end method

.method public getAttendeeCount()I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttendeeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getSerializedSize()I

    .line 914
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    return-object v0
.end method

.method public getHtmlLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllDay()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherAttendeesExcluded()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    return v0
.end method

.method public getReminder(I)Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    .locals 1
    .parameter "index"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    return-object v0
.end method

.method public getReminderCount()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReminderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 919
    const/4 v2, 0x0

    .line 920
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasHtmlLink()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 921
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getHtmlLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasSummary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 928
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasDescription()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 929
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 932
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 933
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 936
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasStartTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 937
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getStartTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 940
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasEndTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 941
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getEndTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 944
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getAttendeeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 945
    .local v0, element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 948
    .end local v0           #element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasOtherAttendeesExcluded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 949
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getOtherAttendeesExcluded()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 952
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasIsAllDay()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 953
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getIsAllDay()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 956
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getReminderList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 957
    .local v0, element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    const/16 v3, 0xa

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 960
    .end local v0           #element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    :cond_9
    iput v2, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->cachedSize:I

    .line 961
    return v2
.end method

.method public getStartTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasDescription:Z

    return v0
.end method

.method public hasEndTime()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasEndTime:Z

    return v0
.end method

.method public hasHtmlLink()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasHtmlLink:Z

    return v0
.end method

.method public hasIsAllDay()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasIsAllDay:Z

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasLocation:Z

    return v0
.end method

.method public hasOtherAttendeesExcluded()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasOtherAttendeesExcluded:Z

    return v0
.end method

.method public hasStartTime()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasStartTime:Z

    return v0
.end method

.method public hasSummary()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasSummary:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 970
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 974
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 975
    :sswitch_0
    return-object p0

    .line 980
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setHtmlLink(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 984
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setSummary(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 988
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 992
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setLocation(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 996
    :sswitch_5
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    .line 997
    .local v1, value:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 998
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setStartTime(Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 1002
    .end local v1           #value:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;-><init>()V

    .line 1003
    .restart local v1       #value:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1004
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setEndTime(Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 1008
    .end local v1           #value:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;-><init>()V

    .line 1009
    .local v1, value:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1010
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->addAttendee(Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 1014
    .end local v1           #value:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setOtherAttendeesExcluded(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 1018
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->setIsAllDay(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 1022
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    invoke-direct {v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;-><init>()V

    .line 1023
    .local v1, value:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1024
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->addReminder(Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    goto :goto_0

    .line 970
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
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
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
    .line 259
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAttendee(ILcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 782
    if-nez p2, :cond_0

    .line 783
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->attendee_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 786
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasDescription:Z

    .line 687
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->description_:Ljava/lang/String;

    .line 688
    return-object p0
.end method

.method public setEndTime(Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 743
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasEndTime:Z

    .line 744
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->endTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 745
    return-object p0
.end method

.method public setHtmlLink(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasHtmlLink:Z

    .line 653
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->htmlLink_:Ljava/lang/String;

    .line 654
    return-object p0
.end method

.method public setIsAllDay(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasIsAllDay:Z

    .line 761
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->isAllDay_:Z

    .line 762
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasLocation:Z

    .line 704
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->location_:Ljava/lang/String;

    .line 705
    return-object p0
.end method

.method public setOtherAttendeesExcluded(Z)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasOtherAttendeesExcluded:Z

    .line 811
    iput-boolean p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->otherAttendeesExcluded_:Z

    .line 812
    return-object p0
.end method

.method public setReminder(ILcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 832
    if-nez p2, :cond_0

    .line 833
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->reminder_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 836
    return-object p0
.end method

.method public setStartTime(Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 723
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasStartTime:Z

    .line 724
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->startTime_:Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    .line 725
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/majel/proto/CalendarProtos$CalendarEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasSummary:Z

    .line 670
    iput-object p1, p0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->summary_:Ljava/lang/String;

    .line 671
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
    .line 875
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasHtmlLink()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getHtmlLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasSummary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 884
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 885
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 887
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasStartTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 888
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getStartTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 890
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasEndTime()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 891
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getEndTime()Lcom/google/majel/proto/CalendarProtos$CalendarDateTime;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 893
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getAttendeeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;

    .line 894
    .local v0, element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 896
    .end local v0           #element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Attendee;
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasOtherAttendeesExcluded()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 897
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getOtherAttendeesExcluded()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 899
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->hasIsAllDay()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 900
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getIsAllDay()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 902
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/CalendarProtos$CalendarEvent;->getReminderList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;

    .line 903
    .local v0, element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 905
    .end local v0           #element:Lcom/google/majel/proto/CalendarProtos$CalendarEvent$Reminder;
    :cond_9
    return-void
.end method
