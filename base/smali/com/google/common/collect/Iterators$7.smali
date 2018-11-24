.class final Lcom/google/common/collect/Iterators$7;
.super Lcom/google/common/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/google/common/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/Iterators$7;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 650
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/google/common/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/google/common/collect/Iterators$7;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$7;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
