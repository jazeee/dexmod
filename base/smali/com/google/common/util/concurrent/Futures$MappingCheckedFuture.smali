.class Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;
.super Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractCheckedFuture",
        "<TV;TX;>;"
    }
.end annotation


# instance fields
.field final mapper:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-",
            "Ljava/lang/Exception;",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-",
            "Ljava/lang/Exception;",
            "TX;>;)V"
        }
    .end annotation

    .prologue
    .line 1802
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 1804
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lcom/google/common/base/Function;

    .line 1805
    return-void
.end method


# virtual methods
.method protected mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;->mapper:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0
.end method