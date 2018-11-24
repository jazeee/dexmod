.class final Lcom/samsung/android/sdk/internal/healthdata/u;
.super Lcom/samsung/android/sdk/internal/healthdata/g;
.source "IpcUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/internal/healthdata/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V
    .locals 0

    .prologue
    .line 66
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/u;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/g;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected final cancelResult()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/u;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->cancel()V

    .line 70
    return-void
.end method
