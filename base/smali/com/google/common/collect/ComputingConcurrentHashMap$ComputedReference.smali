.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;->value:Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method public final clear(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 268
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isComputingReference()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public final waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputedReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
