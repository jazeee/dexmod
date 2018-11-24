.class final Lcom/samsung/android/sdk/internal/healthdata/k;
.super Lcom/samsung/android/sdk/internal/healthdata/q;
.source "HealthResultReceiver.java"


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/k;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;B)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/k;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/k;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;ILandroid/os/Bundle;)V

    .line 325
    return-void
.end method
