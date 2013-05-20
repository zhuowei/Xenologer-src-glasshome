.class public final enum Lcom/google/glass/net/ServerConstants$Action;
.super Ljava/lang/Enum;
.source "ServerConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/ServerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/net/ServerConstants$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum GCM_REGISTRATION:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum REMOTE_WIPE_CONFIRMATION:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum REPORT_LOCATION:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum SETUP_USER_ACCOUNT:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

.field public static final enum TIMEZONE:Lcom/google/glass/net/ServerConstants$Action;


# instance fields
.field public final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "SETUP_USER_ACCOUNT"

    const-string v2, "sua"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->SETUP_USER_ACCOUNT:Lcom/google/glass/net/ServerConstants$Action;

    .line 78
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "GET_SESSION_ID"

    const-string v2, "gsi"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

    .line 81
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "REPORT_USER_EVENT"

    const-string v2, "rue"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

    .line 86
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "GCM_REGISTRATION"

    const-string v2, "c2dm"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->GCM_REGISTRATION:Lcom/google/glass/net/ServerConstants$Action;

    .line 89
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "REPORT_LOCATION"

    const-string v2, "loc"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->REPORT_LOCATION:Lcom/google/glass/net/ServerConstants$Action;

    .line 93
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "ENTITY_SYNC"

    const/4 v2, 0x5

    const-string v3, "es"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    .line 96
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "TIMELINE_SYNC"

    const/4 v2, 0x6

    const-string v3, "sync"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    .line 99
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "REMOTE_WIPE_CONFIRMATION"

    const/4 v2, 0x7

    const-string v3, "rwc"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->REMOTE_WIPE_CONFIRMATION:Lcom/google/glass/net/ServerConstants$Action;

    .line 102
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "DOWNLOAD_IMAGE"

    const/16 v2, 0x8

    const-string v3, "di"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    .line 105
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "TIMEZONE"

    const/16 v2, 0x9

    const-string v3, "tz"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->TIMEZONE:Lcom/google/glass/net/ServerConstants$Action;

    .line 107
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "ATTACHMENT_GET"

    const/16 v2, 0xa

    const-string v3, "ag"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    .line 109
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "ATTACHMENT_INSERT"

    const/16 v2, 0xb

    const-string v3, "ai"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    .line 112
    new-instance v0, Lcom/google/glass/net/ServerConstants$Action;

    const-string v1, "RESOURCE"

    const/16 v2, 0xc

    const-string v3, "res"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/ServerConstants$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    .line 72
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/glass/net/ServerConstants$Action;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->SETUP_USER_ACCOUNT:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GCM_REGISTRATION:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_LOCATION:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->ENTITY_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->TIMELINE_SYNC:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->REMOTE_WIPE_CONFIRMATION:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->TIMEZONE:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/net/ServerConstants$Action;->$VALUES:[Lcom/google/glass/net/ServerConstants$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput-object p3, p0, Lcom/google/glass/net/ServerConstants$Action;->path:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/net/ServerConstants$Action;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    const-class v0, Lcom/google/glass/net/ServerConstants$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ServerConstants$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/net/ServerConstants$Action;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/net/ServerConstants$Action;->$VALUES:[Lcom/google/glass/net/ServerConstants$Action;

    invoke-virtual {v0}, [Lcom/google/glass/net/ServerConstants$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/net/ServerConstants$Action;

    return-object v0
.end method
