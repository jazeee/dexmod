.class public Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;
.super Ljava/lang/Object;
.source "BulkDataRecordReader.java"


# static fields
.field private static final ALERT_SCHEDULE_RECORD_VERSION:Ljava/lang/String; = "1.1"

.field private static final NUMBER_OF_USER_ALERTS:I = 0x6

.field private static final SCHEDULE_COUNT:I = 0x2

.field private static final SETTINGS_RE_UPLOAD_DELAY:J


# instance fields
.field private m_dal:Lcom/dexcom/cgm/d/c;

.field private m_lastKnownDeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;

.field private m_softwareNumber:Ljava/lang/String;

.field private m_softwareVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->SETTINGS_RE_UPLOAD_DELAY:J

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/d/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    .line 70
    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_softwareVersion:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_softwareNumber:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private alertSettingsNeedUpdating(Lcom/dexcom/cgm/model/AlertSettings;JJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/AlertSettings;->getAllUserAlertProperties()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 231
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    .line 232
    cmp-long v0, v4, p2

    if-ltz v0, :cond_0

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    move v0, v1

    .line 244
    :goto_0
    return v0

    .line 238
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 239
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getLastAlertSettingsUploadTime()J

    move-result-wide v4

    .line 240
    sub-long/2addr v2, v4

    sget-wide v4, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->SETTINGS_RE_UPLOAD_DELAY:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    move v0, v1

    .line 242
    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readAppRecords(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
            "JJ)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader$1;->$SwitchMap$com$dexcom$cgm$bulkdata$data_post_objects$records$DataPostRecordType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer error: invalid DataPostRecordType passed in to BulkDataRecordReader.transformRecord(). The type was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readRealEGVs(JJ)Ljava/util/List;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readMeters(JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readSensorSessions(JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->readAlertSettings()Ljava/util/List;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/model/AlertSettings;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->alertSettingsNeedUpdating(Lcom/dexcom/cgm/model/AlertSettings;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 99
    invoke-interface {v0, v2, v3}, Lcom/dexcom/cgm/d/c;->setLastAlertSettingsUploadTime(J)V

    .line 101
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getAllUserAlertProperties()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readUserEvents(JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 112
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v1, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readTechSupportLogs(JJ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v1, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readBluetoothLogs(JJ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 118
    :pswitch_6
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readDebugLogs(JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_7
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/dexcom/cgm/d/c;->readCrashLogs(JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readDeviceInfoRecord()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 165
    new-instance v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;

    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    .line 166
    invoke-interface {v2}, Lcom/dexcom/cgm/d/c;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_softwareVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_softwareNumber:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;-><init>(ZLcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 171
    iget-object v4, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v4}, Lcom/dexcom/cgm/d/c;->getLastDeviceSettingsUploadTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 172
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 174
    :goto_0
    iget-object v4, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_lastKnownDeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;

    invoke-virtual {v1, v4}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->hasRecordChanged(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :goto_1
    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, v2, v3}, Lcom/dexcom/cgm/d/c;->setLastDeviceSettingsUploadTime(J)V

    .line 184
    iput-object v1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->m_lastKnownDeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;

    .line 186
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method private transformRecord(Ljava/lang/Object;Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;)Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
    .locals 3

    .prologue
    .line 191
    sget-object v0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader$1;->$SwitchMap$com$dexcom$cgm$bulkdata$data_post_objects$records$DataPostRecordType:[I

    invoke-virtual {p2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer error: invalid DataPostRecordType passed in to BulkDataRecordReader.transformRecord(). The type was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;

    check-cast p1, Lcom/dexcom/cgm/model/Glucose;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;-><init>(Lcom/dexcom/cgm/model/Glucose;)V

    .line 211
    :goto_0
    return-object v0

    .line 196
    :pswitch_1
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;

    check-cast p1, Lcom/dexcom/cgm/model/Meter;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;-><init>(Lcom/dexcom/cgm/model/Meter;)V

    goto :goto_0

    .line 198
    :pswitch_2
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;

    check-cast p1, Lcom/dexcom/cgm/model/SensorSession;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostSensorSessionRecord;-><init>(Lcom/dexcom/cgm/model/SensorSession;)V

    goto :goto_0

    .line 200
    :pswitch_3
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;

    check-cast p1, Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    goto :goto_0

    .line 202
    :pswitch_4
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;

    check-cast p1, Lcom/dexcom/cgm/model/UserEvent;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;-><init>(Lcom/dexcom/cgm/model/UserEvent;)V

    goto :goto_0

    .line 204
    :pswitch_5
    instance-of v0, p1, Lcom/dexcom/cgm/model/TechSupportLogRecord;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;

    check-cast p1, Lcom/dexcom/cgm/model/TechSupportLogRecord;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;-><init>(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V

    goto :goto_0

    .line 206
    :cond_0
    instance-of v0, p1, Lcom/dexcom/cgm/model/BluetoothEventRecord;

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;

    check-cast p1, Lcom/dexcom/cgm/model/BluetoothEventRecord;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;-><init>(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V

    goto :goto_0

    .line 209
    :cond_1
    :pswitch_6
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;

    check-cast p1, Lcom/dexcom/cgm/model/DebugLogRecord;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;-><init>(Lcom/dexcom/cgm/model/DebugLogRecord;)V

    goto :goto_0

    .line 211
    :pswitch_7
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrashRecord;

    check-cast p1, Lcom/dexcom/cgm/model/CrashLog;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrashRecord;-><init>(Lcom/dexcom/cgm/model/CrashLog;)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public readServerRecords(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;JJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->DeviceSettingsRecord:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    if-ne p1, v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->readDeviceInfoRecord()Ljava/util/List;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0

    .line 145
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->readAppRecords(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;JJ)Ljava/util/List;

    move-result-object v1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 151
    invoke-direct {p0, v2, p1}, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->transformRecord(Ljava/lang/Object;Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;)Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
