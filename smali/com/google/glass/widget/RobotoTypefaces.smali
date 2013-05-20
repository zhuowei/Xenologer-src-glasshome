.class public Lcom/google/glass/widget/RobotoTypefaces;
.super Ljava/lang/Object;
.source "RobotoTypefaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;
    }
.end annotation


# static fields
.field private static final ASSETS_DIRECTORY:Ljava/lang/String; = "fonts/"

.field private static final FONTS_DIRECTORY:Ljava/lang/String; = "/system/glass_fonts"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WEIGHT_BLACK:I = 0x5

.field public static final WEIGHT_BOLD:I = 0x4

.field public static final WEIGHT_LIGHT:I = 0x2

.field public static final WEIGHT_MEDIUM:I = 0x3

.field public static final WEIGHT_REGULAR:I = 0x0

.field public static final WEIGHT_THIN:I = 0x1

.field private static final typefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/widget/RobotoTypefaces;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/RobotoTypefaces;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/widget/RobotoTypefaces;->typefaces:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static getTtfFileName(Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 131
    const-string v0, "Only regular (default) or bold can be combined with condensed."

    .line 132
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    packed-switch v1, :pswitch_data_0

    .line 138
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    if-eqz v1, :cond_2

    .line 139
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_1

    const-string v1, "Roboto-CondensedItalic.ttf"

    .line 156
    :goto_0
    return-object v1

    .line 139
    :cond_1
    const-string v1, "Roboto-Condensed.ttf"

    goto :goto_0

    .line 141
    :cond_2
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_3

    const-string v1, "Roboto-Italic.ttf"

    goto :goto_0

    :cond_3
    const-string v1, "Roboto-Regular.ttf"

    goto :goto_0

    .line 144
    :pswitch_0
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_4

    const-string v1, "Roboto-ThinItalic.ttf"

    goto :goto_0

    :cond_4
    const-string v1, "Roboto-Thin.ttf"

    goto :goto_0

    .line 146
    :pswitch_1
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_5

    const-string v1, "Roboto-LightItalic.ttf"

    goto :goto_0

    :cond_5
    const-string v1, "Roboto-Light.ttf"

    goto :goto_0

    .line 148
    :pswitch_2
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_6

    const-string v1, "Roboto-MediumItalic.ttf"

    goto :goto_0

    :cond_6
    const-string v1, "Roboto-Medium.ttf"

    goto :goto_0

    .line 150
    :pswitch_3
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    if-eqz v1, :cond_8

    .line 151
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_7

    const-string v1, "Roboto-BoldCondensedItalic.ttf"

    goto :goto_0

    :cond_7
    const-string v1, "Roboto-BoldCondensed.ttf"

    goto :goto_0

    .line 153
    :cond_8
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_9

    const-string v1, "Roboto-BoldItalic.ttf"

    goto :goto_0

    :cond_9
    const-string v1, "Roboto-Bold.ttf"

    goto :goto_0

    .line 156
    :pswitch_4
    iget-boolean v1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v1, :cond_a

    const-string v1, "Roboto-BlackItalic.ttf"

    goto :goto_0

    :cond_a
    const-string v1, "Roboto-Black.ttf"

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "context"
    .parameter "weight"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, v0, v0}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeface(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;
    .locals 4
    .parameter "context"
    .parameter "weight"
    .parameter "italic"
    .parameter "condensed"

    .prologue
    .line 97
    new-instance v0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;-><init>(IZZ)V

    .line 98
    .local v0, key:Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;
    sget-object v3, Lcom/google/glass/widget/RobotoTypefaces;->typefaces:Ljava/util/HashMap;

    monitor-enter v3

    .line 99
    :try_start_0
    sget-object v2, Lcom/google/glass/widget/RobotoTypefaces;->typefaces:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 100
    .local v1, typeface:Landroid/graphics/Typeface;
    if-nez v1, :cond_0

    .line 101
    invoke-static {p0, v0}, Lcom/google/glass/widget/RobotoTypefaces;->loadTypeface(Landroid/content/Context;Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 103
    :cond_0
    monitor-exit v3

    return-object v1

    .line 104
    .end local v1           #typeface:Landroid/graphics/Typeface;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static loadTypeface(Landroid/content/Context;Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;)Landroid/graphics/Typeface;
    .locals 9
    .parameter "context"
    .parameter "key"

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 109
    .local v1, start:J
    invoke-static {p1}, Lcom/google/glass/widget/RobotoTypefaces;->getTtfFileName(Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, tftFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/glass_fonts"

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v0, fontFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 112
    .local v4, typeface:Landroid/graphics/Typeface;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    sget-object v5, Lcom/google/glass/widget/RobotoTypefaces;->TAG:Ljava/lang/String;

    const-string v6, "Font was loaded from system."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 119
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 120
    sget-object v5, Lcom/google/glass/widget/RobotoTypefaces;->typefaces:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v5, Lcom/google/glass/widget/RobotoTypefaces;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_1
    return-object v4

    .line 115
    :cond_1
    if-eqz p0, :cond_0

    .line 116
    sget-object v5, Lcom/google/glass/widget/RobotoTypefaces;->TAG:Ljava/lang/String;

    const-string v6, "Font wasn\'t in system, checking in assets."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_0

    .line 123
    :cond_2
    sget-object v5, Lcom/google/glass/widget/RobotoTypefaces;->TAG:Ljava/lang/String;

    const-string v6, "Failed to load font, returning null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
