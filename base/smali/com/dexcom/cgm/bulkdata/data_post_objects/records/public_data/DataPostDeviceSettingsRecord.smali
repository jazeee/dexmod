.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostDeviceSettingsRecord.java"


# instance fields
.field private DisplayTimeOffset:I

.field private Is24HourMode:Z

.field private IsBlindedMode:Z

.field private IsMmolDisplayMode:Z

.field private Language:Ljava/lang/String;

.field private SoftwareNumber:Ljava/lang/String;

.field private SoftwareVersion:Ljava/lang/String;

.field private SystemTimeOffset:I

.field private TransmitterId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->IsMmolDisplayMode:Z

    .line 30
    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SystemTimeOffset:I

    .line 32
    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->DisplayTimeOffset:I

    .line 34
    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->IsBlindedMode:Z

    .line 43
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->setRecordedTime(J)V

    .line 45
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->getCultureCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->Language:Ljava/lang/String;

    .line 46
    iput-boolean p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->Is24HourMode:Z

    .line 47
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->TransmitterId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SoftwareVersion:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SoftwareNumber:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private getCultureCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method


# virtual methods
.method public hasRecordChanged(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    iget-object v0, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->Language:Ljava/lang/String;

    iget-object v3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->Language:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    iget-boolean v0, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->Is24HourMode:Z

    iget-boolean v4, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->Is24HourMode:Z

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 78
    :goto_1
    iget-object v4, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->TransmitterId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->TransmitterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 79
    iget-object v5, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SoftwareVersion:Ljava/lang/String;

    iget-object v6, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SoftwareVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 80
    iget-object v6, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SoftwareNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SoftwareNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 81
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 89
    iget-boolean v0, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->IsMmolDisplayMode:Z

    iget-boolean v3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->IsMmolDisplayMode:Z

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 90
    :goto_2
    iget v3, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SystemTimeOffset:I

    iget v4, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->SystemTimeOffset:I

    if-ne v3, v4, :cond_4

    move v3, v1

    .line 91
    :goto_3
    iget v4, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->DisplayTimeOffset:I

    iget v5, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->DisplayTimeOffset:I

    if-ne v4, v5, :cond_5

    move v4, v1

    .line 92
    :goto_4
    iget-boolean v5, p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->IsBlindedMode:Z

    iget-boolean v6, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostDeviceSettingsRecord;->IsBlindedMode:Z

    if-ne v5, v6, :cond_6

    move v5, v1

    .line 94
    :goto_5
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 77
    goto :goto_1

    :cond_3
    move v0, v2

    .line 89
    goto :goto_2

    :cond_4
    move v3, v2

    .line 90
    goto :goto_3

    :cond_5
    move v4, v2

    .line 91
    goto :goto_4

    :cond_6
    move v5, v2

    .line 92
    goto :goto_5
.end method
