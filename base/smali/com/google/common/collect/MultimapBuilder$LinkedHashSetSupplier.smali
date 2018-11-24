.class final Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"

# interfaces
.implements Lcom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/util/Set",
        "<TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final expectedValuesPerKey:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->expectedValuesPerKey:I

    .line 237
    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->expectedValuesPerKey:I

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method
