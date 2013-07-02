.class final Lcom/google/glass/voice/VoiceConfigDescriptor$1;
.super Ljava/lang/Object;
.source "VoiceConfigDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceConfigDescriptor;
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
        "Lcom/google/glass/voice/VoiceConfigDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 7
    .parameter "in"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, customPhrases:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, customTags:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 209
    .local v4, disambiguationCommandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v6, systemVoiceConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/glass/voice/SystemVoiceConfig;>;"
    const-class v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 211
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/voice/SystemVoiceConfig;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/voice/SystemVoiceConfig;

    .line 213
    .local v1, systemVoiceConfigs:[Lcom/google/glass/voice/SystemVoiceConfig;
    new-instance v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/VoiceConfigDescriptor;-><init>([Lcom/google/glass/voice/SystemVoiceConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Lcom/google/glass/voice/VoiceConfigDescriptor$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfigDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1
    .parameter "size"

    .prologue
    .line 219
    new-array v0, p1, [Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceConfigDescriptor$1;->newArray(I)[Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method
