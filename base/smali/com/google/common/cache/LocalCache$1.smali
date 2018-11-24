.class final Lcom/google/common/cache/LocalCache$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/LocalCache$ValueReference",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWeight()I
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public final notifyNewValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public final waitForValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return-object v0
.end method
