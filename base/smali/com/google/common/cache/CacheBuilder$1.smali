.class final Lcom/google/common/cache/CacheBuilder$1;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final recordEviction()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final recordHits(I)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final recordLoadException(J)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final recordLoadSuccess(J)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final recordMisses(I)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final snapshot()Lcom/google/common/cache/CacheStats;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lcom/google/common/cache/CacheStats;

    return-object v0
.end method
