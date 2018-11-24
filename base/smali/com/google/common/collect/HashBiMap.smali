.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient mask:I

.field private transient modCount:I

.field private transient size:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 78
    return-object v0
.end method

.method private createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    new-array v0, p1, [Lcom/google/common/collect/HashBiMap$BiEntry;

    return-object v0
.end method

.method private delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    iget v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int v3, v1, v2

    .line 127
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v1, v1, v3

    move-object v2, v0

    .line 129
    :goto_0
    if-ne v1, p1, :cond_1

    .line 130
    if-nez v2, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v2, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object v2, v1, v3

    .line 140
    :goto_1
    iget v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v2, v1

    .line 142
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v1, v1, v2

    .line 144
    :goto_2
    if-ne v1, p1, :cond_3

    .line 145
    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object v1, v0, v2

    .line 155
    :goto_3
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 156
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 157
    return-void

    .line 133
    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_1

    .line 128
    :cond_1
    iget-object v2, v1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_3

    .line 143
    :cond_3
    iget-object v0, v1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2
.end method

.method private static hash(Ljava/lang/Object;)I
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private init(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 112
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 113
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 114
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 115
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 116
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 117
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 118
    return-void
.end method

.method private insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget v0, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object p1, v1, v0

    .line 164
    iget v0, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v0, v1

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 166
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    aput-object p1, v1, v0

    .line 168
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 169
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 170
    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 225
    invoke-static {p2}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    :goto_0
    return-object p2

    .line 233
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_1

    .line 235
    if-eqz p3, :cond_3

    .line 236
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 242
    :cond_1
    if-eqz v2, :cond_2

    .line 243
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 245
    :cond_2
    new-instance v3, Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-direct {v3, p1, v0, p2, v1}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 246
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 247
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 248
    if-nez v2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    .line 238
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "value already present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_4
    iget-object p2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 254
    invoke-static {p2}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    invoke-static {p2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    :goto_0
    return-object p2

    .line 262
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_1

    .line 264
    if-eqz p3, :cond_3

    .line 265
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 271
    :cond_1
    if-eqz v2, :cond_2

    .line 272
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 274
    :cond_2
    new-instance v3, Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-direct {v3, p2, v1, p1, v0}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 275
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 276
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->rehashIfNecessary()V

    .line 277
    if-nez v2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    .line 267
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "value already present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_4
    iget-object p2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 660
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 661
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->init(I)V

    .line 662
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 663
    return-void
.end method

.method private rehashIfNecessary()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 281
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 282
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->size:I

    array-length v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    .line 285
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 286
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->createTable(I)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 287
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    .line 288
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 290
    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 291
    aget-object v1, v3, v0

    .line 292
    :goto_1
    if-eqz v1, :cond_0

    .line 293
    iget-object v2, v1, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 294
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    move-object v1, v2

    .line 296
    goto :goto_1

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 300
    :cond_2
    return-void
.end method

.method private seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 179
    iget v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_1
    return-object v0

    .line 178
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->mask:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 189
    iget v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_1
    return-object v0

    .line 188
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInVToKBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 654
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 655
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->modCount:I

    .line 324
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V

    return-object v0
.end method

.method public final forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final inverse()Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->inverse:Lcom/google/common/collect/BiMap;

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 310
    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    .line 313
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 314
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->size:I

    return v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
