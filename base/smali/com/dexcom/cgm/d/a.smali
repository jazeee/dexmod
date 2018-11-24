.class public interface abstract Lcom/dexcom/cgm/d/a;
.super Ljava/lang/Object;
.source "CgmDataAccessLayer.java"


# virtual methods
.method public abstract eraseAndReset()V
.end method

.method public abstract eraseAndResetGlucose()V
.end method

.method public abstract getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract getAlertSchedules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DexAlertSchedule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlertSettings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/AlertStateRecord;
.end method

.method public abstract getAlertStateRecords()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertStateRecord;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "[",
            "Lcom/dexcom/cgm/model/enums/BluetoothEventType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/BluetoothEventRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalibrationRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;
.end method

.method public abstract getFollowers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlucoseRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGlucoseRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyValues()Lcom/dexcom/cgm/d/e;
.end method

.method public abstract getLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
.end method

.method public abstract getLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;
.end method

.method public abstract getLatestCommands(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestGlucoseRecord()Lcom/dexcom/cgm/model/Glucose;
.end method

.method public abstract getLatestSessionRecord()Lcom/dexcom/cgm/model/SensorSession;
.end method

.method public abstract getPendingCalibrationCommands()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPendingStartStopCommands()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTechSupportRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/TechSupportLogRecord;",
            ">;"
        }
    .end annotation
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

.method public abstract readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CrashLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetAlertSettings()V
.end method

.method public abstract saveCrashLog(Lcom/dexcom/cgm/model/CrashLog;)V
.end method

.method public abstract saveDebugLog(Lcom/dexcom/cgm/model/DebugLogRecord;)V
.end method

.method public abstract teardown()V
.end method

.method public abstract updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V
.end method

.method public abstract updateAlertStateRecords([Lcom/dexcom/cgm/model/AlertStateRecord;)V
.end method

.method public abstract writeAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
.end method

.method public abstract writeBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
.end method

.method public abstract writeCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V
.end method

.method public abstract writeCalibrationRecord(Lcom/dexcom/cgm/model/Meter;)V
.end method

.method public abstract writeCommand(Lcom/dexcom/cgm/model/CgmCommand;)V
.end method

.method public abstract writeFollowers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeGlucoseRecords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract writeOrUpdateAlertSettingsRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V
.end method

.method public abstract writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V
.end method

.method public abstract writeTechSupportLog(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V
.end method

.method public abstract writeTransmitter(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
.end method

.method public abstract writeUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V
.end method
