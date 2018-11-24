.class Lcom/google/common/collect/AbstractTable$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$1;->this$0:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractTable$1;->transform(Lcom/google/common/collect/Table$Cell;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
