.class final Lcom/google/common/collect/RegularImmutableTable$1;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$columnComparator:Ljava/util/Comparator;

.field final synthetic val$rowComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    move v0, v1

    .line 127
    :goto_0
    if-eqz v0, :cond_1

    .line 130
    :goto_1
    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 123
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    check-cast p2, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$1;->compare(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I

    move-result v0

    return v0
.end method
