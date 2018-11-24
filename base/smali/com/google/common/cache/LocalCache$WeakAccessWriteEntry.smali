.class final Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;
.super Lcom/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 4
    .param p4    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 1491
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1496
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1509
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1522
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1536
    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1549
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1562
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1492
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 1500
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public final getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 1540
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public final setAccessTime(J)V
    .locals 1

    .prologue
    .line 1505
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1506
    return-void
.end method

.method public final setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1519
    return-void
.end method

.method public final setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1559
    return-void
.end method

.method public final setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1532
    return-void
.end method

.method public final setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1572
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 1

    .prologue
    .line 1545
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1546
    return-void
.end method
