.class final Lcom/flurry/sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/hn",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/ce;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/hj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/hj",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ce;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/flurry/sdk/hg;

    new-instance v1, Lcom/flurry/sdk/cf;

    invoke-direct {v1}, Lcom/flurry/sdk/cf;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/hg;-><init>(Lcom/flurry/sdk/hj;)V

    return-object v0
.end method
