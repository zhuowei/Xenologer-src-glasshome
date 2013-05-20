.class public interface abstract annotation Lcom/google/common/annotations/VisibleForTesting;
.super Ljava/lang/Object;
.source "VisibleForTesting.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/common/annotations/VisibleForTesting;
        productionVisibility = .enum Lcom/google/common/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/annotations/VisibleForTesting$Visibility;
    }
.end annotation


# virtual methods
.method public abstract productionVisibility()Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation
.end method
