.class public interface abstract Lcom/dexcom/cgm/b/f;
.super Ljava/lang/Object;
.source "CgmProvider.java"


# static fields
.field public static final TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v1, v2}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/b/f;->TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;

    return-void
.end method


# virtual methods
.method public abstract calibrate(ILcom/dexcom/cgm/k/j;)V
.end method

.method public abstract getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;
.end method

.method public abstract getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract getAlertSettings(I)Lcom/dexcom/cgm/model/AlertSettings;
.end method

.method public abstract getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;
.end method

.method public abstract getCurrentDisplayGlucoseRecord()Lcom/dexcom/cgm/model/DisplayGlucose;
.end method

.method public abstract getKeyValues()Lcom/dexcom/cgm/d/e;
.end method

.method public abstract getLastCalibration()Lcom/dexcom/cgm/model/Meter;
.end method

.method public abstract getMetersFromCurrentSession()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSensorInsertionTime()Lcom/dexcom/cgm/k/j;
.end method

.method public abstract getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;
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
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCompletedSensorWarmUpAtLeastOnce()Z
.end method

.method public abstract receiveConnectionCompleteData(Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/n;",
            "Lcom/dexcom/cgm/k/m;",
            "Lcom/dexcom/cgm/model/Glucose;",
            "Lcom/dexcom/cgm/model/CalBounds;",
            "Lcom/dexcom/cgm/tx/mediator/p;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract registerAlertSettingsUpdateCallback(Lcom/dexcom/cgm/b/g;)V
.end method

.method public abstract registerCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V
.end method

.method public abstract registerCgmDataUpdateCallback(Lcom/dexcom/cgm/b/i;)V
.end method

.method public abstract resetAlertSettings()V
.end method

.method public abstract setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)V
.end method

.method public abstract setUserEvent(Lcom/dexcom/cgm/model/UserEvent;)V
.end method

.method public abstract startSensor(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract startServices()V
.end method

.method public abstract stopSensor(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract teardown()V
.end method

.method public abstract unregisterAlertSettingsUpdateCallback(Lcom/dexcom/cgm/b/g;)V
.end method

.method public abstract unregisterCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V
.end method

.method public abstract unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/b/i;)V
.end method

.method public abstract updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
.end method

.method public abstract updateAlertSettings(Lcom/dexcom/cgm/model/UserAlertProperties;)V
.end method
