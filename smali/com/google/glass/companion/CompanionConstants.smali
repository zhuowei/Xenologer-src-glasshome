.class public Lcom/google/glass/companion/CompanionConstants;
.super Ljava/lang/Object;
.source "CompanionConstants.java"


# static fields
.field public static final ACTION_SETUP_WIFI:Ljava/lang/String; = "com.google.glass.companion.SETUP_WIFI"

.field public static final EXTRA_SETUP_WIFI:Ljava/lang/String; = "wifi_setup_string"

.field public static final INTENT_MESSENGER:Ljava/lang/String; = "com.google.glass.companion.MESSENGER"

.field public static final KEY_ENVELOPE_PAYLOAD:Ljava/lang/String; = "Payload"

.field public static final KEY_REPLYABLE_ID:Ljava/lang/String; = "ReplyableId"

.field public static final SECURE_UUID:Ljava/util/UUID; = null

.field public static final SOCKET_NAME:Ljava/lang/String; = "Companion"

.field public static final VERSION:I = 0x6

.field static final VERSION_BITS:I = 0xff

.field static final VERSION_SHIFT:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "F15CC914-E4BC-45CE-9930-CB7695385850"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
