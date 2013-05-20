.class final Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;
.super Ljava/lang/Object;
.source "RobotoTypefaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/RobotoTypefaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypefaceKey"
.end annotation


# instance fields
.field final condensed:Z

.field final italic:Z

.field final weight:I


# direct methods
.method constructor <init>(IZZ)V
    .locals 0
    .parameter "weight"
    .parameter "italic"
    .parameter "condensed"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    .line 44
    iput-boolean p2, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    .line 45
    iput-boolean p3, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    instance-of v3, p1, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 64
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;

    .line 67
    .local v0, other:Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;
    iget-boolean v3, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    iget-boolean v4, v0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    iget-boolean v4, v0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    iget v4, v0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    .line 50
    const/16 v0, 0x1f

    .line 51
    .local v0, prime:I
    const/4 v1, 0x1

    .line 52
    .local v1, result:I
    iget-boolean v2, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->condensed:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 53
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->italic:Z

    if-eqz v5, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/widget/RobotoTypefaces$TypefaceKey;->weight:I

    add-int v1, v2, v3

    .line 55
    return v1

    :cond_0
    move v2, v4

    .line 52
    goto :goto_0

    :cond_1
    move v3, v4

    .line 53
    goto :goto_1
.end method
