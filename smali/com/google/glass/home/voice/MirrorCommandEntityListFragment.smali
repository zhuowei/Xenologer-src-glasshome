.class public Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;
.super Lcom/google/glass/entity/EntityListFragment;
.source "MirrorCommandEntityListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$1;,
        Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;

.field private commandEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field private environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;Ljava/util/List;)V
    .locals 2
    .parameter "environment"
    .parameter "commandType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, commandEntities:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-direct {p0}, Lcom/google/glass/entity/EntityListFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;-><init>(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$1;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->adapter:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;

    .line 32
    iput-object p1, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 33
    iput-object p2, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 34
    iput-object p3, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandEntities:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandType:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->commandEntities:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/home/voice/MirrorCommandEntityListFragment;->adapter:Lcom/google/glass/home/voice/MirrorCommandEntityListFragment$ListAdapter;

    return-object v0
.end method
