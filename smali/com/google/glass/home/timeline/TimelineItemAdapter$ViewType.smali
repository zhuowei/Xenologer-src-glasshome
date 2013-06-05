.class public final enum Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
.super Ljava/lang/Enum;
.source "TimelineItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum HANGOUT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

.field public static final enum VIDEO:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 69
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 70
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 71
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->VIDEO:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 72
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 73
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 74
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "CALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 75
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    const-string v1, "HANGOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HANGOUT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    .line 67
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->TEXT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->MESSAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->IMAGE:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->VIDEO:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->SEARCH:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->CALL:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HANGOUT:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->$VALUES:[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-class v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->$VALUES:[Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    return-object v0
.end method
