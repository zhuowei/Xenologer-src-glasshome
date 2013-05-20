.class public Lcom/google/protobuf/RepeatedFieldBuilder;
.super Ljava/lang/Object;
.source "RepeatedFieldBuilder.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;,
        Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,
        Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private isClean:Z

.field private isMessagesListMutable:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TMType;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .parameter
    .parameter "isMessagesListMutable"
    .parameter "parent"
    .parameter "isClean"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TMType;>;Z",
            "Lcom/google/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<TMType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 110
    iput-boolean p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 111
    iput-object p3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .line 112
    iput-boolean p4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 113
    return-void
.end method

.method private ensureBuilders()V
    .locals 3

    .prologue
    .line 137
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private ensureMutableMessageList()V
    .locals 2

    .prologue
    .line 125
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 129
    :cond_0
    return-void
.end method

.method private getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;
    .locals 2
    .parameter "index"
    .parameter "forBuild"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage;

    .line 203
    :goto_0
    return-object v1

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 196
    .local v0, builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-nez v0, :cond_1

    .line 200
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage;

    goto :goto_0

    .line 203
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private incrementModCounts()V
    .locals 1

    .prologue
    .line 559
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->incrementModCount()V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->incrementModCount()V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->incrementModCount()V

    .line 568
    :cond_2
    return-void
.end method

.method private onChanged()V
    .locals 1

    .prologue
    .line 540
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    invoke-interface {v0}, Lcom/google/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TMType;>;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TMType;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessage;

    .line 338
    .local v2, value:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    if-nez v2, :cond_0

    .line 339
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 342
    .end local v2           #value:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    :cond_1
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 344
    check-cast v0, Ljava/util/Collection;

    .line 345
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TMType;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 360
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TMType;>;"
    :goto_0
    return-object p0

    .line 348
    .restart local v0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TMType;>;"
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 349
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessage;

    .line 350
    .restart local v2       #value:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    invoke-virtual {p0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 353
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TMType;>;"
    .end local v2           #value:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/GeneratedMessage;

    .line 355
    .restart local v2       #value:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    invoke-virtual {p0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 358
    .end local v2           #value:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 359
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    goto :goto_0
.end method

.method public addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p2, message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 393
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 394
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 397
    .local v0, builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 399
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 400
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 401
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p1, message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 371
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 372
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 375
    .local v0, builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 378
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 379
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p2, message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    if-nez p2, :cond_0

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 318
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 323
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 324
    return-object p0
.end method

.method public addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p1, message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 294
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 299
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 300
    return-object p0
.end method

.method public build()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TMType;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    const/4 v6, 0x1

    .line 453
    iput-boolean v6, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 455
    iget-boolean v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v4, :cond_0

    .line 457
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 490
    :goto_0
    return-object v4

    .line 460
    :cond_0
    const/4 v0, 0x1

    .line 461
    .local v0, allMessagesInSync:Z
    iget-boolean v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v4, :cond_3

    .line 464
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 465
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    .line 466
    .local v3, message:Lcom/google/protobuf/Message;
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SingleFieldBuilder;

    .line 467
    .local v1, builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    if-eq v4, v3, :cond_2

    .line 469
    const/4 v0, 0x0

    .line 474
    .end local v1           #builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    .end local v3           #message:Lcom/google/protobuf/Message;
    :cond_1
    if-eqz v0, :cond_3

    .line 476
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    goto :goto_0

    .line 464
    .restart local v1       #builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    .restart local v3       #message:Lcom/google/protobuf/Message;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 481
    .end local v1           #builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    .end local v2           #i:I
    .end local v3           #message:Lcom/google/protobuf/Message;
    :cond_3
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 482
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 483
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {p0, v2, v6}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 488
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 489
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 490
    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 430
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 431
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 432
    iget-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 434
    iget-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 435
    .local v0, entry:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    goto :goto_0

    .line 439
    .end local v0           #entry:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    .line 441
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 442
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 443
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 117
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .line 118
    return-void
.end method

.method public getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 217
    iget-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 218
    .local v0, builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-nez v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage;

    .line 220
    .local v1, message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .end local v0           #builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    iget-boolean v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 222
    .restart local v0       #builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v1           #message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v2

    return-object v2
.end method

.method public getBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TBType;>;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessage(I)Lcom/google/protobuf/GeneratedMessage;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TMType;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    return-object v0
.end method

.method public getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageOrBuilder;

    .line 251
    :goto_0
    return-object v1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 244
    .local v0, builder:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-nez v0, :cond_1

    .line 248
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageOrBuilder;

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method public getMessageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TIType;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 162
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markDirty()V
    .locals 0

    .prologue
    .line 550
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 551
    return-void
.end method

.method public remove(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 412
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 413
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 417
    .local v0, entry:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 421
    .end local v0           #entry:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 422
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 423
    return-void
.end method

.method public setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    .local p2, message:Lcom/google/protobuf/GeneratedMessage;,"TMType;"
    if-nez p2, :cond_0

    .line 266
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 269
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 273
    .local v0, entry:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    .line 277
    .end local v0           #entry:Lcom/google/protobuf/SingleFieldBuilder;,"Lcom/google/protobuf/SingleFieldBuilder<TMType;TBType;TIType;>;"
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 278
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 279
    return-object p0
.end method
