.class public Lcom/google/glass/widget/OptionMenu$Item;
.super Ljava/lang/Object;
.source "OptionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/OptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private currentStateKey:I

.field private description:Ljava/lang/String;

.field private extra:Ljava/lang/Object;

.field private isDefault:Z

.field private isEnabled:Z

.field private isVisible:Z

.field private final itemId:I

.field private stateListener:Lcom/google/glass/widget/OptionMenu$ItemStateListener;

.field private final states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/widget/OptionMenu$ItemState;",
            ">;"
        }
    .end annotation
.end field

.field private suppressTapSound:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    const/4 v0, 0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled:Z

    .line 113
    iput-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isVisible:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->extra:Ljava/lang/Object;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->currentStateKey:I

    .line 132
    iput p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->itemId:I

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    .line 134
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "itemId"
    .parameter "name"
    .parameter "image"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(I)V

    .line 147
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/glass/widget/OptionMenu$ItemState;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    iput p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->currentStateKey:I

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isVisible:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/widget/OptionMenu$Item;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->itemId:I

    return v0
.end method


# virtual methods
.method public addState(Lcom/google/glass/widget/OptionMenu$ItemState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$ItemState;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    iget v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->currentStateKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$ItemState;->getId()I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->currentStateKey:I

    .line 224
    :cond_0
    return-void
.end method

.method public getCurrentState()Lcom/google/glass/widget/OptionMenu$ItemState;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/glass/widget/OptionMenu$Item;->currentStateKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenu$ItemState;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->itemId:I

    return v0
.end method

.method public getNumStates()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getState(I)Lcom/google/glass/widget/OptionMenu$ItemState;
    .locals 1
    .parameter "stateId"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/OptionMenu$ItemState;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isDefault:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->isVisible:Z

    return v0
.end method

.method public setCurrentState(I)V
    .locals 1
    .parameter "key"

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/OptionMenu$Item;->setCurrentState(IZ)V

    .line 234
    return-void
.end method

.method public setCurrentState(IZ)V
    .locals 2
    .parameter "key"
    .parameter "shouldAnimate"

    .prologue
    .line 242
    const-string v0, "Can not set current state to a non-existent state."

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenu$Item;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/util/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iput p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->currentStateKey:I

    .line 244
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->stateListener:Lcom/google/glass/widget/OptionMenu$ItemStateListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->stateListener:Lcom/google/glass/widget/OptionMenu$ItemStateListener;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/widget/OptionMenu$ItemStateListener;->onStateChanged(IZ)V

    .line 247
    :cond_0
    return-void
.end method

.method public setDefault(Z)V
    .locals 0
    .parameter "isDefault"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->isDefault:Z

    .line 211
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->description:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->isEnabled:Z

    .line 171
    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->extra:Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setStateListener(Lcom/google/glass/widget/OptionMenu$ItemStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->stateListener:Lcom/google/glass/widget/OptionMenu$ItemStateListener;

    .line 252
    return-void
.end method

.method public setSuppressTapSound(Z)V
    .locals 0
    .parameter "suppressTapSound"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->suppressTapSound:Z

    .line 263
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/glass/widget/OptionMenu$Item;->isVisible:Z

    .line 181
    return-void
.end method

.method public shouldSuppressTapSound()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/glass/widget/OptionMenu$Item;->suppressTapSound:Z

    return v0
.end method
