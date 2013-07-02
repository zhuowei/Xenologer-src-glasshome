.class public final Lcom/google/glass/util/FormattingLoggers;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/FormattingLoggers$1;,
        Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE:Lcom/google/glass/util/BuildHelper$Type; = null

.field static final PROPERTY_KEY_MAX_LENGTH:I = 0x17
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FormattingLoggers"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->getType()Lcom/google/glass/util/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FormattingLoggers;->BUILD_TYPE:Lcom/google/glass/util/BuildHelper$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 12
    invoke-static/range {p0 .. p5}, Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "level"
    .parameter "tagProperty"
    .parameter "tag"
    .parameter "throwable"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 115
    sget-object v1, Lcom/google/glass/util/FormattingLoggers;->BUILD_TYPE:Lcom/google/glass/util/BuildHelper$Type;

    sget-object v2, Lcom/google/glass/util/BuildHelper$Type;->USER:Lcom/google/glass/util/BuildHelper$Type;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    if-ge p0, v1, :cond_1

    :cond_0
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p5, :cond_2

    move-object v0, p4

    .line 121
    .local v0, message:Ljava/lang/String;
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    if-eqz p3, :cond_6

    .line 145
    invoke-static {p2, v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 123
    .restart local v0       #message:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_3

    .line 124
    invoke-static {p2, v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_2
    if-eqz p3, :cond_4

    .line 131
    invoke-static {p2, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    :cond_4
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :pswitch_3
    if-eqz p3, :cond_5

    .line 138
    invoke-static {p2, v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    :cond_5
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_6
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :pswitch_4
    if-eqz p3, :cond_7

    .line 152
    invoke-static {p2, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    :cond_7
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method static getCallerClassSimpleName(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 9
    .parameter "t"
    .parameter "skipFrameCount"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 82
    .local v2, stackTraceElement:[Ljava/lang/StackTraceElement;
    array-length v3, v2

    add-int/lit8 v6, p1, 0x1

    if-lt v3, v6, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "Unexpected stack trace length (should be >= %s): [%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, p1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    array-length v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    aget-object v3, v2, p1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, fullClassName:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, simpleClassName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_2
    const-string v6, "empty simpleClassName: [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-object v1

    .end local v0           #fullClassName:Ljava/lang/String;
    .end local v1           #simpleClassName:Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 82
    goto :goto_0

    .restart local v0       #fullClassName:Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 88
    goto :goto_1

    .restart local v1       #simpleClassName:Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 91
    goto :goto_2
.end method

.method public static getContextLogger()Lcom/google/glass/util/FormattingLogger;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/util/FormattingLoggers;->getCallerClassSimpleName(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Lcom/google/glass/util/FormattingLoggers$1;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/google/glass/util/FormattingLogger;
    .locals 2
    .parameter "tag"

    .prologue
    .line 33
    new-instance v0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Lcom/google/glass/util/FormattingLoggers$1;)V

    return-object v0
.end method
