.class public abstract Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    sput-object v0, Lcom/google/common/collect/ImmutableMultiset;->EMPTY:Lcom/google/common/collect/ImmutableMultiset;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 466
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/common/collect/Multiset$Entry",
            "<+TE;>;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 200
    .line 201
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v6

    .line 202
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 203
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    .line 204
    if-lez v1, :cond_2

    .line 207
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 208
    int-to-long v0, v1

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    .line 210
    goto :goto_0

    .line 212
    :cond_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 213
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    .line 215
    :goto_2
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 174
    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 176
    check-cast v0, Lcom/google/common/collect/ImmutableMultiset;

    .line 177
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-object v0

    .line 182
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    .line 186
    :goto_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    goto :goto_1
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 232
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 233
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static varargs copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;Lcom/google/common/collect/ImmutableMultiset$1;)V

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/collect/ImmutableMultiset;->EMPTY:Lcom/google/common/collect/ImmutableMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->build()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 324
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    add-int/2addr p2, v0

    .line 326
    goto :goto_0

    .line 327
    :cond_0
    return p2
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 347
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;->createEntrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->equalsImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableMultiset$1;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method
