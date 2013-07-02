.class final Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"

# interfaces
.implements Lcom/google/glass/util/FormattingLogger;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/FormattingLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleFormattingLogger"
.end annotation


# instance fields
.field final tag:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field final tagProperty:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "tag"

    .prologue
    const/16 v1, 0x17

    const/4 v6, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v0, "null tag"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 189
    const/4 v0, 0x4

    const-string v1, "FormattingLoggers"

    const-string v2, "FormattingLoggers"

    const/4 v3, 0x0

    const-string v4, "System property for logging tag [%s]: [log.tag.%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    aput-object v7, v5, v6

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    return-void

    :cond_0
    move-object v0, p1

    .line 187
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/glass/util/FormattingLoggers$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 205
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 210
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 234
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 239
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 215
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 219
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 195
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 200
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 224
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 229
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    #calls: Lcom/google/glass/util/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/FormattingLoggers;->access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    return-void
.end method
