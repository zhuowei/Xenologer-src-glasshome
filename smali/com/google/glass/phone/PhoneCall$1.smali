.class final Lcom/google/glass/phone/PhoneCall$1;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/phone/PhoneCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .parameter "in"

    .prologue
    .line 47
    new-instance v0, Lcom/google/glass/phone/PhoneCall;

    invoke-direct {v0, p1}, Lcom/google/glass/phone/PhoneCall;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/phone/PhoneCall;
    .locals 1
    .parameter "size"

    .prologue
    .line 52
    new-array v0, p1, [Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCall$1;->newArray(I)[Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    return-object v0
.end method
