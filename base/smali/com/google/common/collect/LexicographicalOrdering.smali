.class final Lcom/google/common/collect/LexicographicalOrdering;
.super Lcom/google/common/collect/Ordering;
.source "LexicographicalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elementOrder:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    .line 37
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 43
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 48
    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const/4 v0, -0x1

    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Iterable;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LexicographicalOrdering;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    if-ne p1, p0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/LexicographicalOrdering;

    if-eqz v0, :cond_1

    .line 63
    check-cast p1, Lcom/google/common/collect/LexicographicalOrdering;

    .line 64
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    iget-object v1, p1, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7bb78cf5

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lexicographical()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
