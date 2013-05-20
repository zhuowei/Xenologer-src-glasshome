.class public Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
.super Ljava/lang/Object;
.source "UserFeedbackReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Row"
.end annotation


# instance fields
.field public convertType:I

.field public field:Ljava/lang/reflect/Field;

.field public imageBytes:[B

.field public labelResId:I

.field public report:Ljava/lang/Object;

.field public viewerActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 6
    .parameter "labelResId"

    .prologue
    const/4 v2, 0x0

    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    .line 105
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V
    .locals 4
    .parameter "labelResId"
    .parameter "report"
    .parameter "field"
    .parameter
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->labelResId:I

    .line 112
    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    .line 113
    iput-object p3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    .line 114
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    .line 115
    iput p5, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->convertType:I

    .line 116
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    .line 121
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/IllegalAccessException;
    iput-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    .line 124
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    iput-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    goto :goto_0
.end method


# virtual methods
.method isExpandable()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeader()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isImageView()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->imageBytes:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
