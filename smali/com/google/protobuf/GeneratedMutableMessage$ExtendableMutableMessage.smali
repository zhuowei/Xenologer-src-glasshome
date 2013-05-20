.class public abstract Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
.super Lcom/google/protobuf/GeneratedMutableMessage;
.source "GeneratedMutableMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMutableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMutableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
        "<TMessageType;>;>",
        "Lcom/google/protobuf/GeneratedMutableMessage",
        "<TMessageType;>;"
    }
.end annotation


# instance fields
.field private extensions:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 591
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage;-><init>()V

    .line 589
    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 591
    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method private ensureExtensionsIsMutable()V
    .locals 1

    .prologue
    .line 606
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 609
    :cond_0
    return-void
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 1041
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    return-void
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;*>;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;*>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" which does not match message type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/google/protobuf/Extension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TMessageType;"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 745
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 747
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 748
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Extension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 750
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 1024
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 1026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 1027
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1030
    .end local p0           #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 601
    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 602
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clear()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/google/protobuf/Extension;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;*>;)TMessageType;"
        }
    .end annotation

    .prologue
    .line 756
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;*>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 757
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 758
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 759
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 760
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 996
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 998
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 1002
    .end local p0           #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected extensionsAreInitialized()Z
    .locals 1

    .prologue
    .line 765
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSize()I
    .locals 1

    .prologue
    .line 858
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method protected extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .prologue
    .line 861
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    return v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    #calls: Lcom/google/protobuf/GeneratedMutableMessage;->getAllFieldsMutable()Ljava/util/Map;
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->access$600(Lcom/google/protobuf/GeneratedMutableMessage;)Ljava/util/Map;

    move-result-object v0

    .line 874
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getExtensionFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 875
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public final getExtension(Lcom/google/protobuf/Extension;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;TType;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 646
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    .line 647
    .local v1, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v3

    .line 648
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 649
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 671
    :cond_0
    :goto_0
    return-object v2

    .line 651
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_3

    .line 656
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 657
    .local v0, defaultBytes:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    goto :goto_0

    .line 659
    .end local v0           #defaultBytes:Lcom/google/protobuf/ByteString;
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/protobuf/Extension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {p1, v3}, Lcom/google/protobuf/Extension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 668
    .local v2, result:Ljava/lang/Object;,"TType;"
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    check-cast v2, Ljava/util/List;

    .end local v2           #result:Ljava/lang/Object;,"TType;"
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public final getExtension(Lcom/google/protobuf/Extension;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 682
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 683
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/Extension;->singularFromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/Extension;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 637
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 638
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v1

    return v1
.end method

.method protected getExtensionFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 4
    .parameter "field"

    .prologue
    .line 880
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 881
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 882
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 883
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_4

    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 906
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 886
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_2

    .line 889
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/DynamicMutableMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v1

    goto :goto_0

    .line 891
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v3, :cond_3

    .line 893
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 894
    .local v0, defaultBytes:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 896
    .end local v0           #defaultBytes:Lcom/google/protobuf/ByteString;
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 899
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    check-cast v1, Ljava/util/List;

    .end local v1           #value:Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 906
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getMutableExtension(Lcom/google/protobuf/Extension;)Lcom/google/protobuf/MutableMessage;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type::",
            "Lcom/google/protobuf/MutableMessage;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;TType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 691
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 692
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    .line 694
    .local v1, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v4, v5, :cond_0

    .line 695
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "getMutableExtension() called on a non-Message type."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 698
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "getMutableExtension() called on a repeated type."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v3

    .line 703
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 704
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableMessageLite;

    .line 706
    .local v0, default_instance:Lcom/google/protobuf/MutableMessageLite;
    invoke-interface {v0}, Lcom/google/protobuf/MutableMessageLite;->newMessageForType()Lcom/google/protobuf/MutableMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MutableMessage;

    .line 707
    .local v2, message:Lcom/google/protobuf/MutableMessage;,"TType;"
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v4, v1, v2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 710
    .end local v0           #default_instance:Lcom/google/protobuf/MutableMessageLite;
    .end local v2           #message:Lcom/google/protobuf/MutableMessage;,"TType;"
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/protobuf/Extension;->fromReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MutableMessage;

    move-object v2, v4

    goto :goto_0
.end method

.method public getMutableField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 4
    .parameter "field"

    .prologue
    .line 912
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 913
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 914
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 915
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 916
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v2, v3, :cond_0

    .line 917
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "getMutable() called on a non-Message type."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "getMutable() called on a repeated type."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 924
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 925
    .local v1, value:Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 936
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/DynamicMutableMessage;->newMessage(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMutableMessage;

    move-result-object v0

    .line 938
    .local v0, message:Lcom/google/protobuf/MutableMessage;
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v2, p1, v0}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 944
    .end local v0           #message:Lcom/google/protobuf/MutableMessage;
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v1       #value:Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    .line 941
    goto :goto_0

    .line 944
    .end local v1           #value:Ljava/lang/Object;
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 961
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    .line 965
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage;->getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 950
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 952
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    .line 954
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I

    move-result v0

    goto :goto_0
.end method

.method public final hasExtension(Lcom/google/protobuf/Extension;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;TType;>;)Z"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;TType;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 629
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 971
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    .line 975
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    goto :goto_0
.end method

.method public immutableCopy()Lcom/google/protobuf/Message;
    .locals 2

    .prologue
    .line 792
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->internalImmutableDefault()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/protobuf/GeneratedMutableMessageLite;->internalCopyToBuilder(Lcom/google/protobuf/MutableMessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .line 800
    .local v0, builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->cloneWithAllFieldsToImmutable()Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->internalSetExtensionSet(Lcom/google/protobuf/FieldSet;)V

    .line 802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 803
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v1

    return-object v1

    .line 797
    .end local v0           #builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->internalImmutableDefault()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    .restart local v0       #builder:Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    goto :goto_0
.end method

.method public bridge synthetic immutableCopy()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->immutableCopy()Lcom/google/protobuf/Message;

    move-result-object v0

    return-object v0
.end method

.method internalSetExtensionSet(Lcom/google/protobuf/FieldSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extensions:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    .line 596
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 770
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMutableMessage;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensionsAreInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final mergeExtensionFields(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 1036
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 1037
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    iget-object v1, p1, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 1038
    return-void
.end method

.method protected newExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
            "<TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 850
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    new-instance v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;-><init>(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;ZLcom/google/protobuf/GeneratedMutableMessage$1;)V

    return-object v0
.end method

.method protected newMessageSetExtensionWriter()Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage",
            "<TMessageType;>.ExtensionWriter;"
        }
    .end annotation

    .prologue
    .line 853
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    new-instance v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage$ExtensionWriter;-><init>(Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;ZLcom/google/protobuf/GeneratedMutableMessage$1;)V

    return-object v0
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 6
    .parameter "input"
    .parameter "unknownFields"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 783
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;

    invoke-direct {v4, p0}, Lcom/google/protobuf/MessageReflection$MutableMessageAdapter;-><init>(Lcom/google/protobuf/MutableMessage;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/MessageReflection;->mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z

    move-result v0

    return v0
.end method

.method public final setExtension(Lcom/google/protobuf/Extension;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 3
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TMessageType;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 731
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 732
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 733
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 734
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1, p3}, Lcom/google/protobuf/Extension;->singularToReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 737
    return-object p0
.end method

.method public final setExtension(Lcom/google/protobuf/Extension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Extension",
            "<TMessageType;TType;>;TType;)TMessageType;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    .local p1, extension:Lcom/google/protobuf/Extension;,"Lcom/google/protobuf/Extension<TMessageType;TType;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 719
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/Extension;)V

    .line 720
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 721
    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 722
    .local v0, descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Extension;->toReflectionType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 723
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1
    .parameter "field"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 982
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 983
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 985
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 989
    .end local p0           #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TMessageType;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->assertMutable()V

    .line 1010
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 1012
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->ensureExtensionsIsMutable()V

    .line 1013
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/FieldSet;->setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 1016
    .end local p0           #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :goto_0
    return-object p0

    .restart local p0       #this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/MutableMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 585
    .local p0, this:Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage;,"Lcom/google/protobuf/GeneratedMutableMessage$ExtendableMutableMessage<TMessageType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMutableMessage;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMutableMessage;

    move-result-object v0

    return-object v0
.end method
