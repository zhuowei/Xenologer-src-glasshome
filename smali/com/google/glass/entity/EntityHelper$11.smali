.class synthetic Lcom/google/glass/entity/EntityHelper$11;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$googlex$glass$common$proto$Entity$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 757
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Type;->values()[Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/entity/EntityHelper$11;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Type:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/entity/EntityHelper$11;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Type:[I

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$Type;->GROUP:Lcom/google/googlex/glass/common/proto/Entity$Type;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/entity/EntityHelper$11;->$SwitchMap$com$google$googlex$glass$common$proto$Entity$Type:[I

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity$Type;->ordinal()I

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
