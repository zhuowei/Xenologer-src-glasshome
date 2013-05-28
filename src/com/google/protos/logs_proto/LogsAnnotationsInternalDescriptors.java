package com.google.protos.logs_proto;

import com.google.protobuf.DescriptorProtosInternalDescriptors;
import com.google.protobuf.Descriptors.FileDescriptor;
import com.google.protobuf.Descriptors.FileDescriptor.InternalDescriptorAssigner;
import com.google.protobuf.ExtensionRegistry;

public class LogsAnnotationsInternalDescriptors
{
  public static Descriptors.FileDescriptor descriptor;

  static
  {
    String[] arrayOfString = { "", "OGSID_SENSITIVE_TIMESTAMP\020\004\022\035\n\031LOGSID_SENSITIVE_LOCATION\020\005\022\037\n\033LOGSID_APPROXIMATE_LOCATION\020\017\022\032\n\026LOGSID_COARSE_LOCATION\020\006\022\031\n\025LOGSID_OTHER_LOCATION\020\t\022\033\n\027LOGSID_OTHER_VERSION_ID\020\007\022\022\n\016LOGSID_REFERER\020\b\022!\n\035LOGSID_THIRD_PARTY_PARAMETERS\020\020\022 \n\034LOGSID_OTHER_PSEUDONYMOUS_ID\020\n\022\017\n\013LOGSID_PREF\020\013\022\023\n\017LOGSID_ZWIEBACK\020\f\022\023\n\017LOGSID_BISCOTTI\020\r\022\034\n\030LOGSID_CUSTOM_SESSION_ID\020\016\022\034\n\030LOGSID_OTHER_PERSONAL_ID\020\024\022\022\n\016LOGSID_GAIA_I", "D\020\025\022\020\n\fLOGSID_EMAIL\020\026\022\023\n\017LOGSID_USERNAME\020\027\022\027\n\023LOGSID_PHONE_NUMBER\020\030\022\032\n\025LOGSID_GAIA_ID_PUBLIC\020Ï\001\022!\n\035LOGSID_OTHER_AUTHENTICATED_ID\020\036\022#\n\037LOGSID_OTHER_UNAUTHENTICATED_ID\020\037\022!\n\035LOGSID_PARTNER_OR_CUSTOMER_ID\020 \022\027\n\023LOGSID_PUBLISHER_ID\020#\022\024\n\020LOGSID_DASHER_ID\020!\022\031\n\025LOGSID_FOCUS_GROUP_ID\020\"\022!\n\035LOGSID_OTHER_MOBILE_DEVICE_ID\0202\022\037\n\033LOGSID_GSERVICES_ANDROID_ID\0203\022\026\n\022LOGSID_HARDWARE_ID\0204\022\024\n\020LOGSID_MSISDN_ID\0205\022\032\n\026LOGSID", "", "ptions\030¬¦­\n \001(\0162\032.logs_proto.IdentifierType:\013LOGSID_NONE:6\n\016temp_logs_only\022\024.proto2.FieldOptions\030µå§\n \001(\b:\005false:6\n\016is_private_log\022\024.proto2.FieldOptions\030®î\013 \001(\b:\005false:=\n\025not_logged_in_sawmill\022\024.proto2.FieldOptions\030 ¦\n \001(\b:\005false:H\n\rfield_details\022\024.proto2.FieldOptions\030¨\n \001(\0132\030.logs_proto.FieldDetails:4\n\fis_encrypted\022\024.proto2.FieldOptions\030²áÚ\f \001(\b:\005false:V\n\ffield_format\022\024.proto2.FieldOptions\030¾á", "Ó\r \001(\0162\026.logs_proto.FormatType:\017LOGSFORMAT_NONE:W\n\013msg_id_type\022\026.proto2.MessageOptions\030¬¦­\n \001(\0162\032.logs_proto.IdentifierType:\013LOGSID_NONE:<\n\022msg_temp_logs_only\022\026.proto2.MessageOptions\030µå§\n \001(\b:\005false:C\n\031msg_not_logged_in_sawmill\022\026.proto2.MessageOptions\030 ¦\n \001(\b:\005false:J\n\013msg_details\022\026.proto2.MessageOptions\030¨\n \001(\0132\032.logs_proto.MessageDetails:<\n\031field_encryption_key_name\022\026.proto2.MessageOptions\030²áÚ", "\f \001(\t:M\n&file_not_used_for_logging_except_enums\022\023.proto2.FileOptions\030 ¦\n \001(\b:\005false:G\n file_vetted_for_logs_annotations\022\023.proto2.FileOptions\030ÓÑé\r \001(\b:\005falseB\006\020\002 \002(\002" };
    Descriptors.FileDescriptor.InternalDescriptorAssigner local1 = new Descriptors.FileDescriptor.InternalDescriptorAssigner()
    {
      public ExtensionRegistry assignDescriptors(Descriptors.FileDescriptor paramAnonymousFileDescriptor)
      {
        LogsAnnotationsInternalDescriptors.descriptor = paramAnonymousFileDescriptor;
        return null;
      }
    };
    Descriptors.FileDescriptor[] arrayOfFileDescriptor = new Descriptors.FileDescriptor[1];
    arrayOfFileDescriptor[0] = DescriptorProtosInternalDescriptors.descriptor;
    Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(arrayOfString, arrayOfFileDescriptor, local1);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.protos.logs_proto.LogsAnnotationsInternalDescriptors
 * JD-Core Version:    0.6.2
 */