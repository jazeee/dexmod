.class final Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;
.super Ljava/lang/Object;
.source "AnnotatedSubscriberFinder.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameterTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->name:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->parameterTypes:Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 105
    instance-of v1, p1, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;

    if-eqz v1, :cond_0

    .line 106
    check-cast p1, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;

    .line 107
    iget-object v1, p0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->parameterTypes:Ljava/util/List;

    iget-object v2, p1, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->parameterTypes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$MethodIdentifier;->parameterTypes:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
