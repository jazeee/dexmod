.class final Lcom/flurry/sdk/ih;
.super Lcom/flurry/sdk/io;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ig;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ig;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ig;

    invoke-direct {p0}, Lcom/flurry/sdk/io;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Lcom/flurry/sdk/ie;

    invoke-direct {v0}, Lcom/flurry/sdk/ie;-><init>()V

    .line 22
    invoke-virtual {v0}, Lcom/flurry/sdk/ie;->b()V

    .line 24
    iget-object v0, p0, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ig;

    invoke-static {v0}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ig;

    invoke-static {v0}, Lcom/flurry/sdk/ig;->b(Lcom/flurry/sdk/ig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ig;

    invoke-static {v1}, Lcom/flurry/sdk/ig;->c(Lcom/flurry/sdk/ig;)Lcom/flurry/sdk/io;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ig;

    invoke-static {v2}, Lcom/flurry/sdk/ig;->d(Lcom/flurry/sdk/ig;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;J)V

    .line 27
    :cond_0
    return-void
.end method
