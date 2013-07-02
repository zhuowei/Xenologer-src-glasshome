.class synthetic Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$2;
.super Ljava/lang/Object;
.source "MirrorCommandMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$googlex$glass$common$proto$Entity$Command$CommandType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 164
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->values()[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$2;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Command$CommandType:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$2;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Command$CommandType:[I

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->POST_AN_UPDATE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/home/voice/menu/MirrorCommandMenuItem$2;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Command$CommandType:[I

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
