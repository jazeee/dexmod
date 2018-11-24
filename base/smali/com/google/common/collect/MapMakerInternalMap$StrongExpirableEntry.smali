.class final Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1014
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1019
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->time:J

    .line 1032
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1045
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1015
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1023
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->time:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 1

    .prologue
    .line 1028
    iput-wide p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->time:J

    .line 1029
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1042
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$StrongExpirableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1055
    return-void
.end method
