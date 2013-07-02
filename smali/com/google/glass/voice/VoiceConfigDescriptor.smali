.class public Lcom/google/glass/voice/VoiceConfigDescriptor;
.super Ljava/lang/Object;
.source "VoiceConfigDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTACTS:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/VoiceConfigDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final INCOMING_CALL:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final SHARE:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;


# instance fields
.field private final customPhrases:[Ljava/lang/String;

.field private final customTags:[Ljava/lang/String;

.field private final disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field private final systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->OFF:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 18
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 20
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 22
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 24
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->CONTACTS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->CONTACTS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 26
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 28
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 30
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 32
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SHARE:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SHARE:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 34
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 36
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 38
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 40
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NAVIGATION:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 42
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 202
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor$1;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfigDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 1
    .parameter "disambiguationCommandType"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    .line 90
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;)V
    .locals 2
    .parameter "systemVoiceConfigs"

    .prologue
    const/4 v1, 0x0

    .line 99
    new-array v0, v1, [Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;)V
    .locals 1
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"

    .prologue
    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    .line 76
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide at least one system voice config or custom phrase."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfigDescriptor;->areAllHotwordBased([Lcom/google/glass/voice/SystemVoiceConfig;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only hotword configs may be used in custom and hybrid voice configs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    return-void
.end method

.method private constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V
    .locals 1
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"
    .parameter "customTags"
    .parameter "disambiguationCommandType"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    new-array p1, v0, [Lcom/google/glass/voice/SystemVoiceConfig;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    .line 67
    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/String;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    .line 68
    if-nez p3, :cond_2

    new-array p3, v0, [Ljava/lang/String;

    .end local p3
    :cond_2
    iput-object p3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 70
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/glass/voice/VoiceConfigDescriptor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "customPhrases"

    .prologue
    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private static varargs areAllHotwordBased([Lcom/google/glass/voice/SystemVoiceConfig;)Z
    .locals 5
    .parameter "systemVoiceConfigs"

    .prologue
    .line 54
    move-object v0, p0

    .local v0, arr$:[Lcom/google/glass/voice/SystemVoiceConfig;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 55
    .local v3, systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    iget-boolean v4, v3, Lcom/google/glass/voice/SystemVoiceConfig;->isHotwordBased:Z

    if-nez v4, :cond_0

    .line 56
    const/4 v4, 0x0

    .line 60
    .end local v3           #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :goto_1
    return v4

    .line 54
    .restart local v3       #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v3           #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 144
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 148
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 151
    .local v0, other:Lcom/google/glass/voice/VoiceConfigDescriptor;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 152
    goto :goto_0

    .line 154
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 155
    goto :goto_0

    .line 157
    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_6
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 161
    goto :goto_0
.end method

.method public getCustomPhrases()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    return-object v0
.end method

.method public getDisambiguationCommandType()Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object v0
.end method

.method public getSystemVoiceConfigs()[Lcom/google/glass/voice/SystemVoiceConfig;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 129
    const/16 v0, 0x1f

    .line 130
    .local v0, prime:I
    const/4 v1, 0x1

    .line 131
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 133
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 135
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 136
    return v1

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceConfigDescriptor [systemVoiceConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customPhrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disambiguationCommandType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 234
    return-void
.end method
