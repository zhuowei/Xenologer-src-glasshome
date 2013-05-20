.class public Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
.super Ljava/lang/Object;
.source "UiConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/UiConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private headerBackgroundResourceId:I

.field private sectionHeaderBackgroundResourceId:I

.field private sectionHeaderFontColor:I

.field private shouldHideTitleBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->shouldHideTitleBar:Z

    .line 25
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->headerBackgroundResourceId:I

    .line 26
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderBackgroundResourceId:I

    .line 27
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderFontColor:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;-><init>(Lcom/google/userfeedback/android/api/UiConfigurationOptions$1;)V

    .line 51
    .local v0, config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    iget-boolean v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->shouldHideTitleBar:Z

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setHideTitleBar(Z)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$100(Lcom/google/userfeedback/android/api/UiConfigurationOptions;Z)V

    .line 52
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->headerBackgroundResourceId:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setHeaderBackgroundResourceId(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$200(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 53
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderBackgroundResourceId:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setSectionHeaderBackgroundResourceId(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$300(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 54
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderFontColor:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setSectionHeaderFontColor(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$400(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 55
    return-object v0
.end method

.method public hideTitleBar(Z)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "shouldHideTitleBar"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->shouldHideTitleBar:Z

    .line 31
    return-object p0
.end method

.method public setHeaderBackground(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->headerBackgroundResourceId:I

    .line 36
    return-object p0
.end method

.method public setSectionHeaderBackground(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 40
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderBackgroundResourceId:I

    .line 41
    return-object p0
.end method

.method public setSectionHeaderFontColor(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 45
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderFontColor:I

    .line 46
    return-object p0
.end method
