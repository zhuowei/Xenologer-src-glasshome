.class public final enum Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
.super Ljava/lang/Enum;
.source "VoiceTriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/app/VoiceTriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

.field public static final enum CAMERA:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

.field public static final enum MICROPHONE:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

.field public static final enum NETWORK:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;


# instance fields
.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    const-string v1, "NETWORK"

    const-string v2, "network"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->NETWORK:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    .line 81
    new-instance v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    const-string v1, "CAMERA"

    const-string v2, "camera"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->CAMERA:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    .line 82
    new-instance v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    const-string v1, "MICROPHONE"

    const-string v2, "microphone"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->MICROPHONE:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    sget-object v1, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->NETWORK:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->CAMERA:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->MICROPHONE:Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->$VALUES:[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->mKey:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    .registers 2
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    return-object v0
.end method

.method public static values()[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->$VALUES:[Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    invoke-virtual {v0}, [Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;

    return-object v0
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.glass.require_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/glass/app/VoiceTriggerManager$Constraint;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
