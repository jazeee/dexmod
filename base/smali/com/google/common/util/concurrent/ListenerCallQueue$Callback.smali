.class abstract Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodCall:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method abstract call(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method enqueueOn(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue",
            "<T",
            "L;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 54
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->add(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
