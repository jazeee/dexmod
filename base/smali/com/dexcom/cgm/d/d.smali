.class public Lcom/dexcom/cgm/d/d;
.super Ljava/lang/Object;
.source "DataPostDataAccessLayerComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/d/c;


# static fields
.field public static final InvalidRate:B = 0x7ft

.field private static final m_lastAlertSettingsUploadTime:Ljava/lang/String; = "lastAlertSettingsUploadTime"

.field private static final m_lastDeviceSettingsUploadTime:Ljava/lang/String; = "lastDeviceSettingsUploadTime"

.field private static final m_lastPostTime:Ljava/lang/String; = "lastPostTime"

.field private static final m_wasLastPostSuccessful:Ljava/lang/String; = "wasLastPostSuccessful"


# instance fields
.field private final KVAC:Lcom/dexcom/cgm/d/e;

.field private final m_database:Lcom/dexcom/cgm/e/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/e/f;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/d/e;

    iget-object v1, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/d/e;-><init>(Lcom/dexcom/cgm/e/f;)V

    iput-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    .line 46
    return-void
.end method

.method public static create(Lcom/dexcom/cgm/e/f;)Lcom/dexcom/cgm/d/c;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/dexcom/cgm/d/d;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/d/d;-><init>(Lcom/dexcom/cgm/e/f;)V

    return-object v0
.end method

.method public static getRateAsByte(D)B
    .locals 2

    .prologue
    .line 1018
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static getRateAsDouble(B)D
    .locals 4

    .prologue
    .line 1013
    const/16 v0, 0x7f

    if-eq v0, p0, :cond_0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    goto :goto_0
.end method

.method private readTime(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    const-wide/16 v0, 0x0

    .line 176
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setTimeRecord(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method


# virtual methods
.method public final addDataPost(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/dexcom/cgm/e/f;->createDataPost(JLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public final deleteBluetoothLogsBeforeTime(J)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->deleteBluetoothEventRecords(Lcom/dexcom/cgm/k/j;)V

    .line 260
    return-void
.end method

.method public final deleteCrashLogsBeforeTime(J)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->deleteCrashLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V

    .line 274
    return-void
.end method

.method public final deleteDataPost(J)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/e/f;->deleteDataPost(J)V

    .line 103
    return-void
.end method

.method public final deleteDebugLogsBeforeTime(J)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->deleteDebugLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V

    .line 248
    return-void
.end method

.method public final deleteTechSupportLogsBeforeTime(J)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->deleteTechSupportLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V

    .line 235
    return-void
.end method

.method public final getInstallationID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getInstallationID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getLastAlertSettingsUploadTime()J
    .locals 2

    .prologue
    .line 130
    const-string v0, "lastAlertSettingsUploadTime"

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/d;->readTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastDeviceSettingsUploadTime()J
    .locals 2

    .prologue
    .line 116
    const-string v0, "lastDeviceSettingsUploadTime"

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/d;->readTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastPostTime()J
    .locals 2

    .prologue
    .line 144
    const-string v0, "lastPostTime"

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/d;->readTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPatientID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPublisherID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readLatestTransmitterInfoRecord()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    goto :goto_0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasUsersPasswordChanged()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasUsersPasswordChanged()Z

    move-result v0

    return v0
.end method

.method public final readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method

.method public final readAlertSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readUserAlertRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readBluetoothLogs(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/BluetoothEventRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-static {}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->values()[Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/e/f;->readBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readCrashLogs(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CrashLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readDataPosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->readDataPosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readDebugLogs(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DebugLogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->readDebugLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readMeters(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    sget-object v3, Lcom/dexcom/cgm/e/p;->RecordedSystemTime:Lcom/dexcom/cgm/e/p;

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/e/f;->readMeterRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/p;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readRealEGVs(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    sget-object v3, Lcom/dexcom/cgm/e/l;->RecordedSystemTime:Lcom/dexcom/cgm/e/l;

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/e/f;->readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->filterDisplayOnlyExcluded(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final readSensorSessions(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/SensorSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    sget-object v3, Lcom/dexcom/cgm/e/r;->RecordedSystemTime:Lcom/dexcom/cgm/e/r;

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/e/f;->readSensorSessionRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readTechSupportLogs(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/TechSupportLogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->readTechSupportLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final readUserEvents(JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    sget-object v3, Lcom/dexcom/cgm/e/w;->RecordedSystemTime:Lcom/dexcom/cgm/e/w;

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/e/f;->readUserEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/w;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final setHasUsersPasswordChanged(Z)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->KVAC:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setHasUsersPasswordChanged(Z)V

    .line 280
    return-void
.end method

.method public final setLastAlertSettingsUploadTime(J)V
    .locals 1

    .prologue
    .line 124
    const-string v0, "lastAlertSettingsUploadTime"

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/d/d;->setTimeRecord(Ljava/lang/String;J)V

    .line 125
    return-void
.end method

.method public final setLastDeviceSettingsUploadTime(J)V
    .locals 1

    .prologue
    .line 110
    const-string v0, "lastDeviceSettingsUploadTime"

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/d/d;->setTimeRecord(Ljava/lang/String;J)V

    .line 111
    return-void
.end method

.method public final setLastPostTime(J)V
    .locals 1

    .prologue
    .line 138
    const-string v0, "lastPostTime"

    invoke-direct {p0, v0, p1, p2}, Lcom/dexcom/cgm/d/d;->setTimeRecord(Ljava/lang/String;J)V

    .line 139
    return-void
.end method

.method public final setWasLastPostSuccessful(Z)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    const-string v1, "wasLastPostSuccessful"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public final teardown()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/e/f;->teardown()V

    .line 51
    return-void
.end method

.method public final wasLastPostSuccessful()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/d/d;->m_database:Lcom/dexcom/cgm/e/f;

    const-string v1, "wasLastPostSuccessful"

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
