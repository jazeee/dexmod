.class final Lcom/google/common/base/CharMatcher$8;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 396
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object p0
.end method

.method public final collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final countIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 391
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public final indexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 335
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const/4 v0, -0x1

    return v0
.end method

.method public final indexIn(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 340
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 341
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 342
    const/4 v0, -0x1

    return v0
.end method

.method public final lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 346
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const/4 v0, -0x1

    return v0
.end method

.method public final matches(C)Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public final matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 351
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 355
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public final negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/google/common/base/CharMatcher$8;->ANY:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public final or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public final removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
