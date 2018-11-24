.class final Lcom/google/common/io/CharSource$ConcatenatedCharSource;
.super Lcom/google/common/io/CharSource;
.source "CharSource.java"


# instance fields
.field private final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/common/io/CharSource;-><init>()V

    .line 425
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    .line 426
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/CharSource;

    .line 436
    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final openStream()Ljava/io/Reader;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Lcom/google/common/io/MultiReader;

    iget-object v1, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/io/MultiReader;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/common/io/CharSource$ConcatenatedCharSource;->sources:Ljava/lang/Iterable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharSource.concat("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
