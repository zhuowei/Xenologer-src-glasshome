package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class AudioClipInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nGjava/com/google/googlex/glass/common/clientserverproto/audio_clip.proto\022\032googlex_glass_common_proto\"G\n\013AudioClipId\022\025\n\remail_address\030\001 \001(\t\022\021\n\ttimestamp\030\002 \001(\003\022\016\n\006random\030\003 \001(\f\"\001\n\023AudioClipTranscript\022D\n\005token\030\001 \003(\n25.googlex_glass_common_proto.AudioClipTranscript.Token\032*\n\005Token\022\022\n\nconfidence\030\002 \001(\002\022\r\n\005token\030\003 \001(\t\"³\002\n\024PostAudioClipRequest\0223\n\002id\030\001 \001(\0132'.googlex_glass_common_proto.AudioClipId\022\021\n\traw_au", "dio\030\002 \001(\f\022B\n\faudio_format\030\003 \001(\0162'.googlex_glass_common_proto.AudioFormat:\003AMR\022\031\n\ntranscribe\030\004 \001(\b:\005false\022\032\n\013store_audio\030\005 \001(\b:\005false\022\037\n\020store_transcript\030\006 \001(\b:\005false\022\027\n\017client_platform\030\007 \001(\t\022\036\n\017store_raw_audio\030\b \001(\b:\005false\"Ä\001\n\025PostAudioClipResponse\022\027\n\017html_transcript\030\001 \001(\t\022\030\n\020plain_transcript\030\002 \001(\t\022\025\n\nconfidence\030\003 \001(\002:\0010\022\037\n\027audio_clip_download_url\030\004 \001(\t\022\033\n\023audio_clip_play_url\030\005 \001(\t\022#\n\033raw_audio_cl", "ip_download_url\030\006 \001(\t*\037\n\013AudioFormat\022\007\n\003AMR\020\001\022\007\n\003WAV\020\002B+\n%com.google.googlex.glass.common.proto0\001P\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        AudioClipInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AudioClipInternalDescriptors
 * JD-Core Version:    0.6.2
 */