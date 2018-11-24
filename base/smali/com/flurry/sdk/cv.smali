.class final Lcom/flurry/sdk/cv;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/cj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cj;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/flurry/sdk/cv;->a:Lcom/flurry/sdk/cj;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/cv;->a:Lcom/flurry/sdk/cj;

    invoke-static {v0}, Lcom/flurry/sdk/cj;->g(Lcom/flurry/sdk/cj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->c()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->d()V

    .line 385
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->e()Lcom/flurry/sdk/am;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cw;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cw;-><init>(Lcom/flurry/sdk/cv;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    .line 393
    :cond_1
    return-void
.end method
