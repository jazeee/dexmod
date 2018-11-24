.class final Lcom/google/common/collect/Lists$1;
.super Lcom/google/common/collect/Lists$RandomAccessListWrapper;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Lists$RandomAccessListWrapper",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$RandomAccessListWrapper;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/common/collect/Lists$1;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
