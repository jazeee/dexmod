.class Lcom/google/common/collect/HashBiMap$EntrySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.Itr<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$EntrySet;)V
    .locals 1

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/HashBiMap$EntrySet;

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$EntrySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    .line 440
    return-void
.end method


# virtual methods
.method bridge synthetic output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet$1;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$EntrySet$1$MapEntry;-><init>(Lcom/google/common/collect/HashBiMap$EntrySet$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-object v0
.end method
