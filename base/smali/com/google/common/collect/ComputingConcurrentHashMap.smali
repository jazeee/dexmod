.class Lcom/google/common/collect/ComputingConcurrentHashMap;
.super Lcom/google/common/collect/MapMakerInternalMap;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


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
    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    .line 52
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    .line 53
    return-void
.end method


# virtual methods
.method createSegment(II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method getOrCompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getOrCompute(Ljava/lang/Object;ILcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    return-object v0
.end method

.method bridge synthetic segmentFor(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap;->segmentFor(I)Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 15

    .prologue
    .line 382
    new-instance v1, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;

    iget-object v2, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v3, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iget-object v4, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v5, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    iget-wide v6, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->expireAfterWriteNanos:J

    iget-wide v8, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->expireAfterAccessNanos:J

    iget v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->maximumSize:I

    iget v11, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->concurrencyLevel:I

    iget-object v12, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->removalListener:Lcom/google/common/collect/MapMaker$RemovalListener;

    iget-object v14, p0, Lcom/google/common/collect/ComputingConcurrentHashMap;->computingFunction:Lcom/google/common/base/Function;

    move-object v13, p0

    invoke-direct/range {v1 .. v14}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;-><init>(Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/collect/MapMakerInternalMap$Strength;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;Lcom/google/common/base/Function;)V

    return-object v1
.end method
