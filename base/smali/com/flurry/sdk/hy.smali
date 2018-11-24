.class final Lcom/flurry/sdk/hy;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/hx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hx;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/flurry/sdk/hy;->a:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Lcom/flurry/sdk/hx;->a()V

    .line 22
    new-instance v0, Lcom/flurry/sdk/hz;

    invoke-direct {v0}, Lcom/flurry/sdk/hz;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/flurry/sdk/hz;->b()V

    .line 24
    return-void
.end method
