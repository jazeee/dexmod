.class public interface abstract Lcom/dexcom/cgm/i/a;
.super Ljava/lang/Object;
.source "CgmPresentationExtension.java"

# interfaces
.implements Lcom/dexcom/cgm/h/a;


# virtual methods
.method public abstract getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;
.end method

.method public abstract getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;
.end method

.method public abstract getKeyValues()Lcom/dexcom/cgm/d/e;
.end method

.method public abstract getMetersFromCurrentSession()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCompletedSensorWarmUpAtLeastOnce()Z
.end method

.method public abstract registerAlertSettingsUpdateCallback$1d73d766(Lcom/dexcom/cgm/h/b;)V
.end method

.method public abstract resetAlertSettings()V
.end method

.method public abstract setUserEvent(Lcom/dexcom/cgm/i/a/d;)V
.end method

.method public abstract unregisterAlertSettingsUpdateCallback$1d73d766(Lcom/dexcom/cgm/h/b;)V
.end method

.method public abstract updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
.end method

.method public abstract updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V
.end method
