.class Lcom/google/common/collect/ArrayTable$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$1;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Lcom/google/common/collect/Table$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Lcom/google/common/collect/ArrayTable$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayTable$1$1;-><init>(Lcom/google/common/collect/ArrayTable$1;I)V

    return-object v0
.end method

.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
