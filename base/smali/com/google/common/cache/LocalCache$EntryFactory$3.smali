.class final enum Lcom/google/common/cache/LocalCache$EntryFactory$3;
.super Lcom/google/common/cache/LocalCache$EntryFactory;
.source "LocalCache.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method final copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 475
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 476
    invoke-virtual {p0, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory$3;->copyWriteEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 477
    return-object v0
.end method

.method final newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .param p4    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/cache/LocalCache$StrongWriteEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method
