.class final Lcom/flurry/sdk/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fs;


# instance fields
.field private synthetic a:Lcom/flurry/sdk/fj;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fj;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/fo;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v0}, Lcom/flurry/sdk/fj;->d(Lcom/flurry/sdk/fj;)V

    .line 89
    return-void
.end method

.method public final a(Lcom/flurry/sdk/fo;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/flurry/sdk/fo;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v0}, Lcom/flurry/sdk/fj;->c(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/hj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    iget-object v1, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v1}, Lcom/flurry/sdk/fj;->c(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/flurry/sdk/hj;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/flurry/sdk/fo;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v0}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fj;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v0}, Lcom/flurry/sdk/fj;->b(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/hj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v0}, Lcom/flurry/sdk/fj;->b(Lcom/flurry/sdk/fj;)Lcom/flurry/sdk/hj;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/fk;->a:Lcom/flurry/sdk/fj;

    invoke-static {v1}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fj;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/flurry/sdk/hj;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method
