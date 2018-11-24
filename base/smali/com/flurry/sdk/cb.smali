.class final Lcom/flurry/sdk/cb;
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
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/flurry/sdk/ca;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ca;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/ca;

    iput-object p2, p0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/fj;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 130
    .line 1136
    invoke-virtual {p1}, Lcom/flurry/sdk/fj;->h()I

    move-result v0

    .line 1137
    if-lez v0, :cond_1

    .line 1138
    invoke-static {}, Lcom/flurry/sdk/ca;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics report sent."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Lcom/flurry/sdk/ca;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FlurryDataSender: report "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/flurry/sdk/fd;->c()I

    move-result v1

    if-gt v1, v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/fd;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/cc;

    invoke-direct {v2, p0, v0}, Lcom/flurry/sdk/cc;-><init>(Lcom/flurry/sdk/cb;I)V

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/eg;->a(Ljava/lang/Runnable;)V

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/ca;

    iget-object v2, p0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/sdk/ca;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1154
    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/ca;

    invoke-static {v0}, Lcom/flurry/sdk/ca;->a(Lcom/flurry/sdk/ca;)V

    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/cb;->c:Lcom/flurry/sdk/ca;

    iget-object v1, p0, Lcom/flurry/sdk/cb;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/cb;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ca;->a(Lcom/flurry/sdk/ca;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
