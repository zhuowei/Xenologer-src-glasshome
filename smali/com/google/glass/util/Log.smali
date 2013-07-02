.class public Lcom/google/glass/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final LOG_PII:Z = false

.field private static final MAX_TAG_LENGTH:I = 0x17

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/util/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/util/Log;->LOG_PII:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 4
    .parameter "level"
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    const/16 v3, 0x17

    .line 199
    move-object v1, p1

    .line 200
    .local v1, shortTag:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 201
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    :goto_0
    return-void

    .line 208
    :cond_1
    if-nez p4, :cond_2

    move-object v0, p2

    .line 209
    .local v0, message:Ljava/lang/String;
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    if-eqz p3, :cond_6

    .line 233
    invoke-static {p1, v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 211
    .restart local v0       #message:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_3

    .line 212
    invoke-static {p1, v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :pswitch_2
    if-eqz p3, :cond_4

    .line 219
    invoke-static {p1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 221
    :cond_4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :pswitch_3
    if-eqz p3, :cond_5

    .line 226
    invoke-static {p1, v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    :cond_5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_6
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :pswitch_4
    if-eqz p3, :cond_7

    .line 240
    invoke-static {p1, v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 242
    :cond_7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 139
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 153
    const/4 v0, 0x3

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 55
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 111
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 125
    const/4 v0, 0x4

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public static logPii(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "level"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public static logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "level"
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 39
    sget-boolean v0, Lcom/google/glass/util/Log;->LOG_PII:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 167
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 181
    const/4 v0, 0x2

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 83
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 97
    const/4 v0, 0x5

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/util/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method
