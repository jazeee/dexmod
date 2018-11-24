.class final Lcom/dexcom/cgm/k/e;
.super Ljava/lang/Object;
.source "RealTimeClock.java"

# interfaces
.implements Lcom/dexcom/cgm/k/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final elapsedRealtime()J
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
