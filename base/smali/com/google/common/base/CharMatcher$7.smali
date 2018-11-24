.class final Lcom/google/common/base/CharMatcher$7;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 314
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public final collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final countIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 310
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public final indexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 259
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final indexIn(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 264
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 265
    if-ne p2, v0, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public final lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 1

    .prologue
    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final matches(C)Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public final matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 273
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public final matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 278
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

.method public final negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/google/common/base/CharMatcher$7;->NONE:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public final or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 318
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method

.method public final removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, ""

    return-object v0
.end method

.method public final replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 288
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([CC)V

    .line 289
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 295
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, ""

    return-object v0
.end method
