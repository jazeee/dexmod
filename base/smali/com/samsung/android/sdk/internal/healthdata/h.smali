.class final Lcom/samsung/android/sdk/internal/healthdata/h;
.super Landroid/os/Handler;
.source "HealthResultHolderImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/h;-><init>(Landroid/os/Looper;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/sdk/healthdata/aj;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/aj",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/internal/healthdata/h;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/h;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    const-string v0, "Health.ResultHolder"

    const-string v1, "No default handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 214
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/healthdata/aj;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 1222
    if-eqz v1, :cond_0

    .line 1223
    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/healthdata/aj;->onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
