.class final Lcom/flurry/sdk/di;
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
        "Lcom/flurry/sdk/hp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dh;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/di;->a:Lcom/flurry/sdk/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/eq;)V
    .locals 2

    .prologue
    .line 73
    check-cast p1, Lcom/flurry/sdk/hp;

    .line 1076
    sget-object v0, Lcom/flurry/sdk/dm;->a:[I

    iget v1, p1, Lcom/flurry/sdk/hp;->c$7f7b619d:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 1079
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/di;->a:Lcom/flurry/sdk/dh;

    invoke-virtual {v0}, Lcom/flurry/sdk/dh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dj;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dj;-><init>(Lcom/flurry/sdk/di;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
