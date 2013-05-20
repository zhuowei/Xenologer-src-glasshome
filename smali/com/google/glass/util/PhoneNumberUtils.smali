.class public Lcom/google/glass/util/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# static fields
.field private static final REGION_US:Ljava/lang/String; = "US"

.field private static final SHORT_NUMBER_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/util/PhoneNumberUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PhoneNumberUtils;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatPhoneNumberForDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 51
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 55
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :cond_2
    invoke-static {p0}, Lcom/google/glass/util/PhoneNumberUtils;->parseNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 62
    .local v0, number:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v0, :cond_0

    .line 63
    sget-object v1, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Lcom/google/glass/util/PhoneNumberUtils;->getRegion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNumberForMobileDialing(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 42
    invoke-static {p0}, Lcom/google/glass/util/PhoneNumberUtils;->parseNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 43
    .local v0, numberToFormat:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    .line 46
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static formatPhoneNumbersForDisplay(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, phoneNumbers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 33
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/util/PhoneNumberUtils;->formatPhoneNumberForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, region:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v0, "US"

    .line 79
    .end local v0           #region:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static parseNumber(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return-object v1

    .line 88
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->phoneNumberUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Lcom/google/glass/util/PhoneNumberUtils;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/google/glass/util/PhoneNumberUtils;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse phone number."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
