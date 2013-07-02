.class public final Lcom/google/glass/home/voice/menu/Requirements;
.super Ljava/lang/Object;
.source "Requirements.java"


# static fields
.field public static final HAS_CONTACTS:Lcom/google/glass/home/voice/menu/Requirement;

.field public static final HAS_PHOTO_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

.field public static final HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

.field public static final IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

.field public static final IS_HEADSET_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

.field public static final IS_NAVIGATION_ALLOWED:Lcom/google/glass/home/voice/menu/Requirement;

.field public static final IS_PHONE_AVAILABLE:Lcom/google/glass/home/voice/menu/Requirement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$1;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$1;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    .line 34
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$2;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$2;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->HAS_CONTACTS:Lcom/google/glass/home/voice/menu/Requirement;

    .line 49
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$3;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$3;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

    .line 64
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$4;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$4;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->HAS_PHOTO_SHARE_TARGETS:Lcom/google/glass/home/voice/menu/Requirement;

    .line 79
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$5;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$5;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->IS_HEADSET_CONNECTED:Lcom/google/glass/home/voice/menu/Requirement;

    .line 96
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$6;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$6;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->IS_PHONE_AVAILABLE:Lcom/google/glass/home/voice/menu/Requirement;

    .line 111
    new-instance v0, Lcom/google/glass/home/voice/menu/Requirements$7;

    invoke-direct {v0}, Lcom/google/glass/home/voice/menu/Requirements$7;-><init>()V

    sput-object v0, Lcom/google/glass/home/voice/menu/Requirements;->IS_NAVIGATION_ALLOWED:Lcom/google/glass/home/voice/menu/Requirement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
