.class final Lcom/google/common/cache/LocalCache$ValueIterator;
.super Lcom/google/common/cache/LocalCache$HashIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache",
        "<TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .prologue
    .line 4369
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$ValueIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$HashIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 4373
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$ValueIterator;->nextEntry()Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
