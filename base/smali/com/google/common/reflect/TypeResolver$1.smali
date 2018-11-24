.class final Lcom/google/common/reflect/TypeResolver$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# instance fields
.field final synthetic val$mappings:Ljava/util/Map;

.field final synthetic val$to:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method final visitClass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No type mapping from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "%s is not an array type."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 143
    return-void

    :cond_0
    move v0, v2

    .line 141
    goto :goto_0
.end method

.method final visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    const-class v0, Ljava/lang/reflect/ParameterizedType;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 129
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "Inconsistent raw type: %s vs. %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v3

    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v6, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 132
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 133
    array-length v1, v4

    array-length v6, v5

    if-ne v1, v6, :cond_0

    move v1, v2

    :goto_0
    const-string v6, "%s not compatible with %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object v0, v7, v2

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v1, v4, v3

    aget-object v2, v5, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    .line 133
    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method final visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method final visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    const-class v0, Ljava/lang/reflect/WildcardType;

    iget-object v3, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v0, v3}, Lcom/google/common/reflect/TypeResolver;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 112
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 113
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 114
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 115
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 116
    array-length v0, v3

    array-length v7, v4

    if-ne v0, v7, :cond_0

    array-length v0, v5

    array-length v7, v6

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_0
    const-string v7, "Incompatible type: %s vs. %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v2

    iget-object v9, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v9, v8, v1

    invoke-static {v0, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 120
    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v3, v0

    aget-object v8, v4, v0

    invoke-static {v1, v7, v8}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    .line 123
    :cond_1
    :goto_2
    array-length v0, v5

    if-ge v2, v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v1, v5, v2

    aget-object v3, v6, v2

    invoke-static {v0, v1, v3}, Lcom/google/common/reflect/TypeResolver;->access$100(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    :cond_2
    return-void
.end method
