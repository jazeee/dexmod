.class final Lcom/flurry/sdk/ai;
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
        "Lcom/flurry/sdk/t;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/hj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/hj",
            "<",
            "Lcom/flurry/sdk/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Lcom/flurry/sdk/u;

    invoke-direct {v0}, Lcom/flurry/sdk/u;-><init>()V

    return-object v0
.end method
