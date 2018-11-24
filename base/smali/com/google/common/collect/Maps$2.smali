.class final Lcom/google/common/collect/Maps$2;
.super Lcom/google/common/collect/TransformedIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<TK;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V
    .locals 0

    .prologue
    .line 833
    iput-object p2, p0, Lcom/google/common/collect/Maps$2;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0, p1}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$2;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method final transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/common/collect/Maps$2;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
