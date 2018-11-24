.class final Lcom/google/common/eventbus/AnnotatedSubscriberFinder$1;
.super Lcom/google/common/cache/CacheLoader;
.source "AnnotatedSubscriberFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;->access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder$1;->load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
