.class public interface abstract Lcom/dexcom/cgm/a/f;
.super Ljava/lang/Object;
.source "AlertSystem.java"


# virtual methods
.method public abstract acknowledgeAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V
.end method

.method public abstract getAlertsCurrentlyOnDisplay()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/a/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract inactivateAllAlerts()V
.end method

.method public abstract registerAlertCallback(Lcom/dexcom/cgm/a/g;)V
.end method

.method public abstract teardown()V
.end method

.method public abstract unregisterAlertCallback(Lcom/dexcom/cgm/a/g;)V
.end method
