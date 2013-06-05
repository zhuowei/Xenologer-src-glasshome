.class public Lcom/google/glass/voice/VoiceConfigDescriptor;
.super Ljava/lang/Object;
.source "VoiceConfigDescriptor.java"


# static fields
.field public static final CONTACTS:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

.field public static final VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;


# instance fields
.field private final customPhrases:[Ljava/lang/String;

.field private final customTags:[Ljava/lang/String;

.field private final systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->OFF:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->OFF:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 12
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 14
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION_GUARD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION_GUARD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 16
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 18
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->CONTACTS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->CONTACTS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 20
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 22
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 24
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 26
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 28
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->NAVIGATION:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->NAVIGATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 30
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    new-array v1, v4, [Lcom/google/glass/voice/SystemVoiceConfig;

    sget-object v2, Lcom/google/glass/voice/SystemVoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/SystemVoiceConfig;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;)V
    .locals 2
    .parameter "systemVoiceConfigs"

    .prologue
    const/4 v1, 0x0

    .line 76
    new-array v0, v1, [Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;)V
    .locals 1
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"

    .prologue
    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "systemVoiceConfigs"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_1

    new-array v0, v1, [Lcom/google/glass/voice/SystemVoiceConfig;

    :goto_0
    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    .line 54
    if-nez p2, :cond_2

    new-array v0, v1, [Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    .line 55
    if-nez p3, :cond_0

    new-array p3, v1, [Ljava/lang/String;

    .end local p3
    :cond_0
    iput-object p3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    .line 57
    array-length v0, p1

    if-nez v0, :cond_3

    array-length v0, p2

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide at least one system voice config or custom phrase."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local p3
    :cond_1
    move-object v0, p1

    .line 52
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 54
    goto :goto_1

    .line 62
    .end local p3
    :cond_3
    array-length v0, p2

    if-nez v0, :cond_4

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    :cond_4
    invoke-static {p1}, Lcom/google/glass/voice/VoiceConfigDescriptor;->areAllHotwordBased([Lcom/google/glass/voice/SystemVoiceConfig;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only hotword configs may be used in custom and hybrid voice configs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_5
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "customPhrases"

    .prologue
    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private static varargs areAllHotwordBased([Lcom/google/glass/voice/SystemVoiceConfig;)Z
    .locals 5
    .parameter "systemVoiceConfigs"

    .prologue
    .line 41
    move-object v0, p0

    .local v0, arr$:[Lcom/google/glass/voice/SystemVoiceConfig;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 42
    .local v3, systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    iget-boolean v4, v3, Lcom/google/glass/voice/SystemVoiceConfig;->isHotwordBased:Z

    if-nez v4, :cond_0

    .line 43
    const/4 v4, 0x0

    .line 47
    .end local v3           #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :goto_1
    return v4

    .line 41
    .restart local v3       #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v3           #systemVoiceConfig:Lcom/google/glass/voice/SystemVoiceConfig;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 122
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 124
    check-cast v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 125
    .local v0, other:Lcom/google/glass/voice/VoiceConfigDescriptor;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public getCustomPhrases()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customTags:[Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVoiceConfigs()[Lcom/google/glass/voice/SystemVoiceConfig;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 106
    const/16 v0, 0x1f

    .line 107
    .local v0, prime:I
    const/4 v1, 0x1

    .line 108
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->customPhrases:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 109
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfigDescriptor;->systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 110
    return v1
.end method
