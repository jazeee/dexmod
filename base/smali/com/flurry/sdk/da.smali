.class final Lcom/flurry/sdk/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/er;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/er",
        "<",
        "Lcom/flurry/sdk/do;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/flurry/sdk/da;->a:Lcom/flurry/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 2

    .prologue
    .line 186
    .line 1190
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/db;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/db;-><init>(Lcom/flurry/sdk/da;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
