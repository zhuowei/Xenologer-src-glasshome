.class public Lcom/google/android/ears/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final AUTO_LOG_ALL:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_DEBUG_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "DebugUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/ears/DebugUtils;->IS_DEBUG_BUILD:Z

    .line 23
    sget-boolean v0, Lcom/google/android/ears/DebugUtils;->IS_DEBUG_BUILD:Z

    sput-boolean v0, Lcom/google/android/ears/DebugUtils;->AUTO_LOG_ALL:Z

    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isLoggable(Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 26
    sget-boolean v0, Lcom/google/android/ears/DebugUtils;->AUTO_LOG_ALL:Z

    if-nez v0, :cond_0

    const-string v0, "DebugUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final logCursor(Landroid/database/Cursor;)V
    .locals 10
    .parameter "c"

    .prologue
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v5, line:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 41
    .local v6, numColumns:I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 42
    .local v1, g:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v1           #g:Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 45
    .local v7, oldPosition:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_1

    .line 56
    :goto_1
    return-void

    .line 49
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #line:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .restart local v5       #line:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_2

    .line 51
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 54
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 55
    invoke-interface {p0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1
.end method

.method public static final logTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9
    .parameter "db"
    .parameter "table"

    .prologue
    const/4 v2, 0x0

    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 31
    .local v8, c:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/google/android/ears/DebugUtils;->logCursor(Landroid/database/Cursor;)V

    .line 32
    return-void
.end method
