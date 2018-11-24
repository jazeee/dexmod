.class final Lcom/flurry/sdk/az;
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
        "Lcom/flurry/sdk/du;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ay;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ay;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flurry/sdk/az;->a:Lcom/flurry/sdk/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 4

    .prologue
    .line 50
    check-cast p1, Lcom/flurry/sdk/du;

    .line 1053
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/flurry/sdk/az;->a:Lcom/flurry/sdk/ay;

    invoke-static {v1}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ay;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/flurry/sdk/du;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-boolean v0, p1, Lcom/flurry/sdk/du;->a:Z

    if-eqz v0, :cond_0

    .line 1056
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ba;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ba;-><init>(Lcom/flurry/sdk/az;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    .line 50
    :cond_0
    return-void
.end method
