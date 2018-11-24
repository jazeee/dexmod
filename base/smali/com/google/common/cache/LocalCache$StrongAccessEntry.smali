.class final Lcom/google/common/cache/LocalCache$StrongAccessEntry;
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
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
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
    .line 1107
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1112
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1125
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1138
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1108
    return-void
.end method


# virtual methods
.method public final getAccessTime()J
    .locals 2

    .prologue
    .line 1116
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

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
    .line 1129
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

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
    .line 1142
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public final setAccessTime(J)V
    .locals 1

    .prologue
    .line 1121
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1122
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
    .line 1134
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1135
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
    .line 1147
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1148
    return-void
.end method
