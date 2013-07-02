.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;",
        "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$MotionEvent$PointerCoordsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private orientation_:F

.field private pressure_:F

.field private size_:F

.field private toolMajor_:F

.field private toolMinor_:F

.field private touchMajor_:F

.field private touchMinor_:F

.field private x_:F

.field private y_:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5088
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5089
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->maybeForceBuilderInitialization()V

    .line 5090
    return-void
.end method

.method static synthetic access$3400()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5081
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5095
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5093
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 2

    .prologue
    .line 5130
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    .line 5131
    .local v0, result:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5132
    invoke-static {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5134
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->build()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 5

    .prologue
    .line 5138
    new-instance v1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 5139
    .local v1, result:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5140
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5141
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5142
    or-int/lit8 v2, v2, 0x1

    .line 5144
    :cond_0
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->orientation_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$3602(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5145
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5146
    or-int/lit8 v2, v2, 0x2

    .line 5148
    :cond_1
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->pressure_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$3702(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5149
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5150
    or-int/lit8 v2, v2, 0x4

    .line 5152
    :cond_2
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->size_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$3802(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5153
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5154
    or-int/lit8 v2, v2, 0x8

    .line 5156
    :cond_3
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMajor_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$3902(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5157
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5158
    or-int/lit8 v2, v2, 0x10

    .line 5160
    :cond_4
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMinor_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4002(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5161
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 5162
    or-int/lit8 v2, v2, 0x20

    .line 5164
    :cond_5
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMajor_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4102(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5165
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 5166
    or-int/lit8 v2, v2, 0x40

    .line 5168
    :cond_6
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMinor_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4202(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5169
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 5170
    or-int/lit16 v2, v2, 0x80

    .line 5172
    :cond_7
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->x_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4302(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5173
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 5174
    or-int/lit16 v2, v2, 0x100

    .line 5176
    :cond_8
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->y_:F

    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4402(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;F)F

    .line 5177
    #setter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4502(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;I)I

    .line 5178
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5099
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5100
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->orientation_:F

    .line 5101
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5102
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->pressure_:F

    .line 5103
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5104
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->size_:F

    .line 5105
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5106
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMajor_:F

    .line 5107
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5108
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMinor_:F

    .line 5109
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5110
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMajor_:F

    .line 5111
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5112
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMinor_:F

    .line 5113
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5114
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->x_:F

    .line 5115
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5116
    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->y_:F

    .line 5117
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5118
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->clear()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOrientation()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5263
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5264
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->orientation_:F

    .line 5266
    return-object p0
.end method

.method public clearPressure()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5295
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5296
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->pressure_:F

    .line 5298
    return-object p0
.end method

.method public clearSize()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5327
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->size_:F

    .line 5330
    return-object p0
.end method

.method public clearToolMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5359
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5360
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMajor_:F

    .line 5362
    return-object p0
.end method

.method public clearToolMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5391
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5392
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMinor_:F

    .line 5394
    return-object p0
.end method

.method public clearTouchMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5423
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5424
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMajor_:F

    .line 5426
    return-object p0
.end method

.method public clearTouchMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5455
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5456
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMinor_:F

    .line 5458
    return-object p0
.end method

.method public clearX()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5487
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5488
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->x_:F

    .line 5490
    return-object p0
.end method

.method public clearY()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1

    .prologue
    .line 5519
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5520
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->y_:F

    .line 5522
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 2

    .prologue
    .line 5122
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->buildPartial()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->clone()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 5126
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5081
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 5248
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->orientation_:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 5280
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->pressure_:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 5312
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->size_:F

    return v0
.end method

.method public getToolMajor()F
    .locals 1

    .prologue
    .line 5344
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMajor_:F

    return v0
.end method

.method public getToolMinor()F
    .locals 1

    .prologue
    .line 5376
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMinor_:F

    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .prologue
    .line 5408
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMajor_:F

    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .prologue
    .line 5440
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMinor_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 5472
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 5504
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->y_:F

    return v0
.end method

.method public hasOrientation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5242
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPressure()Z
    .locals 2

    .prologue
    .line 5274
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 2

    .prologue
    .line 5306
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolMajor()Z
    .locals 2

    .prologue
    .line 5338
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolMinor()Z
    .locals 2

    .prologue
    .line 5370
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTouchMajor()Z
    .locals 2

    .prologue
    .line 5402
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTouchMinor()Z
    .locals 2

    .prologue
    .line 5434
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 2

    .prologue
    .line 5466
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 2

    .prologue
    .line 5498
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5215
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 5182
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5211
    :goto_0
    return-object p0

    .line 5183
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5184
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getOrientation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setOrientation(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5186
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasPressure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5187
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getPressure()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setPressure(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5189
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5190
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setSize(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5192
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasToolMajor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5193
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getToolMajor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setToolMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5195
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasToolMinor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5196
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getToolMinor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setToolMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5198
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasTouchMajor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5199
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getTouchMajor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setTouchMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5201
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasTouchMinor()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5202
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getTouchMinor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setTouchMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5204
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasX()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5205
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setX(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5207
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->hasY()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5208
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setY(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5210
    :cond_9
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->access$4600(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5222
    const/4 v2, 0x0

    .line 5224
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5229
    if-eqz v2, :cond_0

    .line 5230
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    .line 5233
    :cond_0
    return-object p0

    .line 5225
    :catch_0
    move-exception v1

    .line 5226
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-object v2, v0

    .line 5227
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5229
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 5230
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    :cond_1
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5081
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5081
    check-cast p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5081
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOrientation(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5254
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5255
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->orientation_:F

    .line 5257
    return-object p0
.end method

.method public setPressure(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5286
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5287
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->pressure_:F

    .line 5289
    return-object p0
.end method

.method public setSize(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5318
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5319
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->size_:F

    .line 5321
    return-object p0
.end method

.method public setToolMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5350
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5351
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMajor_:F

    .line 5353
    return-object p0
.end method

.method public setToolMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5382
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5383
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->toolMinor_:F

    .line 5385
    return-object p0
.end method

.method public setTouchMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5414
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5415
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMajor_:F

    .line 5417
    return-object p0
.end method

.method public setTouchMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5446
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5447
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->touchMinor_:F

    .line 5449
    return-object p0
.end method

.method public setX(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5478
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5479
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->x_:F

    .line 5481
    return-object p0
.end method

.method public setY(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5510
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->bitField0_:I

    .line 5511
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords$Builder;->y_:F

    .line 5513
    return-object p0
.end method
