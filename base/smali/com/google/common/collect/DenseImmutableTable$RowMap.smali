.class final Lcom/google/common/collect/DenseImmutableTable$RowMap;
.super Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/DenseImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/DenseImmutableTable;)V
    .locals 1

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/common/collect/DenseImmutableTable$RowMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    .line 202
    invoke-static {p1}, Lcom/google/common/collect/DenseImmutableTable;->access$200(Lcom/google/common/collect/DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/DenseImmutableTable;Lcom/google/common/collect/DenseImmutableTable$1;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$RowMap;-><init>(Lcom/google/common/collect/DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DenseImmutableTable$RowMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final getValue(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/google/common/collect/DenseImmutableTable$Row;

    iget-object v1, p0, Lcom/google/common/collect/DenseImmutableTable$RowMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/DenseImmutableTable$Row;-><init>(Lcom/google/common/collect/DenseImmutableTable;I)V

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method final keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/common/collect/DenseImmutableTable$RowMap;->this$0:Lcom/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/DenseImmutableTable;->access$600(Lcom/google/common/collect/DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
