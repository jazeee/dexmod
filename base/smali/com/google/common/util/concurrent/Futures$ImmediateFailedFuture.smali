.class Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$ImmediateFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final thrown:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    .line 185
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;->thrown:Ljava/lang/Throwable;

    .line 186
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;->thrown:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
