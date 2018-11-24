.class Lcom/google/common/collect/Ordering$ArbitraryOrdering;
.super Lcom/google/common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private uids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 265
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/Platform;->tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;-><init>(Lcom/google/common/collect/Ordering$ArbitraryOrdering;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 277
    if-ne p1, p2, :cond_1

    .line 278
    const/4 v0, 0x0

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    if-eqz p1, :cond_0

    .line 281
    if-nez p2, :cond_2

    move v0, v1

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 285
    invoke-virtual {p0, p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 286
    if-eq v2, v3, :cond_3

    .line 287
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 292
    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method identityHashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 311
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
