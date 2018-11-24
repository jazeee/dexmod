.class final Lcom/google/common/collect/Range$1;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/common/collect/Range;",
        "Lcom/google/common/collect/Cut;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range$1;->apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;

    move-result-object v0

    return-object v0
.end method
