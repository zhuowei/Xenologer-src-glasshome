.class synthetic Lcom/google/glass/phone/PhoneCall$2;
.super Ljava/lang/Object;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/google/glass/phone/PhoneCall$CallDirection;->values()[Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/phone/PhoneCall$2;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/phone/PhoneCall$2;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    sget-object v1, Lcom/google/glass/phone/PhoneCall$CallDirection;->INCOMING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/phone/PhoneCall$2;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    sget-object v1, Lcom/google/glass/phone/PhoneCall$CallDirection;->OUTGOING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

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
