.class final Lcom/google/common/base/Ticker$1;
.super Lcom/google/common/base/Ticker;
.source "Ticker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/common/base/Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method public final read()J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/google/common/base/Platform;->systemNanoTime()J

    move-result-wide v0

    return-wide v0
.end method
