.class public Lcom/google/protobuf/DescriptorProtosInternalDescriptors;
.super Ljava/lang/Object;
.source "DescriptorProtosInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/16 v2, 0x10

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n!net/proto2/proto/descriptor.proto\u0012\u0006proto2\">\n\u0011FileDescriptorSet\u0012)\n\u0004file\u0018\u0001 \u0003(\u000b2\u001b.proto2.FileDescriptorProto\"\u0095\u0003\n\u0013FileDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\t\u0012\u0012\n\ndependency\u0018\u0003 \u0003(\t\u0012\u0019\n\u0011public_dependency\u0018\n \u0003(\u0005\u0012\u0017\n\u000fweak_dependency\u0018\u000b \u0003(\u0005\u0012-\n\u000cmessage_type\u0018\u0004 \u0003(\u000b2\u0017.proto2.DescriptorProto\u0012.\n\tenum_type\u0018\u0005 \u0003(\u000b2\u001b.proto2.EnumDescriptorProto\u0012/\n\u0007service\u0018\u0006 \u0003(\u000b2\u001e.proto2.ServiceDescriptorProto\u0012/\n\textension\u0018\u0007 \u0003(\u000b2\u001c."

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "proto2.FieldDescriptorProto\u0012$\n\u0007options\u0018\u0008 \u0001(\u000b2\u0013.proto2.FileOptions\u00120\n\u0010source_code_info\u0018\t \u0001(\u000b2\u0016.proto2.SourceCodeInfo\"\u00f3\u0002\n\u000fDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012+\n\u0005field\u0018\u0002 \u0003(\u000b2\u001c.proto2.FieldDescriptorProto\u0012/\n\textension\u0018\u0006 \u0003(\u000b2\u001c.proto2.FieldDescriptorProto\u0012,\n\u000bnested_type\u0018\u0003 \u0003(\u000b2\u0017.proto2.DescriptorProto\u0012.\n\tenum_type\u0018\u0004 \u0003(\u000b2\u001b.proto2.EnumDescriptorProto\u0012?\n\u000fextension_range\u0018\u0005 \u0003(\u000b2&.proto2.DescriptorProto.ExtensionRan"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ge\u0012\'\n\u0007options\u0018\u0007 \u0001(\u000b2\u0016.proto2.MessageOptions\u001a,\n\u000eExtensionRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"\u00f9\u0004\n\u0014FieldDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0001(\u0005\u00121\n\u0005label\u0018\u0004 \u0001(\u000e2\".proto2.FieldDescriptorProto.Label\u0012/\n\u0004type\u0018\u0005 \u0001(\u000e2!.proto2.FieldDescriptorProto.Type\u0012\u0011\n\ttype_name\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008extendee\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_value\u0018\u0007 \u0001(\t\u0012%\n\u0007options\u0018\u0008 \u0001(\u000b2\u0014.proto2.FieldOptions\"\u00b6\u0002\n\u0004Type\u0012\u000f\n\u000bTYPE_DOUBLE\u0010\u0001\u0012\u000e\n\nTYPE_FLOAT\u0010\u0002\u0012\u000e\n\nTYPE_INT64\u0010"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u0003\u0012\u000f\n\u000bTYPE_UINT64\u0010\u0004\u0012\u000e\n\nTYPE_INT32\u0010\u0005\u0012\u0010\n\u000cTYPE_FIXED64\u0010\u0006\u0012\u0010\n\u000cTYPE_FIXED32\u0010\u0007\u0012\r\n\tTYPE_BOOL\u0010\u0008\u0012\u000f\n\u000bTYPE_STRING\u0010\t\u0012\u000e\n\nTYPE_GROUP\u0010\n\u0012\u0010\n\u000cTYPE_MESSAGE\u0010\u000b\u0012\u000e\n\nTYPE_BYTES\u0010\u000c\u0012\u000f\n\u000bTYPE_UINT32\u0010\r\u0012\r\n\tTYPE_ENUM\u0010\u000e\u0012\u0011\n\rTYPE_SFIXED32\u0010\u000f\u0012\u0011\n\rTYPE_SFIXED64\u0010\u0010\u0012\u000f\n\u000bTYPE_SINT32\u0010\u0011\u0012\u000f\n\u000bTYPE_SINT64\u0010\u0012\"C\n\u0005Label\u0012\u0012\n\u000eLABEL_OPTIONAL\u0010\u0001\u0012\u0012\n\u000eLABEL_REQUIRED\u0010\u0002\u0012\u0012\n\u000eLABEL_REPEATED\u0010\u0003\"z\n\u0013EnumDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012/\n\u0005value\u0018\u0002 \u0003(\u000b2 .proto2.EnumValueDesc"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "riptorProto\u0012$\n\u0007options\u0018\u0003 \u0001(\u000b2\u0013.proto2.EnumOptions\"c\n\u0018EnumValueDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\u0005\u0012)\n\u0007options\u0018\u0003 \u0001(\u000b2\u0018.proto2.EnumValueOptions\"\u00ad\u0001\n\u0016ServiceDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012-\n\u0006method\u0018\u0002 \u0003(\u000b2\u001d.proto2.MethodDescriptorProto\u0012-\n\u0006stream\u0018\u0004 \u0003(\u000b2\u001d.proto2.StreamDescriptorProto\u0012\'\n\u0007options\u0018\u0003 \u0001(\u000b2\u0016.proto2.ServiceOptions\"v\n\u0015MethodDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\ninput_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000boutput_type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0018\u0003 \u0001(\t\u0012&\n\u0007options\u0018\u0004 \u0001(\u000b2\u0015.proto2.MethodOptions\"\u0087\u0001\n\u0015StreamDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u001b\n\u0013client_message_type\u0018\u0002 \u0001(\t\u0012\u001b\n\u0013server_message_type\u0018\u0003 \u0001(\t\u0012&\n\u0007options\u0018\u0004 \u0001(\u000b2\u0015.proto2.StreamOptions\"\u008c\t\n\u000bFileOptions\u0012\u0019\n\u000ecc_api_version\u0018\u0002 \u0001(\u0005:\u00012\u0012V\n\u0014cc_api_compatibility\u0018\u000f \u0001(\u000e2&.proto2.FileOptions.CompatibilityLevel:\u0010NO_COMPATIBILITY\u0012\'\n\u0019cc_proto_array_compatible\u0018\u0016 \u0001(\u0008:\u0004true\u0012\"\n\u0014cc_utf8_verification\u0018\u0018 \u0001(\u0008:\u0004true\u0012$\n\u0015cc_p"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "roto1_text_format\u0018\u0019 \u0001(\u0008:\u0005false\u0012\u0014\n\u000cjava_package\u0018\u0001 \u0001(\t\u0012\u0019\n\u000epy_api_version\u0018\u0004 \u0001(\u0005:\u00012\u0012\u001b\n\u0010java_api_version\u0018\u0005 \u0001(\u0005:\u00012\u0012!\n\u0013java_use_javaproto2\u0018\u0006 \u0001(\u0008:\u0004true\u0012\u001e\n\u0010java_java5_enums\u0018\u0007 \u0001(\u0008:\u0004true\u0012)\n\u001ajava_generate_rpc_baseimpl\u0018\r \u0001(\u0008:\u0005false\u0012#\n\u0014java_use_javastrings\u0018\u0015 \u0001(\u0008:\u0005false\u0012\u001c\n\u0014java_alt_api_package\u0018\u0013 \u0001(\t\u0012,\n\u001ejava_dual_generate_mutable_api\u0018\u001a \u0001(\u0008:\u0004true\u0012\u001c\n\u0014java_outer_classname\u0018\u0008 \u0001(\t\u0012\"\n\u0013java_multiple_files\u0018\n \u0001(\u0008:\u0005false\u0012,\n"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u001djava_generate_equals_and_hash\u0018\u0014 \u0001(\u0008:\u0005false\u0012=\n\u000coptimize_for\u0018\t \u0001(\u000e2 .proto2.FileOptions.OptimizeMode:\u0005SPEED\u0012\u0012\n\ngo_package\u0018\u000b \u0001(\t\u0012\u001a\n\u0012javascript_package\u0018\u000c \u0001(\t\u0012\u001a\n\u000fszl_api_version\u0018\u000e \u0001(\u0005:\u00011\u0012\"\n\u0013cc_generic_services\u0018\u0010 \u0001(\u0008:\u0005false\u0012$\n\u0015java_generic_services\u0018\u0011 \u0001(\u0008:\u0005false\u0012\"\n\u0013py_generic_services\u0018\u0012 \u0001(\u0008:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0017 \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.proto2.UninterpretedOption\"c\n\u0012CompatibilityLeve"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "l\u0012\u0014\n\u0010NO_COMPATIBILITY\u0010\u0000\u0012\u0015\n\u0011PROTO1_COMPATIBLE\u0010d\u0012 \n\u001cDEPRECATED_PROTO1_COMPATIBLE\u00102\":\n\u000cOptimizeMode\u0012\t\n\u0005SPEED\u0010\u0001\u0012\r\n\tCODE_SIZE\u0010\u0002\u0012\u0010\n\u000cLITE_RUNTIME\u0010\u0003*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00ca\u0001\n\u000eMessageOptions\u0012&\n\u0017message_set_wire_format\u0018\u0001 \u0001(\u0008:\u0005false\u0012.\n\u001fno_standard_descriptor_accessor\u0018\u0002 \u0001(\u0008:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.proto2.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00db\u0004\n\u000cFieldOptions\u00121\n\u0005ctype\u0018\u0001 \u0001(\u000e2\u001a.proto2.Fi"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "eldOptions.CType:\u0006STRING\u0012\u000e\n\u0006packed\u0018\u0002 \u0001(\u0008\u00121\n\u0005jtype\u0018\u0004 \u0001(\u000e2\u001a.proto2.FieldOptions.JType:\u0006NORMAL\u00126\n\u0006jstype\u0018\u0006 \u0001(\u000e2\u001b.proto2.FieldOptions.JSType:\tJS_NORMAL\u0012\u0013\n\u0004lazy\u0018\u0005 \u0001(\u0008:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\u0008:\u0005false\u0012\u001c\n\u0014experimental_map_key\u0018\t \u0001(\t\u0012\u0013\n\u0004weak\u0018\n \u0001(\u0008:\u0005false\u0012<\n\u000fupgraded_option\u0018\u000b \u0003(\u000b2#.proto2.FieldOptions.UpgradedOption\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.proto2.UninterpretedOption\u001a-\n\u000eUpgradedOption\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\"/\n\u0005CType\u0012\n\n\u0006STRING\u0010\u0000\u0012\u0008\n\u0004CORD\u0010\u0001\u0012\u0010\n\u000cSTRING_PIECE\u0010\u0002\"\u001e\n\u0005JType\u0012\n\n\u0006NORMAL\u0010\u0000\u0012\t\n\u0005BYTES\u0010\u0001\"5\n\u0006JSType\u0012\r\n\tJS_NORMAL\u0010\u0000\u0012\r\n\tJS_STRING\u0010\u0001\u0012\r\n\tJS_NUMBER\u0010\u0002*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u0099\u0001\n\u000bEnumOptions\u0012\u0013\n\u000bproto1_name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000ballow_alias\u0018\u0002 \u0001(\u0008\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.proto2.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"t\n\u0010EnumValueOptions\u0012\u0019\n\ndeprecated\u0018\u0001 \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.p"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "roto2.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00b6\u0001\n\u000eServiceOptions\u0012\u001d\n\u000emulticast_stub\u0018\u0014 \u0001(\u0008:\u0005false\u0012#\n\u0017failure_detection_delay\u0018\u0010 \u0001(\u0001:\u0002-1\u0012\u0019\n\ndeprecated\u0018! \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.proto2.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u009c\u0006\n\rMethodOptions\u00125\n\u0008protocol\u0018\u0007 \u0001(\u000e2\u001e.proto2.MethodOptions.Protocol:\u0003TCP\u0012\u0014\n\u0008deadline\u0018\u0008 \u0001(\u0001:\u0002-1\u0012$\n\u0015duplicate_suppression\u0018\t \u0001(\u0008:\u0005false\u0012\u0018\n\tfail_fast\u0018\n \u0001(\u0008:\u0005false\u0012\u001b\n\u000eclient_logging\u0018\u000b"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, " \u0001(\u0011:\u0003256\u0012\u001b\n\u000eserver_logging\u0018\u000c \u0001(\u0011:\u0003256\u0012A\n\u000esecurity_level\u0018\r \u0001(\u000e2#.proto2.MethodOptions.SecurityLevel:\u0004NONE\u0012C\n\u000fresponse_format\u0018\u000f \u0001(\u000e2\u001c.proto2.MethodOptions.Format:\u000cUNCOMPRESSED\u0012B\n\u000erequest_format\u0018\u0011 \u0001(\u000e2\u001c.proto2.MethodOptions.Format:\u000cUNCOMPRESSED\u0012\u0013\n\u000bstream_type\u0018\u0012 \u0001(\t\u0012\u0016\n\u000esecurity_label\u0018\u0013 \u0001(\t\u0012\u0018\n\u0010client_streaming\u0018\u0014 \u0001(\u0008\u0012\u0018\n\u0010server_streaming\u0018\u0015 \u0001(\u0008\u0012\u0019\n\ndeprecated\u0018! \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b."

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "proto2.UninterpretedOption\"\u001c\n\u0008Protocol\u0012\u0007\n\u0003TCP\u0010\u0000\u0012\u0007\n\u0003UDP\u0010\u0001\"e\n\rSecurityLevel\u0012\u0008\n\u0004NONE\u0010\u0000\u0012\r\n\tINTEGRITY\u0010\u0001\u0012\u0019\n\u0015PRIVACY_AND_INTEGRITY\u0010\u0002\u0012 \n\u001cSTRONG_PRIVACY_AND_INTEGRITY\u0010\u0003\"0\n\u0006Format\u0012\u0010\n\u000cUNCOMPRESSED\u0010\u0000\u0012\u0014\n\u0010ZIPPY_COMPRESSED\u0010\u0001*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00ae\u0003\n\rStreamOptions\u0012!\n\u0015client_initial_tokens\u0018\u0001 \u0001(\u0003:\u0002-1\u0012!\n\u0015server_initial_tokens\u0018\u0002 \u0001(\u0003:\u0002-1\u0012<\n\ntoken_unit\u0018\u0003 \u0001(\u000e2\u001f.proto2.StreamOptions.TokenUnit:\u0007MESSAGE\u0012A\n\u000esecurity_level\u0018\u0004 \u0001(\u000e2#.pro"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "to2.MethodOptions.SecurityLevel:\u0004NONE\u0012\u0016\n\u000esecurity_label\u0018\u0005 \u0001(\t\u0012\u001b\n\u000eclient_logging\u0018\u0006 \u0001(\u0005:\u0003256\u0012\u001b\n\u000eserver_logging\u0018\u0007 \u0001(\u0005:\u0003256\u0012\u0019\n\ndeprecated\u0018! \u0001(\u0008:\u0005false\u0012:\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2\u001b.proto2.UninterpretedOption\"\"\n\tTokenUnit\u0012\u000b\n\u0007MESSAGE\u0010\u0000\u0012\u0008\n\u0004BYTE\u0010\u0001*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u0095\u0002\n\u0013UninterpretedOption\u00122\n\u0004name\u0018\u0002 \u0003(\u000b2$.proto2.UninterpretedOption.NamePart\u0012\u0018\n\u0010identifier_value\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012positive_int_value\u0018\u0004 \u0001(\u0004\u0012\u001a\n\u0012negative_int_"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "value\u0018\u0005 \u0001(\u0003\u0012\u0014\n\u000cdouble_value\u0018\u0006 \u0001(\u0001\u0012\u0014\n\u000cstring_value\u0018\u0007 \u0001(\u000c\u0012\u0017\n\u000faggregate_value\u0018\u0008 \u0001(\t\u001a3\n\u0008NamePart\u0012\u0011\n\tname_part\u0018\u0001 \u0002(\t\u0012\u0014\n\u000cis_extension\u0018\u0002 \u0002(\u0008\"\u00a8\u0001\n\u000eSourceCodeInfo\u00121\n\u0008location\u0018\u0001 \u0003(\u000b2\u001f.proto2.SourceCodeInfo.Location\u001ac\n\u0008Location\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0010\n\u0004span\u0018\u0002 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0018\n\u0010leading_comments\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011trailing_comments\u0018\u0004 \u0001(\tB)\n\u0013com.google.protobufB\u0010DescriptorProtosH\u0001"

    aput-object v3, v1, v2

    .line 171
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/protobuf/DescriptorProtosInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtosInternalDescriptors$1;-><init>()V

    .line 179
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 183
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
