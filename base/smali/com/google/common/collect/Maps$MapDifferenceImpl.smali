.class Lcom/google/common/collect/Maps$MapDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapDifference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final differences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final onBoth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnLeft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnRight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    invoke-static {p1}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    .line 463
    invoke-static {p2}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    .line 464
    invoke-static {p3}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    .line 465
    invoke-static {p4}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    .line 466
    return-void
.end method


# virtual methods
.method public areEqual()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entriesDiffering()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    if-ne p1, p0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 497
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/MapDifference;

    if-eqz v2, :cond_3

    .line 498
    check-cast p1, Lcom/google/common/collect/MapDifference;

    .line 499
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesInCommon()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/MapDifference;->entriesDiffering()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 504
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 508
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$MapDifferenceImpl;->areEqual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "equal"

    .line 527
    :goto_0
    return-object v0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    const-string v1, ": only on left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 522
    const-string v1, ": only on right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 525
    const-string v1, ": value differences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
