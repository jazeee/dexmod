.class public interface abstract Lcom/dexcom/cgm/d/c;
.super Ljava/lang/Object;
.source "DataPostDataAccessLayer.java"


# virtual methods
.method public abstract addDataPost(JLjava/lang/String;)V
.end method

.method public abstract deleteBluetoothLogsBeforeTime(J)V
.end method

.method public abstract deleteCrashLogsBeforeTime(J)V
.end method

.method public abstract deleteDataPost(J)V
.end method

.method public abstract deleteDebugLogsBeforeTime(J)V
.end method

.method public abstract deleteTechSupportLogsBeforeTime(J)V
.end method

.method public abstract getInstallationID()Ljava/util/UUID;
.end method

.method public abstract getLastAlertSettingsUploadTime()J
.end method

.method public abstract getLastDeviceSettingsUploadTime()J
.end method

.method public abstract getLastPostTime()J
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getPatientID()Ljava/util/UUID;
.end method

.method public abstract getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract hasUsersPasswordChanged()Z
.end method

.method public abstract readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract readAlertSettings()Ljava/util/List;
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

.method public abstract readBluetoothLogs(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/BluetoothEventRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readCrashLogs(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CrashLog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readDataPosts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readDebugLogs(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DebugLogRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readMeters(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readRealEGVs(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readSensorSessions(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/SensorSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readTechSupportLogs(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/TechSupportLogRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readUserEvents(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHasUsersPasswordChanged(Z)V
.end method

.method public abstract setLastAlertSettingsUploadTime(J)V
.end method

.method public abstract setLastDeviceSettingsUploadTime(J)V
.end method

.method public abstract setLastPostTime(J)V
.end method

.method public abstract setWasLastPostSuccessful(Z)V
.end method

.method public abstract wasLastPostSuccessful()Z
.end method
