.class final Lcom/flurry/sdk/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/az;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/flurry/sdk/bk;->a()Lcom/flurry/sdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bk;->c()V

    .line 60
    return-void
.end method
