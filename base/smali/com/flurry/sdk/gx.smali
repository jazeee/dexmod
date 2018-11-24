.class final Lcom/flurry/sdk/gx;
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
        "Lcom/flurry/sdk/gn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gr;)V
    .locals 0

    .prologue
    .line 314
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
            "Lcom/flurry/sdk/gn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/flurry/sdk/go;

    invoke-direct {v0}, Lcom/flurry/sdk/go;-><init>()V

    return-object v0
.end method
