.class Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;
.super Ljava/lang/Object;
.source "TouchMainMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/TouchMainMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterStackItem"
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field currentPosition:I

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;I)V
    .locals 1
    .parameter "adapter"
    .parameter "currentPosition"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;-><init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;I)V
    .locals 0
    .parameter "title"
    .parameter "adapter"
    .parameter "currentPosition"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->title:Ljava/lang/CharSequence;

    .line 159
    iput-object p2, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->adapter:Landroid/widget/BaseAdapter;

    .line 160
    iput p3, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->currentPosition:I

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMainMenuActivity$AdapterStackItem;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method
