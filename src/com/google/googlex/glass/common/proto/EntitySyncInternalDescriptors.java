package com.google.googlex.glass.common.proto;

import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class EntitySyncInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "\nHjava/com/google/googlex/glass/common/clientserverproto/entity_sync.proto\022\032googlex_glass_common_proto\032Ejava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"H\n\021EntitySyncRequest\022\021\n\tdevice_id\030\005 \001(\t\022 \n\021all_share_targets\030\006 \001(\b:\005false\"J\n\022EntitySyncResponse\0224\n\bentities\030\001 \003(\0132\".googlex_glass_common_proto.EntityB)\n%com.google.googlex.glass.common.protoP\001" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        EntitySyncInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor[] arrayOfFileDescriptor = new Descriptors.FileDescriptor[1];
    arrayOfFileDescriptor[0] = TimelineInternalDescriptors.descriptor;
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, arrayOfFileDescriptor, local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.googlex.glass.common.proto.EntitySyncInternalDescriptors
 * JD-Core Version:    0.6.2
 */