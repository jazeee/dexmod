.class Lcom/google/common/collect/HashBiMap$KeySet$1;
.super Lcom/google/common/collect/HashBiMap$Itr;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/HashBiMap$KeySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$KeySet;)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$KeySet$1;->this$1:Lcom/google/common/collect/HashBiMap$KeySet;

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$KeySet;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap$Itr;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
