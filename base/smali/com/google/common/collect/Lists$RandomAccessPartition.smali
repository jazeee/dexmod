.class Lcom/google/common/collect/Lists$RandomAccessPartition;
.super Lcom/google/common/collect/Lists$Partition;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Lists$Partition",
        "<TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 687
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    .line 688
    return-void
.end method
