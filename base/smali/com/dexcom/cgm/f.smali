.class final Lcom/dexcom/cgm/f;
.super Ljava/lang/Object;
.source "CgmApplication.java"

# interfaces
.implements Lcom/dexcom/cgm/k/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/dexcom/cgm/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final elapsedRealtime()J
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
