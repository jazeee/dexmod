.class Lcom/google/common/collect/RegularImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field private final transient entries:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 56
    const-wide v2, 0x3ff3333333333333L    # 1.2

    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    .line 57
    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 58
    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    .line 59
    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v11

    .line 61
    const/4 v3, 0x0

    .line 63
    const/4 v2, 0x0

    move v7, v2

    move v8, v3

    :goto_0
    move/from16 v0, p1

    if-ge v7, v0, :cond_5

    .line 65
    aget-object v3, p2, v7

    .line 66
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 67
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v13

    .line 70
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v14

    .line 71
    invoke-static {v13}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v15, v2, v4

    .line 72
    invoke-static {v14}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v16, v2, v4

    .line 74
    aget-object v6, v9, v15

    move-object v4, v6

    .line 75
    :goto_1
    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    const-string v17, "key"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3, v4}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 76
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 77
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 79
    :cond_1
    aget-object v5, v10, v16

    move-object v4, v5

    .line 80
    :goto_3
    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_4
    const-string v17, "value"

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3, v4}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 81
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    move-object v4, v2

    goto :goto_3

    .line 82
    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    .line 84
    :cond_3
    if-nez v6, :cond_4

    if-nez v5, :cond_4

    move-object v2, v3

    .line 88
    :goto_5
    aput-object v2, v9, v15

    .line 89
    aput-object v2, v10, v16

    .line 90
    aput-object v2, v11, v7

    .line 91
    xor-int v2, v13, v14

    add-int v3, v8, v2

    .line 63
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v3

    goto :goto_0

    .line 84
    :cond_4
    new-instance v2, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v2, v3, v6, v5}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_5

    .line 94
    :cond_5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 95
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 96
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 97
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 98
    return-void
.end method

.method varargs constructor <init>([Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 46
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    .line 47
    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 104
    move-object/from16 v0, p1

    array-length v8, v0

    .line 105
    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v8, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    .line 106
    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    .line 107
    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v9

    .line 108
    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v10

    .line 109
    invoke-static {v8}, Lcom/google/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v11

    .line 110
    const/4 v3, 0x0

    .line 112
    const/4 v2, 0x0

    move v6, v2

    move v7, v3

    :goto_0
    if-ge v6, v8, :cond_5

    .line 114
    aget-object v12, p1, v6

    .line 115
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    .line 116
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 117
    invoke-static {v13, v14}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v15

    .line 119
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v16

    .line 120
    invoke-static {v15}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v17, v2, v3

    .line 121
    invoke-static/range {v16 .. v16}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int v18, v2, v3

    .line 123
    aget-object v5, v9, v17

    move-object v3, v5

    .line 124
    :goto_1
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    const-string v4, "key"

    invoke-static {v2, v4, v12, v3}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 125
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 126
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 128
    :cond_1
    aget-object v4, v10, v18

    move-object v3, v4

    .line 129
    :goto_3
    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_4
    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-static {v2, v0, v12, v3}, Lcom/google/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 130
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v2

    move-object v3, v2

    goto :goto_3

    .line 131
    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    .line 133
    :cond_3
    if-nez v5, :cond_4

    if-nez v4, :cond_4

    new-instance v2, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v2, v13, v14}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    :goto_5
    aput-object v2, v9, v17

    .line 138
    aput-object v2, v10, v18

    .line 139
    aput-object v2, v11, v6

    .line 140
    xor-int v2, v15, v16

    add-int v3, v7, v2

    .line 112
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    goto :goto_0

    .line 133
    :cond_4
    new-instance v2, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v2, v13, v14, v5, v4}, Lcom/google/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V

    goto :goto_5

    .line 143
    :cond_5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 144
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 145
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 146
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/RegularImmutableBiMap;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/RegularImmutableBiMap;)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->valueTable:[Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method private static createEntryArray(I)[Lcom/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/google/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 183
    new-array v0, p0, [Lcom/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap$1;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    const/4 v0, 0x0

    .line 189
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v1, v2

    .line 193
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableBiMap;->keyTable:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v2, v1

    :goto_1
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 247
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lcom/google/common/collect/RegularImmutableBiMap;Lcom/google/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method
