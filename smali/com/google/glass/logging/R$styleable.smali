.class public final Lcom/google/glass/logging/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final OptionMenuItem:[I = null

.field public static final OptionMenuItem_id:I = 0x0

.field public static final OptionMenuItem_image:I = 0x2

.field public static final OptionMenuItem_isDefaultItem:I = 0x3

.field public static final OptionMenuItem_name:I = 0x1

.field public static final TipsView:[I = null

.field public static final TipsView_tip:I = 0x0

.field public static final TypophileTextView:[I = null

.field public static final TypophileTextView_firstLineIndent:I = 0x1

.field public static final TypophileTextView_fontWeight:I = 0x0

.field public static final TypophileTextView_hangingIndent:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1732
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/logging/R$styleable;->OptionMenuItem:[I

    .line 1801
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010007

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/logging/R$styleable;->TipsView:[I

    .line 1830
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/glass/logging/R$styleable;->TypophileTextView:[I

    return-void

    .line 1732
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1830
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
