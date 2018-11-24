.class public interface abstract Lcom/dexcom/cgm/h/a;
.super Ljava/lang/Object;
.source "CgmPresentation.java"


# static fields
.field public static final TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/16 v1, 0x1e

    invoke-direct {v0, v2, v1, v2}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/h/a;->TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;

    return-void
.end method


# virtual methods
.method public abstract calibrate(ILcom/dexcom/cgm/k/j;)V
.end method

.method public abstract getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;
.end method

.method public abstract getLastCalibration()Lcom/dexcom/cgm/h/a/d;
.end method

.method public abstract getSensorInsertionTime()Lcom/dexcom/cgm/k/j;
.end method

.method public abstract getTransmitterInfo()Lcom/dexcom/cgm/h/a/f;
.end method

.method public abstract registerCgmAlertUpdateCallback(Lcom/dexcom/cgm/h/b;)V
.end method

.method public abstract registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V
.end method

.method public abstract setTransmitterId(Lcom/dexcom/cgm/h/a/e;)V
.end method

.method public abstract startSensor(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract startServices()V
.end method

.method public abstract stopSensor(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract teardown()V
.end method

.method public abstract unregisterCgmAlertUpdateCallback(Lcom/dexcom/cgm/h/b;)V
.end method

.method public abstract unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V
.end method
