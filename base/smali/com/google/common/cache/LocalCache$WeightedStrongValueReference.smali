.class final Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;
.super Lcom/google/common/cache/LocalCache$StrongValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$StrongValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 1774
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    .line 1775
    iput p2, p0, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    .line 1776
    return-void
.end method


# virtual methods
.method public final getWeight()I
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    return v0
.end method
