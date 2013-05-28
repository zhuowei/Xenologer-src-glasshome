package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class BatchInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nBjava/com/google/googlex/glass/common/clientserverproto/batch.proto\022\032googlex_glass_common_proto\"S\n\tAuthToken\0227\n\004type\030\001 \001(\0162).googlex_glass_common_proto.AuthTokenType\022\r\n\005value\030\002 \001(\t\"_\n\013BatchHeader\0229\n\nauth_token\030\001 \003(\0132%.googlex_glass_common_proto.AuthToken\022\025\n\rdispatcher_id\030\002 \001(\003\",\n\016RequestWrapper\022\f\n\004path\030\001 \001(\t\022\f\n\004data\030\002 \001(\f\"\001\n\fBatchRequest\0227\n\006header\030\001 \001(\0132'.googlex_glass_common_proto.BatchHeader\022;", "\n\007request\030\002 \003(\0132*.googlex_glass_common_proto.RequestWrapper\"Ú\001\n\017ResponseWrapper\022I\n\nerror_code\030\001 \001(\01625.googlex_glass_common_proto.ResponseWrapper.ErrorCode\022\f\n\004data\030\002 \001(\f\"n\n\tErrorCode\022\023\n\017UNKNOWN_REQUEST\020\001\022\022\n\016NOT_AUTHORIZED\020\002\022\021\n\rINVALID_PROTO\020\003\022\022\n\016INTERNAL_ERROR\020\004\022\021\n\rNETWORK_ERROR\020\005\"N\n\rBatchResponse\022=\n\bresponse\030\001 \003(\0132+.googlex_glass_common_proto.ResponseWrapper*$\n\rAuthTokenType\022\023\n\017ANDROID_SERVICE\020\001B+", "\n%com.google.googlex.glass.common.proto0\001P\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        BatchInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, new Descriptors.FileDescriptor[0], local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.BatchInternalDescriptors
 * JD-Core Version:    0.6.2
 */