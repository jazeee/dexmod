.class final Lcom/flurry/sdk/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/fl",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Lcom/flurry/sdk/y;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/y;JZ)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    iput-wide p2, p0, Lcom/flurry/sdk/ac;->a:J

    iput-boolean p4, p0, Lcom/flurry/sdk/ac;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 459
    check-cast p2, [B

    .line 1462
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->h()I

    move-result v4

    .line 1464
    invoke-static {}, Lcom/flurry/sdk/y;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proton config request: HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v0, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1466
    const/16 v0, 0x190

    if-eq v4, v0, :cond_0

    const/16 v0, 0x196

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19c

    if-eq v4, v0, :cond_0

    const/16 v0, 0x19f

    if-ne v4, v0, :cond_2

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v0, v10, v11}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;J)J

    .line 1470
    :cond_1
    :goto_0
    return-void

    .line 1474
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    .line 1478
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/ad;

    invoke-direct {v2, p0, p2}, Lcom/flurry/sdk/ad;-><init>(Lcom/flurry/sdk/ac;[B)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    .line 1486
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v0}, Lcom/flurry/sdk/y;->e(Lcom/flurry/sdk/y;)Lcom/flurry/sdk/fh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/fh;->d([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    :goto_1
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2, v0}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;Lcom/flurry/sdk/i;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 1495
    :cond_3
    if-eqz v0, :cond_5

    .line 1496
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2, v10, v11}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;J)J

    .line 1498
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    iget-wide v6, p0, Lcom/flurry/sdk/ac;->a:J

    invoke-static {v2, v6, v7}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/y;J)J

    .line 1499
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    iget-boolean v3, p0, Lcom/flurry/sdk/ac;->b:Z

    invoke-static {v2, v3}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;Z)Z

    .line 1500
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2, v0}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/y;Lcom/flurry/sdk/i;)Lcom/flurry/sdk/i;

    .line 1503
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2}, Lcom/flurry/sdk/y;->f(Lcom/flurry/sdk/y;)V

    .line 1506
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2}, Lcom/flurry/sdk/y;->g(Lcom/flurry/sdk/y;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1507
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2, v9}, Lcom/flurry/sdk/y;->b(Lcom/flurry/sdk/y;Z)Z

    .line 1508
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    const-string v3, "flurry.session_start"

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;Ljava/lang/String;Ljava/util/Map;)V

    .line 1512
    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v1}, Lcom/flurry/sdk/y;->h(Lcom/flurry/sdk/y;)V

    :cond_5
    move-object v1, v0

    .line 1516
    :cond_6
    if-nez v1, :cond_1

    .line 1518
    iget-object v0, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v0}, Lcom/flurry/sdk/y;->i(Lcom/flurry/sdk/y;)J

    move-result-wide v0

    shl-long v2, v0, v9

    .line 1520
    const/16 v0, 0x1ad

    if-ne v4, v0, :cond_7

    .line 1521
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/fj;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1522
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1523
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1525
    invoke-static {}, Lcom/flurry/sdk/y;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server returned retry time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v1, v4}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1527
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1533
    :goto_2
    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/y;->a(Lcom/flurry/sdk/y;J)J

    .line 1535
    invoke-static {}, Lcom/flurry/sdk/y;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Proton config request failed, backing off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2}, Lcom/flurry/sdk/y;->i(Lcom/flurry/sdk/y;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v1}, Lcom/flurry/sdk/y;->j(Lcom/flurry/sdk/y;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ac;->c:Lcom/flurry/sdk/y;

    invoke-static {v2}, Lcom/flurry/sdk/y;->i(Lcom/flurry/sdk/y;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    const/4 v2, 0x5

    invoke-static {}, Lcom/flurry/sdk/y;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 1529
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/flurry/sdk/y;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server returned nonsensical retry time"

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method
