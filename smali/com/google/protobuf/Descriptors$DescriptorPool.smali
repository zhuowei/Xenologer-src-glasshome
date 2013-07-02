.class final Lcom/google/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;,
        Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allowUnknownDependencies:Z

.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final enumValuesByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/google/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1744
    const-class v0, Lcom/google/protobuf/Descriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lcom/google/protobuf/Descriptors$FileDescriptor;Z)V
    .locals 6
    .parameter "dependencies"
    .parameter "allowUnknownDependencies"

    .prologue
    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    .line 1788
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    .line 1790
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    .line 1754
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    .line 1755
    iput-boolean p2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->allowUnknownDependencies:Z

    .line 1757
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 1758
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    aget-object v5, p1, v2

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1759
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/google/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 1757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1762
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1764
    .local v0, dependency:Lcom/google/protobuf/Descriptors$FileDescriptor;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    :try_end_0
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1765
    :catch_0
    move-exception v1

    .line 1769
    .local v1, e:Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    sget-boolean v4, Lcom/google/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1772
    .end local v0           #dependency:Lcom/google/protobuf/Descriptors$FileDescriptor;
    .end local v1           #e:Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    :cond_2
    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    return-object v0
.end method

.method private importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 1776
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPublicDependencies()Ljava/util/List;

    move-result-object v2

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

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1777
    .local v0, dependency:Lcom/google/protobuf/Descriptors$FileDescriptor;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1778
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_0

    .line 1781
    .end local v0           #dependency:Lcom/google/protobuf/Descriptors$FileDescriptor;
    :cond_1
    return-void
.end method

.method static validateSymbolName(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 8
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2094
    invoke-interface {p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2095
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2096
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Missing name."

    invoke-direct {v4, p0, v5, v7}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 2098
    :cond_0
    const/4 v3, 0x1

    .line 2099
    .local v3, valid:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2100
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2103
    .local v0, c:C
    const/16 v4, 0x80

    if-lt v0, v4, :cond_1

    .line 2104
    const/4 v3, 0x0

    .line 2108
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v1, :cond_3

    .line 2099
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2112
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2115
    .end local v0           #c:C
    :cond_4
    if-nez v3, :cond_5

    .line 2116
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a valid identifier."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 2120
    :cond_5
    return-void
.end method


# virtual methods
.method addEnumValueByNumber(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 2078
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V

    .line 2080
    .local v0, key:Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 2081
    .local v1, old:Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-eqz v1, :cond_0

    .line 2082
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    :cond_0
    return-void
.end method

.method addFieldByNumber(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 5
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 2059
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V

    .line 2061
    .local v0, key:Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2062
    .local v1, old:Lcom/google/protobuf/Descriptors$FieldDescriptor;
    if-eqz v1, :cond_0

    .line 2063
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    new-instance v2, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already been used in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" by field \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v2

    .line 2070
    :cond_0
    return-void
.end method

.method addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 6
    .parameter "fullName"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 2007
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2009
    .local v0, dotpos:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2010
    move-object v1, p1

    .line 2016
    .local v1, name:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v4, v1, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 2019
    .local v2, old:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_1

    .line 2020
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    instance-of v3, v2, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v3, :cond_1

    .line 2022
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined (as something other than a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "package) in file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 2012
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #old:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 2013
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 2027
    .restart local v2       #old:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_1
    return-void
.end method

.method addSymbol(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 7
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 1949
    invoke-static {p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->validateSymbolName(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V

    .line 1951
    invoke-interface {p1}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 1952
    .local v1, fullName:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1954
    .local v0, dotpos:I
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1955
    .local v2, old:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_2

    .line 1956
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    invoke-interface {p1}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1959
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1960
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1963
    :cond_0
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined in \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1969
    :cond_1
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined in file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1974
    :cond_2
    return-void
.end method

.method findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 1
    .parameter "fullName"

    .prologue
    .line 1795
    sget-object v0, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    return-object v0
.end method

.method findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 4
    .parameter "fullName"
    .parameter "filter"

    .prologue
    .line 1803
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1804
    .local v2, result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_2

    .line 1805
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v3, :cond_1

    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, v2

    .line 1823
    :goto_0
    return-object v3

    .line 1812
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1813
    .local v0, dependency:Lcom/google/protobuf/Descriptors$FileDescriptor;
    #getter for: Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1300(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v3

    iget-object v3, v3, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1814
    .restart local v2       #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_3

    .line 1815
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v3, :cond_5

    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    move-object v3, v2

    .line 1818
    goto :goto_0

    .line 1823
    .end local v0           #dependency:Lcom/google/protobuf/Descriptors$FileDescriptor;
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 1834
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 1828
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 10
    .parameter "name"
    .parameter "relativeTo"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 1854
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1856
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1857
    .local v3, fullname:Ljava/lang/String;
    invoke-virtual {p0, v3, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1919
    .local v4, result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :goto_0
    if-nez v4, :cond_6

    .line 1920
    iget-boolean v7, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->allowUnknownDependencies:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p3, v7, :cond_5

    .line 1921
    invoke-static {}, Lcom/google/protobuf/Descriptors;->access$000()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The descriptor for message type \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" can not be found and a placeholder is created for it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1929
    new-instance v4, Lcom/google/protobuf/Descriptors$Descriptor;

    .end local v4           #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    invoke-direct {v4, v3}, Lcom/google/protobuf/Descriptors$Descriptor;-><init>(Ljava/lang/String;)V

    .line 1932
    .restart local v4       #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    iget-object v7, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v4}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    .line 1939
    .end local v4           #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .local v5, result:Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 1872
    .end local v3           #fullname:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/Object;
    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1874
    .local v2, firstPartLength:I
    if-ne v2, v9, :cond_1

    .line 1875
    move-object v1, p1

    .line 1882
    .local v1, firstPart:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v6, scopeToTry:Ljava/lang/StringBuilder;
    :goto_3
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1888
    .local v0, dotpos:I
    if-ne v0, v9, :cond_2

    .line 1889
    move-object v3, p1

    .line 1890
    .restart local v3       #fullname:Ljava/lang/String;
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1891
    .restart local v4       #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    goto :goto_0

    .line 1877
    .end local v0           #dotpos:I
    .end local v1           #firstPart:Ljava/lang/String;
    .end local v3           #fullname:Ljava/lang/String;
    .end local v4           #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .end local v6           #scopeToTry:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #firstPart:Ljava/lang/String;
    goto :goto_2

    .line 1893
    .restart local v0       #dotpos:I
    .restart local v6       #scopeToTry:Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1896
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, v7, v8}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1900
    .restart local v4       #result:Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v4, :cond_4

    .line 1901
    if-eq v2, v9, :cond_3

    .line 1905
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1906
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v4

    .line 1909
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1910
    .restart local v3       #fullname:Ljava/lang/String;
    goto/16 :goto_0

    .line 1914
    .end local v3           #fullname:Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 1935
    .end local v0           #dotpos:I
    .end local v1           #firstPart:Ljava/lang/String;
    .end local v2           #firstPartLength:I
    .end local v6           #scopeToTry:Ljava/lang/StringBuilder;
    .restart local v3       #fullname:Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is not defined."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, p2, v8, v9}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v7

    :cond_6
    move-object v5, v4

    .line 1939
    .restart local v5       #result:Ljava/lang/Object;
    goto :goto_1
.end method
