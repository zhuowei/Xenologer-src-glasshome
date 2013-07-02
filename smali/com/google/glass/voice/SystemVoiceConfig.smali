.class final enum Lcom/google/glass/voice/SystemVoiceConfig;
.super Ljava/lang/Enum;
.source "SystemVoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/SystemVoiceConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum CONTACTS:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum INCOMING_CALL:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum MAIN_MENU:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum NAVIGATION:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum NOTIFICATION:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum NOTIFICATION_GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum OFF:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum PLUS_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum SHARE:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum SOUND_SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

.field public static final enum VOICE_RECORD:Lcom/google/glass/voice/SystemVoiceConfig;


# instance fields
.field final isHotwordBased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 10
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->OFF:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 11
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "GUARD"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 12
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "NOTIFICATION_GUARD"

    invoke-direct {v0, v1, v5, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 13
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "MAIN_MENU"

    invoke-direct {v0, v1, v6, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 14
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "CONTACTS"

    invoke-direct {v0, v1, v7, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->CONTACTS:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 15
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "PLUS_SHARE_TARGETS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 16
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "PHOTO_SHARE_TARGETS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 17
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "NOTIFICATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 18
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "SHARE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->SHARE:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 19
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "INCOMING_CALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 20
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "SEARCH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 21
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "SOUND_SEARCH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 22
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "NAVIGATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->NAVIGATION:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 23
    new-instance v0, Lcom/google/glass/voice/SystemVoiceConfig;

    const-string v1, "VOICE_RECORD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/SystemVoiceConfig;

    .line 9
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v1, Lcom/google/glass/voice/SystemVoiceConfig;->OFF:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/SystemVoiceConfig;->GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/voice/SystemVoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/voice/SystemVoiceConfig;->CONTACTS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SHARE:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NAVIGATION:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->$VALUES:[Lcom/google/glass/voice/SystemVoiceConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/SystemVoiceConfig;-><init>(Ljava/lang/String;IZ)V

    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "hotword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-boolean p3, p0, Lcom/google/glass/voice/SystemVoiceConfig;->isHotwordBased:Z

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/SystemVoiceConfig;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/SystemVoiceConfig;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/SystemVoiceConfig;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/glass/voice/SystemVoiceConfig;->$VALUES:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-virtual {v0}, [Lcom/google/glass/voice/SystemVoiceConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/SystemVoiceConfig;

    return-object v0
.end method
