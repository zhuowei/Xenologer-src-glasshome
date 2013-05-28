package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class SetupInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nBjava/com/google/googlex/glass/common/clientserverproto/setup.proto\022\032googlex_glass_common_proto\",\n\027SetupUserAccountRequest\022\021\n\tdevice_id\030\001 \001(\t\"g\n\030SetupUserAccountResponse\022\024\n\fdisplay_name\030\001 \001(\t\022\021\n\tphoto_url\030\002 \001(\t\022\"\n\024use_google_voice_sms\030\003 \001(\b:\004trueB+\n%com.google.googlex.glass.common.proto0\001P\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        SetupInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SetupInternalDescriptors
 * JD-Core Version:    0.6.2
 */