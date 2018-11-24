.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;
.source "DataPostSensorSessionRecord.java"


# instance fields
.field private SessionState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/SensorSession;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/SensorSession;->getRecordedSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;->setRecordedTime(J)V

    .line 22
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/SensorSession;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;->TransmitterId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/SensorSession;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;->setTransmitterTime(J)V

    .line 25
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/SensorSession;->getLogType()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SessionLogType;->getSessionLogType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;->SessionState:Ljava/lang/String;

    .line 26
    return-void
.end method
