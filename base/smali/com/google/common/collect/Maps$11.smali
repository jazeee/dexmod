.class final Lcom/google/common/collect/Maps$11;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$EntryTransformer;)V
    .locals 0

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/google/common/collect/Maps$11;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1868
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$11;->apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/google/common/collect/Maps$11;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->transformEntry(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
