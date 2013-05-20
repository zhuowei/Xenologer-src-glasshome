.class Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilder.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/RepeatedFieldBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderExternalList"
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
        "Ljava/util/AbstractList",
        "<TBType;>;",
        "Ljava/util/List",
        "<TBType;>;"
    }
.end annotation


# instance fields
.field builder:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,"Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<TMType;TBType;TIType;>;"
    .local p1, builder:Lcom/google/protobuf/RepeatedFieldBuilder;,"Lcom/google/protobuf/RepeatedFieldBuilder<TMType;TBType;TIType;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 620
    iput-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 621
    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,"Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 610
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,"Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<TMType;TBType;TIType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->get(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method incrementModCount()V
    .locals 1

    .prologue
    .line 632
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,"Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<TMType;TBType;TIType;>;"
    iget v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->modCount:I

    .line 633
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 624
    .local p0, this:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,"Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<TMType;TBType;TIType;>;"
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->builder:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method
