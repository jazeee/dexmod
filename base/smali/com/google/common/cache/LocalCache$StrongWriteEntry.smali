.class final Lcom/google/common/cache/LocalCache$StrongWriteEntry;
.super Lcom/google/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$StrongEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1153
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1158
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1171
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1184
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1154
    return-void
.end method


# virtual methods
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
    .line 1175
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

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
    .line 1188
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final getWriteTime()J
    .locals 2

    .prologue
    .line 1162
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    return-wide v0
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
    .line 1180
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1181
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
    .line 1193
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1194
    return-void
.end method

.method public final setWriteTime(J)V
    .locals 1

    .prologue
    .line 1167
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1168
    return-void
.end method
