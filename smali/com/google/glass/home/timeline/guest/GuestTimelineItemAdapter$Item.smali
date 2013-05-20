.class final enum Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
.super Ljava/lang/Enum;
.source "GuestTimelineItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum EMAIL:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum MONTEREY_WEATHER:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum PIC_01:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum PIC_02:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum SEARCH_01:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum SEARCH_02:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum SFO_JFK_FLIGHT:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum SFO_TRAFFIC:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum SF_WEATHER:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum SMS:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

.field public static final enum VID:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;


# instance fields
.field final imageResource:I

.field final pinned:Z

.field final timeResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v1, "SFO_JFK_FLIGHT"

    sget v4, Lcom/google/glass/home/R$drawable;->guest_flight:I

    sget v5, Lcom/google/glass/home/R$string;->guest_timeline_time_flight:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SFO_JFK_FLIGHT:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 39
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "SFO_TRAFFIC"

    sget v8, Lcom/google/glass/home/R$drawable;->guest_map:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_map:I

    move v6, v3

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SFO_TRAFFIC:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 40
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "SF_WEATHER"

    sget v8, Lcom/google/glass/home/R$drawable;->guest_weather_sf:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_weather_sf:I

    move v6, v10

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SF_WEATHER:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 41
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "MONTEREY_WEATHER"

    sget v8, Lcom/google/glass/home/R$drawable;->guest_weather_mon:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_weather_mon:I

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->MONTEREY_WEATHER:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 44
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "SEARCH_01"

    sget v8, Lcom/google/glass/home/R$drawable;->guest_search_01:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_search_01:I

    move v6, v12

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SEARCH_01:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 45
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "PIC_01"

    const/4 v6, 0x5

    sget v8, Lcom/google/glass/home/R$drawable;->guest_pic_01:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_pic_01:I

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->PIC_01:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 46
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "VID"

    const/4 v6, 0x6

    sget v8, Lcom/google/glass/home/R$drawable;->guest_vid:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_vid:I

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->VID:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 47
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "SMS"

    const/4 v6, 0x7

    sget v8, Lcom/google/glass/home/R$drawable;->guest_sms:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_sms:I

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SMS:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 48
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "PIC_02"

    const/16 v6, 0x8

    sget v8, Lcom/google/glass/home/R$drawable;->guest_pic_02:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_pic_02:I

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->PIC_02:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 49
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "SEARCH_02"

    const/16 v6, 0x9

    sget v8, Lcom/google/glass/home/R$drawable;->guest_search_02:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_search_02:I

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SEARCH_02:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 50
    new-instance v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    const-string v5, "EMAIL"

    const/16 v6, 0xa

    sget v8, Lcom/google/glass/home/R$drawable;->guest_email:I

    sget v9, Lcom/google/glass/home/R$string;->guest_timeline_time_email:I

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->EMAIL:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    sget-object v1, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SFO_JFK_FLIGHT:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SFO_TRAFFIC:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SF_WEATHER:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->MONTEREY_WEATHER:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SEARCH_01:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->PIC_01:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->VID:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SMS:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->PIC_02:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->SEARCH_02:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->EMAIL:Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->$VALUES:[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .parameter
    .parameter
    .parameter "pinned"
    .parameter "imageResource"
    .parameter "timeResource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-boolean p3, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->pinned:Z

    .line 58
    iput p4, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->imageResource:I

    .line 59
    iput p5, p0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->timeResource:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->$VALUES:[Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    invoke-virtual {v0}, [Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/timeline/guest/GuestTimelineItemAdapter$Item;

    return-object v0
.end method
