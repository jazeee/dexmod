.class final Lcom/flurry/sdk/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/fl",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/bk;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bk;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/flurry/sdk/bm;->a:Lcom/flurry/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 246
    .line 1252
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->h()I

    move-result v0

    .line 1254
    if-lez v0, :cond_1

    .line 1256
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 1257
    invoke-static {}, Lcom/flurry/sdk/bk;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulse logging report sent successfully HTTP response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/flurry/sdk/bm;->a:Lcom/flurry/sdk/bk;

    invoke-static {v0}, Lcom/flurry/sdk/bk;->a(Lcom/flurry/sdk/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1259
    iget-object v0, p0, Lcom/flurry/sdk/bm;->a:Lcom/flurry/sdk/bk;

    invoke-static {v0}, Lcom/flurry/sdk/bk;->b(Lcom/flurry/sdk/bk;)Lcom/flurry/sdk/ep;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/bm;->a:Lcom/flurry/sdk/bk;

    invoke-static {v1}, Lcom/flurry/sdk/bk;->a(Lcom/flurry/sdk/bk;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ep;->a(Ljava/lang/Object;)V

    .line 1261
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/bk;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Pulse logging report sent unsuccessfully, HTTP response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/bk;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/fd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
