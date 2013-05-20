.class public Lcom/google/googlex/glass/common/proto/AudioClipInternalDescriptors;
.super Ljava/lang/Object;
.source "AudioClipInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nGjava/com/google/googlex/glass/common/clientserverproto/audio_clip.proto\u0012\u001agooglex_glass_common_proto\"G\n\u000bAudioClipId\u0012\u0015\n\remail_address\u0018\u0001 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\u0003\u0012\u000e\n\u0006random\u0018\u0003 \u0001(\u000c\"\u0087\u0001\n\u0013AudioClipTranscript\u0012D\n\u0005token\u0018\u0001 \u0003(\n25.googlex_glass_common_proto.AudioClipTranscript.Token\u001a*\n\u0005Token\u0012\u0012\n\nconfidence\u0018\u0002 \u0001(\u0002\u0012\r\n\u0005token\u0018\u0003 \u0001(\t\"\u00b3\u0002\n\u0014PostAudioClipRequest\u00123\n\u0002id\u0018\u0001 \u0001(\u000b2\'.googlex_glass_common_proto.AudioClipId\u0012\u0011\n\traw_au"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "dio\u0018\u0002 \u0001(\u000c\u0012B\n\u000caudio_format\u0018\u0003 \u0001(\u000e2\'.googlex_glass_common_proto.AudioFormat:\u0003AMR\u0012\u0019\n\ntranscribe\u0018\u0004 \u0001(\u0008:\u0005false\u0012\u001a\n\u000bstore_audio\u0018\u0005 \u0001(\u0008:\u0005false\u0012\u001f\n\u0010store_transcript\u0018\u0006 \u0001(\u0008:\u0005false\u0012\u0017\n\u000fclient_platform\u0018\u0007 \u0001(\t\u0012\u001e\n\u000fstore_raw_audio\u0018\u0008 \u0001(\u0008:\u0005false\"\u00c4\u0001\n\u0015PostAudioClipResponse\u0012\u0017\n\u000fhtml_transcript\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010plain_transcript\u0018\u0002 \u0001(\t\u0012\u0015\n\nconfidence\u0018\u0003 \u0001(\u0002:\u00010\u0012\u001f\n\u0017audio_clip_download_url\u0018\u0004 \u0001(\t\u0012\u001b\n\u0013audio_clip_play_url\u0018\u0005 \u0001(\t\u0012#\n\u001braw_audio_cl"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ip_download_url\u0018\u0006 \u0001(\t*\u001f\n\u000bAudioFormat\u0012\u0007\n\u0003AMR\u0010\u0001\u0012\u0007\n\u0003WAV\u0010\u0002B+\n%com.google.googlex.glass.common.proto0\u0001P\u0001"

    aput-object v3, v1, v2

    .line 35
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/AudioClipInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AudioClipInternalDescriptors$1;-><init>()V

    .line 43
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
