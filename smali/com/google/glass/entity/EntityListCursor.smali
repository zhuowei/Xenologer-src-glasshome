.class public Lcom/google/glass/entity/EntityListCursor;
.super Landroid/database/AbstractCursor;
.source "EntityListCursor.java"


# instance fields
.field private final columns:[Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "columns"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/google/glass/entity/EntityListCursor;->list:Ljava/util/List;

    .line 20
    return-void
.end method

.method private getCurrentEntity()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/glass/entity/EntityListCursor;->checkPosition()V

    .line 34
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->list:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/entity/EntityListCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 5
    .parameter "column"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 63
    .local v0, columnName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListCursor;->getCurrentEntity()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 64
    .local v1, currentEntity:Lcom/google/googlex/glass/common/proto/Entity;
    const-string v2, "protobuf_blob"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown column: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/entity/EntityListCursor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 1
    .parameter "column"

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .parameter "column"

    .prologue
    .line 39
    iget-object v2, p0, Lcom/google/glass/entity/EntityListCursor;->columns:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 40
    .local v0, columnName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListCursor;->getCurrentEntity()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 41
    .local v1, currentEntity:Lcom/google/googlex/glass/common/proto/Entity;
    const-string v2, "display_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 54
    :goto_0
    return-object v2

    .line 43
    :cond_0
    const-string v2, "email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 45
    :cond_1
    const-string v2, "image_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrl(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 51
    :cond_3
    const-string v2, "_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 53
    :cond_4
    const-string v2, "source"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 54
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 56
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown column: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
