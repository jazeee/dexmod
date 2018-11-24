.class Lcom/google/common/reflect/TypeResolver$TypeTable;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# instance fields
.field private final map:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    .line 219
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    .line 223
    return-void
.end method


# virtual methods
.method final resolve(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 239
    .line 240
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeTable$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/reflect/TypeResolver$TypeTable$1;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)V

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeResolver$TypeTable;->resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method resolveInternal(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$TypeTable;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/google/common/reflect/TypeResolver$TypeTable;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 262
    if-nez v0, :cond_3

    .line 263
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 264
    array-length v1, v0

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-object p1

    .line 267
    :cond_1
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v1, p2, v2}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Lcom/google/common/reflect/TypeResolver$1;)V

    invoke-static {v1, v0}, Lcom/google/common/reflect/TypeResolver;->access$300(Lcom/google/common/reflect/TypeResolver;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 296
    sget-boolean v2, Lcom/google/common/reflect/Types$NativeTypeVariableEquals;->NATIVE_TYPE_VARIABLE_ONLY:Z

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_0

    .line 304
    :cond_3
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v1, p2, v2}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Lcom/google/common/reflect/TypeResolver$1;)V

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method

.method final where(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver$TypeTable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$TypeVariableKey;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver$TypeTable;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    .line 228
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$TypeTable;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 229
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 232
    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;->equalsType(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    const-string v7, "Type variable %s bound to itself"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v2, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v5, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    move v2, v4

    .line 232
    goto :goto_1

    .line 235
    :cond_1
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$TypeTable;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
