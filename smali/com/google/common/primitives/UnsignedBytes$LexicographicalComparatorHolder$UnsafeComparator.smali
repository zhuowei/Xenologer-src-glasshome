.class final enum Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
.super Ljava/lang/Enum;
.source "UnsignedBytes.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UnsafeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final BYTE_ARRAY_BASE_OFFSET:I

.field public static final enum INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

.field static final littleEndian:Z

.field static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 216
    new-array v0, v3, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    sget-object v1, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    .line 220
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->littleEndian:Z

    .line 248
    new-instance v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;

    invoke-direct {v0}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    sput-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    .line 266
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    .line 269
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 270
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 1
    .parameter "name"

    .prologue
    .line 216
    const-class v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->$VALUES:[Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    check-cast p1, [B

    .end local p1
    check-cast p2, [B

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .locals 23
    .parameter "left"
    .parameter "right"

    .prologue
    .line 275
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 276
    .local v9, minLength:I
    div-int/lit8 v10, v9, 0x8

    .line 283
    .local v10, minWords:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    mul-int/lit8 v17, v10, 0x8

    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    .line 284
    sget-object v17, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    sget v18, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    .line 285
    .local v7, lw:J
    sget-object v17, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->theUnsafe:Lsun/misc/Unsafe;

    sget v18, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->BYTE_ARRAY_BASE_OFFSET:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 286
    .local v13, rw:J
    xor-long v4, v7, v13

    .line 288
    .local v4, diff:J
    const-wide/16 v17, 0x0

    cmp-long v17, v4, v17

    if-eqz v17, :cond_5

    .line 289
    sget-boolean v17, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator;->littleEndian:Z

    if-nez v17, :cond_1

    .line 290
    invoke-static {v7, v8, v13, v14}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v12

    .line 324
    .end local v4           #diff:J
    .end local v7           #lw:J
    .end local v13           #rw:J
    :cond_0
    :goto_1
    return v12

    .line 294
    .restart local v4       #diff:J
    .restart local v7       #lw:J
    .restart local v13       #rw:J
    :cond_1
    const/4 v11, 0x0

    .line 296
    .local v11, n:I
    long-to-int v15, v4

    .line 297
    .local v15, x:I
    if-nez v15, :cond_2

    .line 298
    const/16 v17, 0x20

    ushr-long v17, v4, v17

    move-wide/from16 v0, v17

    long-to-int v15, v0

    .line 299
    const/16 v11, 0x20

    .line 302
    :cond_2
    shl-int/lit8 v16, v15, 0x10

    .line 303
    .local v16, y:I
    if-nez v16, :cond_4

    .line 304
    add-int/lit8 v11, v11, 0x10

    .line 309
    :goto_2
    shl-int/lit8 v16, v15, 0x8

    .line 310
    if-nez v16, :cond_3

    .line 311
    add-int/lit8 v11, v11, 0x8

    .line 313
    :cond_3
    ushr-long v17, v7, v11

    const-wide/16 v19, 0xff

    and-long v17, v17, v19

    ushr-long v19, v13, v11

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v12, v0

    goto :goto_1

    .line 306
    :cond_4
    move/from16 v15, v16

    goto :goto_2

    .line 283
    .end local v11           #n:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_5
    add-int/lit8 v6, v6, 0x8

    goto :goto_0

    .line 318
    .end local v4           #diff:J
    .end local v7           #lw:J
    .end local v13           #rw:J
    :cond_6
    mul-int/lit8 v6, v10, 0x8

    :goto_3
    if-ge v6, v9, :cond_7

    .line 319
    aget-byte v17, p1, v6

    aget-byte v18, p2, v6

    invoke-static/range {v17 .. v18}, Lcom/google/common/primitives/UnsignedBytes;->compare(BB)I

    move-result v12

    .line 320
    .local v12, result:I
    if-nez v12, :cond_0

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 324
    .end local v12           #result:I
    :cond_7
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    sub-int v12, v17, v18

    goto :goto_1
.end method
