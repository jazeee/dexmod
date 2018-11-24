.class final Lcom/samsung/android/sdk/internal/healthdata/j;
.super Lcom/samsung/android/sdk/internal/healthdata/n;
.source "HealthResultReceiver.java"


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/j;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;B)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/j;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V

    return-void
.end method


# virtual methods
.method public final cancel(I)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/j;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->onCancelResult(I)V

    .line 337
    return-void
.end method

.method public final setCallback(ILcom/samsung/android/sdk/internal/healthdata/p;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/j;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->a(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/p;)Lcom/samsung/android/sdk/internal/healthdata/p;

    .line 332
    return-void
.end method
