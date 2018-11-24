.class Lcom/google/common/collect/AbstractTable$CellSet;
.super Ljava/util/AbstractSet;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->clear()V

    .line 146
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 123
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_1

    .line 124
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 126
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 126
    goto :goto_0

    :cond_1
    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 134
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_1

    .line 135
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 136
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 137
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Collections2;->safeRemove(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 137
    goto :goto_0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/collect/AbstractTable$CellSet;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractTable;->size()I

    move-result v0

    return v0
.end method
