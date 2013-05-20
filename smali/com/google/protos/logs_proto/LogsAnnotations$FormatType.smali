.class public final enum Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;
.super Ljava/lang/Enum;
.source "LogsAnnotations.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/logs_proto/LogsAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType; = null

.field public static final enum LOGSFORMAT_COOKIE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType; = null

.field public static final LOGSFORMAT_COOKIE_VALUE:I = 0x1

.field public static final enum LOGSFORMAT_NONE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

.field public static final LOGSFORMAT_NONE_VALUE:I

.field private static final VALUES:[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 870
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    const-string v1, "LOGSFORMAT_NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->LOGSFORMAT_NONE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    .line 882
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    const-string v1, "LOGSFORMAT_COOKIE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->LOGSFORMAT_COOKIE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    .line 865
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->LOGSFORMAT_NONE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->LOGSFORMAT_COOKIE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->$VALUES:[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    .line 918
    new-instance v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType$1;

    invoke-direct {v0}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType$1;-><init>()V

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 938
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->values()[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    move-result-object v0

    sput-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->VALUES:[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 952
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 953
    iput p3, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->index:I

    .line 954
    iput p4, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->value:I

    .line 955
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 935
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;
    .locals 1
    .parameter "value"

    .prologue
    .line 906
    packed-switch p0, :pswitch_data_0

    .line 909
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 907
    :pswitch_0
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->LOGSFORMAT_NONE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    goto :goto_0

    .line 908
    :pswitch_1
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->LOGSFORMAT_COOKIE:Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    goto :goto_0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 943
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_0
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->VALUES:[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;
    .locals 1
    .parameter "name"

    .prologue
    .line 865
    const-class v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;
    .locals 1

    .prologue
    .line 865
    sget-object v0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->$VALUES:[Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    invoke-virtual {v0}, [Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 931
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 927
    invoke-static {}, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protos/logs_proto/LogsAnnotations$FormatType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
