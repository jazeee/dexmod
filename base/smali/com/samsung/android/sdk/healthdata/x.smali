.class final Lcom/samsung/android/sdk/healthdata/x;
.super Ljava/lang/Object;
.source "HealthDataStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/aj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/aj",
        "<",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/healthdata/w;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/w;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/x;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 466
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/x;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/x;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/z;->onConnected()V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/x;->a:Lcom/samsung/android/sdk/healthdata/w;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/x;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->b(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/ab;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
