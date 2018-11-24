.class final Lcom/google/common/collect/Sets$CartesianSet;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lcom/google/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CartesianList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/CartesianList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;",
            "Lcom/google/common/collect/CartesianList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 1156
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    .line 1157
    iput-object p2, p0, Lcom/google/common/collect/Sets$CartesianSet;->delegate:Lcom/google/common/collect/CartesianList;

    .line 1158
    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TE;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 1126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1127
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1128
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1129
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1151
    :goto_1
    return-object v0

    .line 1131
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1134
    new-instance v2, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v2, v1}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 1151
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet;

    new-instance v3, Lcom/google/common/collect/CartesianList;

    invoke-direct {v3, v2}, Lcom/google/common/collect/CartesianList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/Sets$CartesianSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/CartesianList;)V

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->delegate:Lcom/google/common/collect/CartesianList;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1168
    instance-of v0, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 1169
    check-cast p1, Lcom/google/common/collect/Sets$CartesianSet;

    .line 1170
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1182
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1183
    mul-int/lit8 v1, v1, 0x1f

    .line 1184
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    const/4 v0, 0x1

    .line 1188
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1189
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 1191
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 1192
    goto :goto_1

    .line 1193
    :cond_1
    add-int v0, v2, v1

    .line 1194
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
