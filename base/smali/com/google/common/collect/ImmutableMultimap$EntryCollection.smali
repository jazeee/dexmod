.class Lcom/google/common/collect/ImmutableMultimap$EntryCollection;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final multimap:Lcom/google/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    .line 506
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 522
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 523
    check-cast p1, Ljava/util/Map$Entry;

    .line 524
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->entryIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
