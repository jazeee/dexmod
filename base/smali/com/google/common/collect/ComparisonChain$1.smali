.class final Lcom/google/common/collect/ComparisonChain$1;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$1;)V

    return-void
.end method


# virtual methods
.method final classify(I)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 101
    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$100()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$200()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->access$300()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    goto :goto_0
.end method

.method public final compare(DD)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 92
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compare(FF)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 89
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compare(II)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compare(JJ)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 86
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 76
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1, p2}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final compareTrueFirst(ZZ)Lcom/google/common/collect/ComparisonChain;
    .locals 1

    .prologue
    .line 95
    invoke-static {p2, p1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ComparisonChain$1;->classify(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    return-object v0
.end method

.method public final result()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
