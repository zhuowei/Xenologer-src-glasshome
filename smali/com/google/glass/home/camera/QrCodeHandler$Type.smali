.class final enum Lcom/google/glass/home/camera/QrCodeHandler$Type;
.super Ljava/lang/Enum;
.source "QrCodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/camera/QrCodeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/camera/QrCodeHandler$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum EMAIL:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum GEO:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum GLASSCAST:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum GUIDE:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum HANGOUT:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum LINK:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum PHONE:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum SMS:Lcom/google/glass/home/camera/QrCodeHandler$Type;

.field public static final enum SPEAK:Lcom/google/glass/home/camera/QrCodeHandler$Type;


# instance fields
.field private final prefixPattern:Ljava/util/regex/Pattern;

.field private final requiresLab:Z

.field private final userEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 42
    new-instance v0, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v1, "HANGOUT"

    const-string v3, "^HANGOUT:([a-zA-Z0-9]{40})$"

    const-string v5, "1"

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->HANGOUT:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 43
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "GLASSCAST"

    const-string v8, "^GLASSCAST:([a-fA-F0-9]{12})$"

    const-string v10, "2"

    move v7, v4

    move v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->GLASSCAST:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 44
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "GEO"

    const-string v8, "^GEO:(.*)$"

    const-string v10, "3"

    move v7, v11

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->GEO:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 45
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "SPEAK"

    const-string v8, "^SPEAK:(.*)$"

    const-string v10, "4"

    move v7, v12

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->SPEAK:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 46
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "PHONE"

    const-string v8, "^TEL:([+0-9]{5,24})$"

    const-string v10, "5"

    move v7, v13

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->PHONE:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 47
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "LINK"

    const/4 v7, 0x5

    const-string v8, "^(HTTPS?://.+)$"

    const-string v10, "6"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->LINK:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 48
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "EMAIL"

    const/4 v7, 0x6

    const-string v8, "^MAILTO:(.+)$"

    const-string v10, "7"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->EMAIL:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 49
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "GUIDE"

    const/4 v7, 0x7

    const-string v8, "^GUIDE:(.+)$"

    const/4 v10, 0x0

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->GUIDE:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 50
    new-instance v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    const-string v6, "SMS"

    const/16 v7, 0x8

    const-string v8, "^SMS:([+0-9]{3,24})$"

    const-string v10, "8"

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/home/camera/QrCodeHandler$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    sput-object v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->SMS:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/glass/home/camera/QrCodeHandler$Type;

    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;->HANGOUT:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;->GLASSCAST:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;->GEO:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;->SPEAK:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/glass/home/camera/QrCodeHandler$Type;->PHONE:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/home/camera/QrCodeHandler$Type;->LINK:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/home/camera/QrCodeHandler$Type;->EMAIL:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/home/camera/QrCodeHandler$Type;->GUIDE:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/home/camera/QrCodeHandler$Type;->SMS:Lcom/google/glass/home/camera/QrCodeHandler$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->$VALUES:[Lcom/google/glass/home/camera/QrCodeHandler$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "regex"
    .parameter "requiresLab"
    .parameter "userEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    const/4 v0, 0x2

    invoke-static {p3, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->prefixPattern:Ljava/util/regex/Pattern;

    .line 58
    iput-boolean p4, p0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->requiresLab:Z

    .line 59
    iput-object p5, p0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->userEvent:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->requiresLab:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/camera/QrCodeHandler$Type;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->userEvent:Ljava/lang/String;

    return-object v0
.end method

.method static match(Lcom/google/android/libraries/barhopper/Barcode;)Landroid/util/Pair;
    .locals 9
    .parameter "barcode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/barhopper/Barcode;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/home/camera/QrCodeHandler$Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 68
    iget-object v4, p0, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    .line 69
    .local v4, rawValue:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/home/camera/QrCodeHandler$Type;->values()[Lcom/google/glass/home/camera/QrCodeHandler$Type;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/home/camera/QrCodeHandler$Type;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 70
    .local v5, type:Lcom/google/glass/home/camera/QrCodeHandler$Type;
    iget-object v8, v5, Lcom/google/glass/home/camera/QrCodeHandler$Type;->prefixPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 71
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 72
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v5           #type:Lcom/google/glass/home/camera/QrCodeHandler$Type;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v7

    .line 76
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    .restart local v5       #type:Lcom/google/glass/home/camera/QrCodeHandler$Type;
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    goto :goto_1

    .line 69
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/camera/QrCodeHandler$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/camera/QrCodeHandler$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/camera/QrCodeHandler$Type;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/camera/QrCodeHandler$Type;->$VALUES:[Lcom/google/glass/home/camera/QrCodeHandler$Type;

    invoke-virtual {v0}, [Lcom/google/glass/home/camera/QrCodeHandler$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/camera/QrCodeHandler$Type;

    return-object v0
.end method
