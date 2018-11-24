.class final Lcom/flurry/sdk/ao;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ap;

.field private synthetic b:Lcom/flurry/sdk/at;

.field private synthetic c:Lcom/flurry/sdk/am;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am;Lcom/flurry/sdk/ap;Lcom/flurry/sdk/at;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/flurry/sdk/ao;->c:Lcom/flurry/sdk/am;

    iput-object p2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    iput-object p3, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x3

    .line 118
    check-cast p2, Ljava/lang/String;

    .line 1121
    invoke-static {}, Lcom/flurry/sdk/am;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pulse report to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    .line 1122
    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HTTP status code is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1123
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->h()I

    move-result v0

    .line 1127
    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->c()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/at;->a(I)V

    .line 1128
    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    iput v0, v1, Lcom/flurry/sdk/at;->e:I

    .line 1131
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1132
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->j()Ljava/lang/Exception;

    move-result-object v0

    .line 1134
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-static {}, Lcom/flurry/sdk/am;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout occured when trying to connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1138
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->j()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1137
    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1146
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Lcom/flurry/sdk/am;

    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/at;Lcom/flurry/sdk/ap;)V

    .line 1165
    :goto_1
    return-void

    .line 1142
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/am;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Manually managed http request timeout occured for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    .line 1143
    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1142
    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/am;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occured when trying to connect to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-virtual {v3}, Lcom/flurry/sdk/ap;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1150
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Lcom/flurry/sdk/am;

    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/at;Lcom/flurry/sdk/ap;Ljava/lang/String;)V

    goto :goto_1

    .line 1159
    :cond_2
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_3

    if-ge v0, v5, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Lcom/flurry/sdk/am;

    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/am;->b(Lcom/flurry/sdk/am;Lcom/flurry/sdk/at;Lcom/flurry/sdk/ap;)V

    goto :goto_1

    .line 1164
    :cond_3
    if-lt v0, v5, :cond_4

    const/16 v1, 0x190

    if-ge v0, v1, :cond_4

    .line 1165
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Lcom/flurry/sdk/am;

    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-static {v0, v1, v2, p1}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/at;Lcom/flurry/sdk/ap;Lcom/flurry/sdk/fj;)V

    goto :goto_1

    .line 1170
    :cond_4
    invoke-static {}, Lcom/flurry/sdk/am;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " report failed sending to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    .line 1171
    invoke-virtual {v2}, Lcom/flurry/sdk/ap;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/flurry/sdk/ao;->c:Lcom/flurry/sdk/am;

    iget-object v1, p0, Lcom/flurry/sdk/ao;->b:Lcom/flurry/sdk/at;

    iget-object v2, p0, Lcom/flurry/sdk/ao;->a:Lcom/flurry/sdk/ap;

    invoke-static {v0, v1, v2, p2}, Lcom/flurry/sdk/am;->a(Lcom/flurry/sdk/am;Lcom/flurry/sdk/at;Lcom/flurry/sdk/ap;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
