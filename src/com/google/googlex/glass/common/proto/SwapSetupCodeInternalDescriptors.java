package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class SwapSetupCodeInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nLjava/com/google/googlex/glass/common/clientserverproto/swap_setup_code.proto\022\032googlex_glass_common_proto\":\n\024SwapSetupCodeRequest\022\f\n\004code\030\001 \001(\t\022\024\n\fredirect_url\030\002 \001(\t\"U\n\025SwapSetupCodeResponse\022\017\n\007success\030\001 \001(\b\022\024\n\faccess_token\030\002 \001(\t\022\025\n\rrefresh_token\030\003 \001(\tB+\n%com.google.googlex.glass.common.proto0\001P\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        SwapSetupCodeInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.SwapSetupCodeInternalDescriptors
 * JD-Core Version:    0.6.2
 */