package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.GeneratedMessage.FieldAccessorTable;
import java.util.List;

public final class AudioClip
{
  private static Descriptors.FileDescriptor descriptor = AudioClipInternalDescriptors.descriptor;
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AudioClipId_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AudioClipId_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AudioClipId_descriptor, new String[] { "EmailAddress", "Timestamp", "Random" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor = (Descriptors.Descriptor)internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor.getNestedTypes().get(0);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AudioClipTranscript_Token_descriptor, new String[] { "Confidence", "Token" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(1);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_AudioClipTranscript_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_AudioClipTranscript_descriptor, new String[] { "Token" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(2);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_PostAudioClipRequest_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_PostAudioClipRequest_descriptor, new String[] { "Id", "RawAudio", "AudioFormat", "Transcribe", "StoreAudio", "StoreTranscript", "ClientPlatform", "StoreRawAudio" });
  static Descriptors.Descriptor internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor = (Descriptors.Descriptor)getDescriptor().getMessageTypes().get(3);
  static GeneratedMessage.FieldAccessorTable internal_static_googlex_glass_common_proto_PostAudioClipResponse_fieldAccessorTable = new GeneratedMessage.FieldAccessorTable(internal_static_googlex_glass_common_proto_PostAudioClipResponse_descriptor, new String[] { "HtmlTranscript", "PlainTranscript", "Confidence", "AudioClipDownloadUrl", "AudioClipPlayUrl", "RawAudioClipDownloadUrl" });

  public static Descriptors.FileDescriptor getDescriptor()
  {
    return descriptor;
  }

  public static void registerAllExtensions(ExtensionRegistry paramExtensionRegistry)
  {
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.AudioClip
 * JD-Core Version:    0.6.2
 */