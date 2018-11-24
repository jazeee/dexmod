.class Lcom/google/common/collect/TreeBasedTable$1;
.super Ljava/lang/Object;
.source "TreeBasedTable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map",
        "<TC;TV;>;",
        "Ljava/util/Iterator",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$1;->this$0:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$1;->apply(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TC;TV;>;)",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
