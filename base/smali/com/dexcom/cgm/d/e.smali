.class public Lcom/dexcom/cgm/d/e;
.super Ljava/lang/Object;
.source "KeyValueAccessor.java"


# instance fields
.field private final m_database:Lcom/dexcom/cgm/e/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/e/f;)V
    .locals 0

    .prologue
    .line 15026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15027
    iput-object p1, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    .line 15028
    return-void
.end method

.method public static readFully(Ljava/io/File;)[B
    .locals 7

    .prologue
    .line 16039
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 16041
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16042
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 16044
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 16046
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 16039
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16049
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    throw v0

    .line 16048
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 16049
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private returnALong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 15675
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15676
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15677
    :cond_0
    const-wide/16 v0, 0x0

    .line 15679
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private returnAnInt(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 15666
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15667
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15668
    :cond_0
    const/4 v0, 0x0

    .line 15670
    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static writeFully(Ljava/io/File;[B)V
    .locals 3

    .prologue
    .line 16031
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 16033
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16034
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void

    .line 16031
    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16034
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0
.end method


# virtual methods
.method public getAppCompatUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13818
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatUrl:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13820
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13821
    :cond_0
    const-string v0, ""

    .line 13823
    :cond_1
    return-object v0
.end method

.method public getAppCompatabilityAppUpgradeURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11473
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatAppUpgradeURL:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppCompatabilityCount()I
    .locals 1

    .prologue
    .line 7420
    sget-object v0, Lcom/dexcom/cgm/d/f;->AppCompatabilityCount:Lcom/dexcom/cgm/d/f;

    .line 7421
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7420
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAppCompatabilityFrequency()J
    .locals 2

    .prologue
    .line 7434
    sget-object v0, Lcom/dexcom/cgm/d/f;->AppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    .line 7435
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7434
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppCompatabilityMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9461
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatMessage:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppCompatabilityMoreInfoURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10467
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatMoreInfoURL:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppCompatabilityValidity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8455
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatValidity:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBulkDataApplicationID()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 13878
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->BulkDataApplicationID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13880
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13881
    :cond_0
    const/4 v0, 0x0

    .line 13883
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public getBulkDataUploadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13850
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->BulkDataUploadUrl:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13852
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13853
    :cond_0
    const-string v0, ""

    .line 13855
    :cond_1
    return-object v0
.end method

.method public getFlurryAlertEGV(I)I
    .locals 2

    .prologue
    .line 13604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/d/f;->flurryAlertEGV:Lcom/dexcom/cgm/d/f;

    .line 13605
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13604
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFlurryAlertStartTime()J
    .locals 2

    .prologue
    .line 13590
    sget-object v0, Lcom/dexcom/cgm/d/f;->flurryAlertStartTime:Lcom/dexcom/cgm/d/f;

    .line 13591
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13590
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlurryAlertType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13584
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->flurryAlertType:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlurryOutOfRange()J
    .locals 2

    .prologue
    .line 13632
    sget-object v0, Lcom/dexcom/cgm/d/f;->flurryTime_OOR:Lcom/dexcom/cgm/d/f;

    .line 13633
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13632
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlurryShareBackfill()I
    .locals 1

    .prologue
    .line 13618
    sget-object v0, Lcom/dexcom/cgm/d/f;->flurryShareBackfill:Lcom/dexcom/cgm/d/f;

    .line 13619
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13618
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGraphHeight()I
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->GraphHeight:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1291
    :cond_0
    const/16 v0, 0x190

    .line 1295
    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getInstallationID()Ljava/util/UUID;
    .locals 4

    .prologue
    .line 13895
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->InstallationID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13896
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13898
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 13904
    :goto_0
    return-object v0

    .line 13902
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 13903
    iget-object v1, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v2, Lcom/dexcom/cgm/d/f;->InstallationID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v2}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastEgvTimeStamp()J
    .locals 2

    .prologue
    .line 11807
    sget-object v0, Lcom/dexcom/cgm/d/f;->LastEgvReceivedTimeStamp:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRegisteredTransmitterId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13920
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastRegisteredTransmitterId:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastReportedRemainingTimeForTransmitter()Lcom/dexcom/cgm/k/k;
    .locals 4

    .prologue
    .line 12515
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastReportedRemainingTimeForTransmitter:Lcom/dexcom/cgm/d/f;

    .line 12517
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12515
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12518
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12520
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    .line 12523
    :goto_0
    return-object v0

    .line 12522
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 12523
    new-instance v0, Lcom/dexcom/cgm/k/k;

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/k;-><init>(J)V

    goto :goto_0
.end method

.method public getLastSHealthEGVTimeStamp()J
    .locals 2

    .prologue
    .line 13692
    sget-object v0, Lcom/dexcom/cgm/d/f;->LastSHealthEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastShareEGVTimeStamp()J
    .locals 2

    .prologue
    .line 13705
    sget-object v0, Lcom/dexcom/cgm/d/f;->LastShareEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNamedValueNeedsUpload()Z
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->NamedValueNeedsUpload:Lcom/dexcom/cgm/d/f;

    .line 1275
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNextAppCompatabilityCheck()J
    .locals 2

    .prologue
    .line 7406
    sget-object v0, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityCheck:Lcom/dexcom/cgm/d/f;

    .line 7407
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7406
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextAppCompatabilityFrequency()J
    .locals 2

    .prologue
    .line 7448
    sget-object v0, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    .line 7449
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7448
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnALong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfFollowers()I
    .locals 1

    .prologue
    .line 13639
    sget-object v0, Lcom/dexcom/cgm/d/f;->numberOfFollowers:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->Password:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentNotification()Z
    .locals 2

    .prologue
    .line 13718
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShowPersistentNotifications:Lcom/dexcom/cgm/d/f;

    .line 13719
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13718
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13721
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13722
    :cond_0
    const/4 v0, 0x1

    .line 13725
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShowPersistentNotifications:Lcom/dexcom/cgm/d/f;

    .line 13726
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13725
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getPreviousAppCompatCompare()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13740
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->previousCompatValues:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13742
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13743
    :cond_0
    const-string v0, ""

    .line 13745
    :cond_1
    return-object v0
.end method

.method public getPublisherID()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->PublisherID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    :cond_0
    const/4 v0, 0x0

    .line 1248
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareApplicationID()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 13861
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareApplicationID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13863
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13864
    :cond_0
    const/4 v0, 0x0

    .line 13866
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public getShareEnabled()Z
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareEnabled:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getShareRealtimeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13834
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareRealtimeUrl:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13836
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13837
    :cond_0
    const-string v0, ""

    .line 13839
    :cond_1
    return-object v0
.end method

.method public getShuttingDownBoolean()Z
    .locals 2

    .prologue
    .line 11786
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->DeviceShuttingDown:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11788
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11789
    :cond_0
    const/4 v0, 0x0

    .line 11792
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->DeviceShuttingDown:Lcom/dexcom/cgm/d/f;

    .line 11793
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11792
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getStartSensorWarmupDialogEnabled()Z
    .locals 2

    .prologue
    .line 13659
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->StartSensorWarmupDialogEnabled:Lcom/dexcom/cgm/d/f;

    .line 13661
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13659
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUserAvatar()[B
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserAvatar:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1311
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    :cond_0
    const/4 v0, 0x0

    .line 1314
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getUserDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserDisplayName:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserEmail:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->Username:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhatsNewVersionCompleted()I
    .locals 2

    .prologue
    .line 5327
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->WhatsNewVersionCompleted:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5328
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5330
    :cond_0
    const/4 v0, -0x1

    .line 5334
    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public hasCompletedInitialSetupWizard()Z
    .locals 2

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasCompletedInitialSetupWizard:Lcom/dexcom/cgm/d/f;

    .line 3363
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3361
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasCompletedShareTutorial()Z
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasCompletedShareTutorial:Lcom/dexcom/cgm/d/f;

    .line 1393
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasSelectedNeverAskAgainLocation()Z
    .locals 2

    .prologue
    .line 7369
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasSelectedNeverAskAgainLocation:Lcom/dexcom/cgm/d/f;

    .line 7371
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7369
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasUsersPasswordChanged()Z
    .locals 2

    .prologue
    .line 13772
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasUsersPasswordChanged:Lcom/dexcom/cgm/d/f;

    .line 13773
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13772
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isClinicalTrialMode()Z
    .locals 2

    .prologue
    .line 13758
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->IsClinicalTrialMode:Lcom/dexcom/cgm/d/f;

    .line 13759
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13758
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/e/f;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public manualSNTimeSpent()I
    .locals 1

    .prologue
    .line 13556
    sget-object v0, Lcom/dexcom/cgm/d/f;->manualSNTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 13557
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13556
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public scheduleSetupWizardTimeSpent()I
    .locals 1

    .prologue
    .line 13529
    sget-object v0, Lcom/dexcom/cgm/d/f;->scheduleSetupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAppCompatUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13812
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatUrl:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13814
    return-void
.end method

.method public setAppCompatabilityAppUpgradeURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11500
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatAppUpgradeURL:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 11502
    return-void
.end method

.method public setAppCompatabilityCount(I)V
    .locals 3

    .prologue
    .line 7413
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatabilityCount:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7414
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 7413
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7415
    return-void
.end method

.method public setAppCompatabilityFrequency(I)V
    .locals 3

    .prologue
    .line 7427
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7428
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 7427
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7429
    return-void
.end method

.method public setAppCompatabilityMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 9486
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatMessage:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 9488
    return-void
.end method

.method public setAppCompatabilityMoreInfoURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10493
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatMoreInfoURL:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 10495
    return-void
.end method

.method public setAppCompatabilityValidity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 8479
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->AppCompatValidity:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8481
    return-void
.end method

.method public setBulkDataApplicationID(Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 13889
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->BulkDataApplicationID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13890
    return-void
.end method

.method public setBulkDataUploadUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13844
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->BulkDataUploadUrl:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13846
    return-void
.end method

.method public setClinicalTrialMode(Z)V
    .locals 3

    .prologue
    .line 13751
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->IsClinicalTrialMode:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13752
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 13751
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13753
    return-void
.end method

.method public setCompletedInitialSetupWizard(Z)V
    .locals 3

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasCompletedInitialSetupWizard:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4354
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 4353
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    return-void
.end method

.method public setCompletedShareTutorial(Z)V
    .locals 3

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasCompletedShareTutorial:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2386
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 2385
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method public setFlurryAlertEGV(II)V
    .locals 3

    .prologue
    .line 13597
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/dexcom/cgm/d/f;->flurryAlertEGV:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v2}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13598
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 13597
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13599
    return-void
.end method

.method public setFlurryAlertStartTime(J)V
    .locals 3

    .prologue
    .line 13570
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->flurryAlertStartTime:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13571
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 13570
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13572
    return-void
.end method

.method public setFlurryAlertType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13577
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->flurryAlertType:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13579
    return-void
.end method

.method public setFlurryOutOfRange(J)V
    .locals 3

    .prologue
    .line 13625
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->flurryTime_OOR:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13626
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 13625
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13627
    return-void
.end method

.method public setFlurryShareBackfill(I)V
    .locals 3

    .prologue
    .line 13611
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->flurryShareBackfill:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13612
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 13611
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13613
    return-void
.end method

.method public setGraphHeight(I)V
    .locals 3

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->GraphHeight:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1281
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method public setHasSelectedNeverAskAgainLocation(Z)V
    .locals 3

    .prologue
    .line 7377
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasSelectedNeverAskAgainLocation:Lcom/dexcom/cgm/d/f;

    .line 7378
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7379
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 7377
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7380
    return-void
.end method

.method public setHasUsersPasswordChanged(Z)V
    .locals 3

    .prologue
    .line 13765
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->HasUsersPasswordChanged:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13766
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 13765
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13767
    return-void
.end method

.method public setLastEgvTimeStamp(J)V
    .locals 3

    .prologue
    .line 11800
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastEgvReceivedTimeStamp:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11801
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 11800
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 11802
    return-void
.end method

.method public setLastRegisteredTransmitterId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 14911
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastRegisteredTransmitterId:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 14913
    return-void
.end method

.method public setLastReportedRemainingTimeForTransmitter(Lcom/dexcom/cgm/k/k;)V
    .locals 4

    .prologue
    .line 12507
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastReportedRemainingTimeForTransmitter:Lcom/dexcom/cgm/d/f;

    .line 12508
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12509
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 12507
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 12510
    return-void
.end method

.method public setLastSHealthEGVTimeStamp(J)V
    .locals 3

    .prologue
    .line 13685
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastSHealthEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13686
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 13685
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13687
    return-void
.end method

.method public setLastShareEGVTimeStamp(J)V
    .locals 3

    .prologue
    .line 13698
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->LastShareEGVTimeStamp:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13699
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 13698
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13700
    return-void
.end method

.method public setNamedValueNeedsUpload(Z)V
    .locals 3

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->NamedValueNeedsUpload:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1267
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return-void
.end method

.method public setNewUser(Z)V
    .locals 3

    .prologue
    .line 14926
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->isNewUser:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 14927
    return-void
.end method

.method public setNextAppCompatabilityCheck(J)V
    .locals 3

    .prologue
    .line 7399
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityCheck:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7400
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 7399
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7401
    return-void
.end method

.method public setNextAppCompatabilityFrequency(J)V
    .locals 3

    .prologue
    .line 8441
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->NextAppCompatabilityFrequency:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8442
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 8441
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8443
    return-void
.end method

.method public setNumberOfFollowers(I)V
    .locals 3

    .prologue
    .line 13645
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->numberOfFollowers:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13646
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 13645
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13647
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->Password:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method public setPersistentNotification(Z)V
    .locals 3

    .prologue
    .line 13711
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShowPersistentNotifications:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13712
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 13711
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13713
    return-void
.end method

.method public setPreviousAppCompatCompare(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13733
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->previousCompatValues:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13735
    return-void
.end method

.method public setPublisherID(Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->PublisherID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1237
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1236
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    return-void
.end method

.method public setScheduleSetupWizardTimeSpent(I)V
    .locals 3

    .prologue
    .line 13535
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->scheduleSetupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13536
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 13535
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13537
    return-void
.end method

.method public setSetupManualSNTimeSpent(I)V
    .locals 3

    .prologue
    .line 13563
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->manualSNTimeSpent:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13564
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 13563
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13565
    return-void
.end method

.method public setSetupWizardTimeSpent(I)V
    .locals 3

    .prologue
    .line 12549
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->setupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12550
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 12549
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 12551
    return-void
.end method

.method public setShareApplicationID(Ljava/util/UUID;)V
    .locals 3

    .prologue
    .line 13872
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareApplicationID:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13873
    return-void
.end method

.method public setShareEnabled(Z)V
    .locals 3

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareEnabled:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1255
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1254
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public setShareRealtimeUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 13828
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->ShareRealtimeUrl:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13830
    return-void
.end method

.method public setShuttingDownBoolean(Z)V
    .locals 3

    .prologue
    .line 11779
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->DeviceShuttingDown:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11780
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 11779
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 11781
    return-void
.end method

.method public setStartSensorWarmupDialogEnabled(Z)V
    .locals 3

    .prologue
    .line 13652
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->StartSensorWarmupDialogEnabled:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13653
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 13652
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13654
    return-void
.end method

.method public setUserAvatar([B)V
    .locals 3

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserAvatar:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public setUserDisplayName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserDisplayName:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->UserEmail:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->Username:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public setWhatsNewTimeSpent(I)V
    .locals 3

    .prologue
    .line 7340
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->WhatsNewTimeSpent:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7341
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 7340
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7342
    return-void
.end method

.method public setWhatsNewVersionCompleted(I)V
    .locals 3

    .prologue
    .line 6320
    iget-object v0, p0, Lcom/dexcom/cgm/d/e;->m_database:Lcom/dexcom/cgm/e/f;

    sget-object v1, Lcom/dexcom/cgm/d/f;->WhatsNewVersionCompleted:Lcom/dexcom/cgm/d/f;

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 6320
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/e/f;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6322
    return-void
.end method

.method public setupWizardTimeSpent()I
    .locals 1

    .prologue
    .line 12542
    sget-object v0, Lcom/dexcom/cgm/d/f;->setupWizardTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 12543
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12542
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whatsNewTimeSpent()I
    .locals 1

    .prologue
    .line 6346
    sget-object v0, Lcom/dexcom/cgm/d/f;->WhatsNewTimeSpent:Lcom/dexcom/cgm/d/f;

    .line 6347
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6346
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/d/e;->returnAnInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
