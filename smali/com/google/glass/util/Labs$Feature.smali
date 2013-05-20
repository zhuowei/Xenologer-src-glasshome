.class public final enum Lcom/google/glass/util/Labs$Feature;
.super Ljava/lang/Enum;
.source "Labs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/Labs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/Labs$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/Labs$Feature;

.field public static final enum AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

.field public static final enum BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

.field public static final enum CALL_NOISE_CANCEL:Lcom/google/glass/util/Labs$Feature;

.field public static final enum CLIPLET:Lcom/google/glass/util/Labs$Feature;

.field public static final enum COMPANION_API:Lcom/google/glass/util/Labs$Feature;

.field public static final enum DEBUG_LAUNCHER:Lcom/google/glass/util/Labs$Feature;

.field public static final enum DEV_SERVERS:Lcom/google/glass/util/Labs$Feature;

.field public static final enum DING_ON_LOAD:Lcom/google/glass/util/Labs$Feature;

.field public static final enum DISABLE_GAZE_ON_MIC:Lcom/google/glass/util/Labs$Feature;

.field public static final enum GCAM:Lcom/google/glass/util/Labs$Feature;

.field public static final enum GPS_DEBUG_CARD:Lcom/google/glass/util/Labs$Feature;

.field public static final enum GPS_IN_BACKGROUND:Lcom/google/glass/util/Labs$Feature;

.field public static final enum HO_BG_WAITING:Lcom/google/glass/util/Labs$Feature;

.field public static final enum HO_USE_SVC:Lcom/google/glass/util/Labs$Feature;

.field public static final enum KANNADI_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

.field public static final enum LOG_NEG_SENSORY_REC:Lcom/google/glass/util/Labs$Feature;

.field public static final enum LOG_POS_SENSORY_REC:Lcom/google/glass/util/Labs$Feature;

.field public static final enum LONG_TAP_TO_SEARCH:Lcom/google/glass/util/Labs$Feature;

.field public static final enum LONG_TAP_UI_SEARCH:Lcom/google/glass/util/Labs$Feature;

.field public static final enum NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

.field public static final enum NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

.field public static final enum NAV_NO_COMPANION:Lcom/google/glass/util/Labs$Feature;

.field public static final enum NAV_USE_LOCAL_GPS:Lcom/google/glass/util/Labs$Feature;

.field public static final enum OK_GLASS_EVERYWHERE:Lcom/google/glass/util/Labs$Feature;

.field public static final enum PHONE_AEC_LOG:Lcom/google/glass/util/Labs$Feature;

.field public static final enum PRODUCTION_SERVERS:Lcom/google/glass/util/Labs$Feature;

.field public static final enum QUICK_QR_CODE:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SEARCH_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SEARCH_FEEDBACK:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SEARCH_GWS_FLOW:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SEARCH_TEST_SERVER:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SHORT_TIMELINE_POLL:Lcom/google/glass/util/Labs$Feature;

.field public static final enum SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

.field public static final enum STAGING_SERVERS:Lcom/google/glass/util/Labs$Feature;

.field public static final enum TESTING_SERVERS:Lcom/google/glass/util/Labs$Feature;

.field public static final enum THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

.field public static final enum TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

.field public static final enum UPLOAD_SESSION_MNGR:Lcom/google/glass/util/Labs$Feature;

.field public static final enum VSTAB:Lcom/google/glass/util/Labs$Feature;

.field public static final enum VSTAB_CALIBRATION:Lcom/google/glass/util/Labs$Feature;

.field public static final enum WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

.field public static final enum WINK:Lcom/google/glass/util/Labs$Feature;


# instance fields
.field private final defaultValue:Z

.field private final propertyKey:Ljava/lang/String;

.field private setByTest:Z

.field private valueForTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "GCAM"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    .line 49
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "VSTAB"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->VSTAB:Lcom/google/glass/util/Labs$Feature;

    .line 52
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "VSTAB_CALIBRATION"

    invoke-direct {v0, v1, v5, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->VSTAB_CALIBRATION:Lcom/google/glass/util/Labs$Feature;

    .line 55
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "HO_USE_SVC"

    invoke-direct {v0, v1, v6, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->HO_USE_SVC:Lcom/google/glass/util/Labs$Feature;

    .line 58
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "CLIPLET"

    invoke-direct {v0, v1, v7, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->CLIPLET:Lcom/google/glass/util/Labs$Feature;

    .line 61
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "HO_BG_WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->HO_BG_WAITING:Lcom/google/glass/util/Labs$Feature;

    .line 64
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SAVE_AUDIO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    .line 70
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "LOG_POS_SENSORY_REC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->LOG_POS_SENSORY_REC:Lcom/google/glass/util/Labs$Feature;

    .line 76
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "LOG_NEG_SENSORY_REC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_SENSORY_REC:Lcom/google/glass/util/Labs$Feature;

    .line 79
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SEARCH_FEEDBACK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SEARCH_FEEDBACK:Lcom/google/glass/util/Labs$Feature;

    .line 82
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "BLUETOOTH_HEADSET"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    .line 85
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "DEBUG_LAUNCHER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->DEBUG_LAUNCHER:Lcom/google/glass/util/Labs$Feature;

    .line 91
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SEARCH_DEV_SERVER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SEARCH_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    .line 94
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SEARCH_TEST_SERVER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SEARCH_TEST_SERVER:Lcom/google/glass/util/Labs$Feature;

    .line 97
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "KANNADI_DEV_SERVER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->KANNADI_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    .line 108
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "PRODUCTION_SERVERS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->PRODUCTION_SERVERS:Lcom/google/glass/util/Labs$Feature;

    .line 109
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "STAGING_SERVERS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->STAGING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    .line 112
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "TESTING_SERVERS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->TESTING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    .line 113
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "DEV_SERVERS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->DEV_SERVERS:Lcom/google/glass/util/Labs$Feature;

    .line 116
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "UPLOAD_SESSION_MNGR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->UPLOAD_SESSION_MNGR:Lcom/google/glass/util/Labs$Feature;

    .line 119
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "GPS_DEBUG_CARD"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_DEBUG_CARD:Lcom/google/glass/util/Labs$Feature;

    .line 122
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "GPS_IN_BACKGROUND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_IN_BACKGROUND:Lcom/google/glass/util/Labs$Feature;

    .line 128
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "NAV_USE_LOCAL_GPS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_USE_LOCAL_GPS:Lcom/google/glass/util/Labs$Feature;

    .line 134
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "NAV_NO_COMPANION"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_NO_COMPANION:Lcom/google/glass/util/Labs$Feature;

    .line 141
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "OK_GLASS_EVERYWHERE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->OK_GLASS_EVERYWHERE:Lcom/google/glass/util/Labs$Feature;

    .line 148
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "CALL_NOISE_CANCEL"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->CALL_NOISE_CANCEL:Lcom/google/glass/util/Labs$Feature;

    .line 154
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "AUTO_SHARE_TARGETS"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

    .line 157
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "THIRD_PARTY_VOICE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    .line 160
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "NATIVE_APP_VOICE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    .line 163
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SMS_FROM_VOICE_MENU"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    .line 166
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "WEB_BROWSING"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

    .line 169
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "DING_ON_LOAD"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->DING_ON_LOAD:Lcom/google/glass/util/Labs$Feature;

    .line 175
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "DISABLE_GAZE_ON_MIC"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->DISABLE_GAZE_ON_MIC:Lcom/google/glass/util/Labs$Feature;

    .line 178
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "LONG_TAP_TO_SEARCH"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->LONG_TAP_TO_SEARCH:Lcom/google/glass/util/Labs$Feature;

    .line 181
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "LONG_TAP_UI_SEARCH"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2, v4}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->LONG_TAP_UI_SEARCH:Lcom/google/glass/util/Labs$Feature;

    .line 184
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "COMPANION_API"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->COMPANION_API:Lcom/google/glass/util/Labs$Feature;

    .line 187
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "QUICK_QR_CODE"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->QUICK_QR_CODE:Lcom/google/glass/util/Labs$Feature;

    .line 192
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "WINK"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    .line 198
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SHORT_TIMELINE_POLL"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SHORT_TIMELINE_POLL:Lcom/google/glass/util/Labs$Feature;

    .line 203
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "TOUCH_VOICE_MENU"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    .line 208
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "SEARCH_GWS_FLOW"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->SEARCH_GWS_FLOW:Lcom/google/glass/util/Labs$Feature;

    .line 211
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "PHONE_AEC_LOG"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->PHONE_AEC_LOG:Lcom/google/glass/util/Labs$Feature;

    .line 217
    new-instance v0, Lcom/google/glass/util/Labs$Feature;

    const-string v1, "NAV_CONTAMINATE_FIX"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/Labs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    .line 43
    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/google/glass/util/Labs$Feature;

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VSTAB:Lcom/google/glass/util/Labs$Feature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VSTAB_CALIBRATION:Lcom/google/glass/util/Labs$Feature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->HO_USE_SVC:Lcom/google/glass/util/Labs$Feature;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->CLIPLET:Lcom/google/glass/util/Labs$Feature;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->HO_BG_WAITING:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SAVE_AUDIO:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LOG_POS_SENSORY_REC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LOG_NEG_SENSORY_REC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SEARCH_FEEDBACK:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->DEBUG_LAUNCHER:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SEARCH_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SEARCH_TEST_SERVER:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->KANNADI_DEV_SERVER:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->PRODUCTION_SERVERS:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->STAGING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->TESTING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->DEV_SERVERS:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->UPLOAD_SESSION_MNGR:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->GPS_DEBUG_CARD:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->GPS_IN_BACKGROUND:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->NAV_USE_LOCAL_GPS:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->NAV_NO_COMPANION:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->OK_GLASS_EVERYWHERE:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->CALL_NOISE_CANCEL:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->AUTO_SHARE_TARGETS:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->THIRD_PARTY_VOICE:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SMS_FROM_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->DING_ON_LOAD:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->DISABLE_GAZE_ON_MIC:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LONG_TAP_TO_SEARCH:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->LONG_TAP_UI_SEARCH:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->COMPANION_API:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->QUICK_QR_CODE:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SHORT_TIMELINE_POLL:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->TOUCH_VOICE_MENU:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->SEARCH_GWS_FLOW:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->PHONE_AEC_LOG:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/google/glass/util/Labs$Feature;->NAV_CONTAMINATE_FIX:Lcom/google/glass/util/Labs$Feature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/Labs$Feature;->$VALUES:[Lcom/google/glass/util/Labs$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 226
    iput-boolean p3, p0, Lcom/google/glass/util/Labs$Feature;->defaultValue:Z

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.lab."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/Labs$Feature;->propertyKey:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/google/glass/util/Labs$Feature;->propertyKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 229
    iput-boolean v1, p0, Lcom/google/glass/util/Labs$Feature;->setByTest:Z

    .line 230
    iput-boolean p3, p0, Lcom/google/glass/util/Labs$Feature;->valueForTest:Z

    .line 231
    return-void

    :cond_0
    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/Labs$Feature;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/Labs$Feature;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/Labs$Feature;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->$VALUES:[Lcom/google/glass/util/Labs$Feature;

    invoke-virtual {v0}, [Lcom/google/glass/util/Labs$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/Labs$Feature;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/glass/util/Labs$Feature;->defaultValue:Z

    return v0
.end method

.method public getPropertyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/util/Labs$Feature;->propertyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValueForTest()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/google/glass/util/Labs$Feature;->valueForTest:Z

    return v0
.end method

.method public isSetByTest()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/google/glass/util/Labs$Feature;->setByTest:Z

    return v0
.end method

.method public setTestValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/Labs$Feature;->setByTest:Z

    .line 243
    iput-boolean p1, p0, Lcom/google/glass/util/Labs$Feature;->valueForTest:Z

    .line 244
    return-void
.end method
