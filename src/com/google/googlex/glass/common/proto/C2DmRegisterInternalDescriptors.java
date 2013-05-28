package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class C2DmRegisterInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nJjava/com/google/googlex/glass/common/clientserverproto/c2dm_register.proto\022\032googlex_glass_common_proto\"Ü\002\n\027C2DMRegistrationRequest\022T\n\006action\030\001 \001(\0162:.googlex_glass_common_proto.C2DMRegistrationRequest.Action:\bREGISTER\022\027\n\017registration_id\030\002 \001(\t\022\021\n\tdevice_id\030\003 \001(\t\022\016\n\006locale\030\004 \001(\t\022\025\n\rmajor_version\030\005 \001(\t\022\017\n\007version\030\006 \001(\003\022\031\n\021device_os_version\030\007 \001(\t\022\027\n\017device_hardware\030\b \001(\t\022\025\n\rgsf_device_id\030\t \001(\003\"<\n\006Act", "", "lex.glass.common.protoP\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        C2DmRegisterInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.C2DmRegisterInternalDescriptors
 * JD-Core Version:    0.6.2
 */