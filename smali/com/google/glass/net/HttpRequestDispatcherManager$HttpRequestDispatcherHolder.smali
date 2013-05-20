.class Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;
.super Ljava/lang/Object;
.source "HttpRequestDispatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/HttpRequestDispatcherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpRequestDispatcherHolder"
.end annotation


# static fields
.field private static instance:Lcom/google/glass/net/HttpRequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>()V

    sput-object v0, Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;->instance:Lcom/google/glass/net/HttpRequestDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/net/HttpRequestDispatcher;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;->instance:Lcom/google/glass/net/HttpRequestDispatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/net/HttpRequestDispatcher;)Lcom/google/glass/net/HttpRequestDispatcher;
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-object p0, Lcom/google/glass/net/HttpRequestDispatcherManager$HttpRequestDispatcherHolder;->instance:Lcom/google/glass/net/HttpRequestDispatcher;

    return-object p0
.end method
