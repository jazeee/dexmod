.class final Lcom/samsung/android/sdk/internal/healthdata/l;
.super Lcom/samsung/android/sdk/internal/healthdata/q;
.source "HealthResultReceiver.java"


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/l;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;B)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/l;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/l;->a:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->a(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;ILandroid/os/Bundle;)V

    .line 433
    return-void
.end method
