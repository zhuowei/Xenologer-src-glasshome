.class public final Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Example"
.end annotation


# static fields
.field public static final CAPABILITY_FRONT_FACING_CAMERA:I = 0x2

.field public static final CAPABILITY_REAR_FACING_CAMERA:I = 0x1

.field public static final CAPABILITY_TELEPHONY:I = 0x0

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x7

.field public static final LOCALIZED_IMAGE_FIELD_NUMBER:I = 0xb

.field public static final LOCALIZED_QUERY_FIELD_NUMBER:I = 0xc

.field public static final MIN_VERSION_FIELD_NUMBER:I = 0x1

.field public static final QUERY_FIELD_NUMBER:I = 0xd

.field public static final RELATIVE_DAYS_FIELD_NUMBER:I = 0xa

.field public static final RELATIVE_SECONDS_FIELD_NUMBER:I = 0x9

.field public static final REQUIRED_CAPABILITY_FIELD_NUMBER:I = 0x4

.field public static final RETIRE_VERSION_FIELD_NUMBER:I = 0x2

.field public static final SUBSTITUTION_DATE_DAY:I = 0x0

.field public static final SUBSTITUTION_DATE_DAY_OF_WEEK:I = 0x2

.field public static final SUBSTITUTION_DATE_MONTH:I = 0x1

.field public static final SUBSTITUTION_FIELD_NUMBER:I = 0x6

.field public static final SUBSTITUTION_LOCAL_CONTACT_NAME_WITH_EMAIL:I = 0x4

.field public static final SUBSTITUTION_LOCAL_CONTACT_NAME_WITH_PHONE:I = 0x3

.field public static final SUBSTITUTION_LOCAL_CONTACT_PHONE_NUMBER:I = 0x5

.field public static final TIME_FIELD_NUMBER:I = 0x8

.field public static final UNUSED_LOCALE_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasImageUrl:Z

.field private hasLocalizedImage:Z

.field private hasMinVersion:Z

.field private hasQuery:Z

.field private hasRelativeDays:Z

.field private hasRelativeSeconds:Z

.field private hasRetireVersion:Z

.field private hasTime:Z

.field private imageUrl_:Ljava/lang/String;

.field private localizedImage_:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

.field private localizedQuery_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$LocalizedString;",
            ">;"
        }
    .end annotation
.end field

.field private minVersion_:I

.field private query_:Ljava/lang/String;

.field private relativeDays_:I

.field private relativeSeconds_:I

.field private requiredCapability_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private retireVersion_:I

.field private substitution_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

.field private unusedLocale_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8363
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8381
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 8398
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 8414
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    .line 8447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    .line 8474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    .line 8508
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 8524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    .line 8552
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage_:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 8572
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 8589
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 8609
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 8626
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 8702
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    .line 8363
    return-void
.end method


# virtual methods
.method public addLocalizedQuery(Lcom/google/majel/proto/ActionV2Protos$LocalizedString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8491
    if-nez p1, :cond_0

    .line 8492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8494
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    .line 8497
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8498
    return-object p0
.end method

.method public addRequiredCapability(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 2
    .parameter "value"

    .prologue
    .line 8461
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    .line 8464
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8465
    return-object p0
.end method

.method public addSubstitution(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 2
    .parameter "value"

    .prologue
    .line 8538
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    .line 8541
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8542
    return-object p0
.end method

.method public addUnusedLocale(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8431
    if-nez p1, :cond_0

    .line 8432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8434
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    .line 8437
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8438
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8641
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearMinVersion()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8642
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearRetireVersion()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8643
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearUnusedLocale()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8644
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearRequiredCapability()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8645
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearLocalizedQuery()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8646
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearQuery()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8647
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearSubstitution()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8648
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearLocalizedImage()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8649
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearImageUrl()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8650
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearTime()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8651
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearRelativeSeconds()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8652
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->clearRelativeDays()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    .line 8653
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    .line 8654
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasImageUrl:Z

    .line 8582
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 8583
    return-object p0
.end method

.method public clearLocalizedImage()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasLocalizedImage:Z

    .line 8565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage_:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 8566
    return-object p0
.end method

.method public clearLocalizedQuery()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    .line 8502
    return-object p0
.end method

.method public clearMinVersion()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8390
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasMinVersion:Z

    .line 8391
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 8392
    return-object p0
.end method

.method public clearQuery()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasQuery:Z

    .line 8518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 8519
    return-object p0
.end method

.method public clearRelativeDays()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8635
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeDays:Z

    .line 8636
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 8637
    return-object p0
.end method

.method public clearRelativeSeconds()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8618
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeSeconds:Z

    .line 8619
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 8620
    return-object p0
.end method

.method public clearRequiredCapability()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    .line 8469
    return-object p0
.end method

.method public clearRetireVersion()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8407
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRetireVersion:Z

    .line 8408
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 8409
    return-object p0
.end method

.method public clearSubstitution()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8545
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    .line 8546
    return-object p0
.end method

.method public clearTime()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasTime:Z

    .line 8602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 8603
    return-object p0
.end method

.method public clearUnusedLocale()Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1

    .prologue
    .line 8441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    .line 8442
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8705
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    if-gez v0, :cond_0

    .line 8707
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getSerializedSize()I

    .line 8709
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8573
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedImage()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    .line 8554
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage_:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    return-object v0
.end method

.method public getLocalizedQuery(I)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .parameter "index"

    .prologue
    .line 8481
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    return-object v0
.end method

.method public getLocalizedQueryCount()I
    .locals 1

    .prologue
    .line 8479
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalizedQueryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$LocalizedString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8477
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 8382
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8509
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeDays()I
    .locals 1

    .prologue
    .line 8627
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    return v0
.end method

.method public getRelativeSeconds()I
    .locals 1

    .prologue
    .line 8610
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    return v0
.end method

.method public getRequiredCapability(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 8454
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRequiredCapabilityCount()I
    .locals 1

    .prologue
    .line 8452
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequiredCapabilityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8450
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    return-object v0
.end method

.method public getRetireVersion()I
    .locals 1

    .prologue
    .line 8399
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 8714
    const/4 v3, 0x0

    .line 8715
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasMinVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8716
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getMinVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 8719
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRetireVersion()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8720
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRetireVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 8724
    :cond_1
    const/4 v0, 0x0

    .line 8725
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getUnusedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8726
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 8729
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 8730
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getUnusedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 8733
    const/4 v0, 0x0

    .line 8734
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRequiredCapabilityList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8735
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 8738
    .end local v1           #element:Ljava/lang/Integer;
    :cond_3
    add-int/2addr v3, v0

    .line 8739
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRequiredCapabilityList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 8742
    const/4 v0, 0x0

    .line 8743
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getSubstitutionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8744
    .restart local v1       #element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 8747
    .end local v1           #element:Ljava/lang/Integer;
    :cond_4
    add-int/2addr v3, v0

    .line 8748
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getSubstitutionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 8750
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasImageUrl()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8751
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8754
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasTime()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 8755
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8758
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeSeconds()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8759
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRelativeSeconds()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 8762
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeDays()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 8763
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRelativeDays()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 8766
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasLocalizedImage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8767
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getLocalizedImage()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8770
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getLocalizedQueryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 8771
    .local v1, element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    const/16 v4, 0xc

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 8774
    .end local v1           #element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasQuery()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 8775
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 8778
    :cond_b
    iput v3, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->cachedSize:I

    .line 8779
    return v3
.end method

.method public getSubstitution(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 8531
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSubstitutionCount()I
    .locals 1

    .prologue
    .line 8529
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubstitutionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8527
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    .locals 1

    .prologue
    .line 8591
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    return-object v0
.end method

.method public getUnusedLocale(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 8421
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUnusedLocaleCount()I
    .locals 1

    .prologue
    .line 8419
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUnusedLocaleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8417
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    return-object v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 8574
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasImageUrl:Z

    return v0
.end method

.method public hasLocalizedImage()Z
    .locals 1

    .prologue
    .line 8553
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasLocalizedImage:Z

    return v0
.end method

.method public hasMinVersion()Z
    .locals 1

    .prologue
    .line 8383
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasMinVersion:Z

    return v0
.end method

.method public hasQuery()Z
    .locals 1

    .prologue
    .line 8510
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasQuery:Z

    return v0
.end method

.method public hasRelativeDays()Z
    .locals 1

    .prologue
    .line 8628
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeDays:Z

    return v0
.end method

.method public hasRelativeSeconds()Z
    .locals 1

    .prologue
    .line 8611
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeSeconds:Z

    return v0
.end method

.method public hasRetireVersion()Z
    .locals 1

    .prologue
    .line 8400
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRetireVersion:Z

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 8590
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasTime:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8658
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8787
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8788
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8792
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8793
    :sswitch_0
    return-object p0

    .line 8798
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setMinVersion(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8802
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setRetireVersion(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8806
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->addUnusedLocale(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8810
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->addRequiredCapability(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8814
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->addSubstitution(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8818
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8822
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;-><init>()V

    .line 8823
    .local v1, value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8824
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setTime(Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8828
    .end local v1           #value:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setRelativeSeconds(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8832
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setRelativeDays(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8836
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;-><init>()V

    .line 8837
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8838
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setLocalizedImage(Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8842
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    :sswitch_b
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    .line 8843
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8844
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->addLocalizedQuery(Lcom/google/majel/proto/ActionV2Protos$LocalizedString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8848
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->setQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    goto :goto_0

    .line 8788
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
        0x50 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8360
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8863
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8857
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasImageUrl:Z

    .line 8577
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->imageUrl_:Ljava/lang/String;

    .line 8578
    return-object p0
.end method

.method public setLocalizedImage(Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8556
    if-nez p1, :cond_0

    .line 8557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8559
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasLocalizedImage:Z

    .line 8560
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedImage_:Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 8561
    return-object p0
.end method

.method public setLocalizedQuery(ILcom/google/majel/proto/ActionV2Protos$LocalizedString;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8484
    if-nez p2, :cond_0

    .line 8485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8487
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->localizedQuery_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8488
    return-object p0
.end method

.method public setMinVersion(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasMinVersion:Z

    .line 8386
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->minVersion_:I

    .line 8387
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasQuery:Z

    .line 8513
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->query_:Ljava/lang/String;

    .line 8514
    return-object p0
.end method

.method public setRelativeDays(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeDays:Z

    .line 8631
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeDays_:I

    .line 8632
    return-object p0
.end method

.method public setRelativeSeconds(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeSeconds:Z

    .line 8614
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->relativeSeconds_:I

    .line 8615
    return-object p0
.end method

.method public setRequiredCapability(II)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8457
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->requiredCapability_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8458
    return-object p0
.end method

.method public setRetireVersion(I)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRetireVersion:Z

    .line 8403
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->retireVersion_:I

    .line 8404
    return-object p0
.end method

.method public setSubstitution(II)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8534
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->substitution_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8535
    return-object p0
.end method

.method public setTime(Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "value"

    .prologue
    .line 8593
    if-nez p1, :cond_0

    .line 8594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8596
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasTime:Z

    .line 8597
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->time_:Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    .line 8598
    return-object p0
.end method

.method public setUnusedLocale(ILjava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8424
    if-nez p2, :cond_0

    .line 8425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8427
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->unusedLocale_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8428
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8664
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasMinVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8665
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getMinVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8667
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRetireVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8668
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRetireVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8670
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getUnusedLocaleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8671
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 8673
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRequiredCapabilityList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8674
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_1

    .line 8676
    .end local v0           #element:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getSubstitutionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8677
    .restart local v0       #element:Ljava/lang/Integer;
    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_2

    .line 8679
    .end local v0           #element:Ljava/lang/Integer;
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8680
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8682
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasTime()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8683
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getTime()Lcom/google/majel/proto/ActionDateTimeProtos$ActionTime;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8685
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeSeconds()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8686
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRelativeSeconds()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8688
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasRelativeDays()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8689
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getRelativeDays()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8691
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasLocalizedImage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 8692
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getLocalizedImage()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8694
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getLocalizedQueryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 8695
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_3

    .line 8697
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->hasQuery()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8698
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$HelpAction$Feature$Example;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8700
    :cond_b
    return-void
.end method
