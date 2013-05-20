.class public Lcom/google/protobuf/TextFormat$Parser$Builder;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allowUnknownFields:Z

.field private singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    .line 1203
    sget-object v0, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->ALLOW_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    iput-object v0, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/protobuf/TextFormat$Parser;
    .locals 4

    .prologue
    .line 1230
    new-instance v0, Lcom/google/protobuf/TextFormat$Parser;

    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/TextFormat$Parser;-><init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormat$1;)V

    return-object v0
.end method

.method public setAllowUnknownFields(Z)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .parameter "allowUnknownFields"

    .prologue
    .line 1217
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->allowUnknownFields:Z

    .line 1218
    return-object p0
.end method

.method public setSingularOverwritePolicy(Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 0
    .parameter "p"

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Parser$Builder;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1226
    return-object p0
.end method
