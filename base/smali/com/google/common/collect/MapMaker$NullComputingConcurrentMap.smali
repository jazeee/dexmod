.class final Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;
.super Lcom/google/common/collect/MapMaker$NullConcurrentMap;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMaker$NullConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final computingFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 838
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lcom/google/common/base/Function;

    .line 839
    return-void
.end method

.method private compute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    throw v0

    .line 857
    :catch_1
    move-exception v0

    .line 858
    new-instance v1, Lcom/google/common/collect/ComputationException;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 844
    .line 845
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->compute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 846
    const-string v1, "%s returned null for key %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lcom/google/common/base/Function;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;->notifyRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 848
    return-object v0
.end method
