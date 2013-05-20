.class public final Lcom/google/glass/voice/VoiceCommand;
.super Ljava/lang/Object;
.source "VoiceCommand.java"


# static fields
.field public static final CALL:Lcom/google/glass/voice/VoiceCommand;

.field public static final GOOGLE:Lcom/google/glass/voice/VoiceCommand;

.field public static final HANGOUT_WITH:Lcom/google/glass/voice/VoiceCommand;

.field public static final NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

.field public static final OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

.field public static final READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

.field public static final RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

.field public static final REPLY:Lcom/google/glass/voice/VoiceCommand;

.field private static final SEMANTIC_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

.field public static final SHOW_MORE_COMMANDS:Lcom/google/glass/voice/VoiceCommand;

.field public static final TAKE_NOTE:Lcom/google/glass/voice/VoiceCommand;

.field public static final TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

.field public static final additionalCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final staticCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->additionalCommands:Ljava/util/List;

    .line 23
    const-string v0, "ok glass"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    .line 26
    const-string v0, "google"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    .line 27
    const-string v0, "take picture"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    .line 28
    const-string v0, "record video"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    .line 31
    const-string v0, "hang out with"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->HANGOUT_WITH:Lcom/google/glass/voice/VoiceCommand;

    .line 32
    const-string v0, "get directions to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    .line 33
    const-string v0, "make a call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    .line 34
    const-string v0, "send message to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    .line 35
    const-string v0, "show more commands"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SHOW_MORE_COMMANDS:Lcom/google/glass/voice/VoiceCommand;

    .line 38
    const-string v0, "read aloud"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    .line 39
    const-string v0, "reply"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    .line 47
    const-string v0, "take a note"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_NOTE:Lcom/google/glass/voice/VoiceCommand;

    .line 55
    const-string v0, ".*_tag_(.*?)(?=\\s|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SEMANTIC_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "literal"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private static newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "literal"

    .prologue
    .line 62
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v0
.end method

.method private static newStaticSecondaryCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "literal"

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 69
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->additionalCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 117
    .local v0, other:Lcom/google/glass/voice/VoiceCommand;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 118
    iget-object v3, v0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public getSemanticTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SEMANTIC_TAG_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 85
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 99
    const/16 v0, 0x1f

    .line 100
    .local v0, prime:I
    const/4 v1, 0x1

    .line 101
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 102
    return v1

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    return-object v0
.end method
