.class public Lcom/dexcom/cgm/model/TransmitterInfo;
.super Ljava/lang/Object;
.source "TransmitterInfo.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_activatedOn:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "activated_on_system_time"
    .end annotation
.end field

.field private m_apiVersion:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "api_version"
    .end annotation
.end field

.field private m_bleRadioFirmwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "ble_radio_fw_version"
    .end annotation
.end field

.field private m_bleSoftDeviceVersion:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "ble_softdevice_version"
    .end annotation
.end field

.field private m_cgmProcessorFirmwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "cgm_processor_fw_version"
    .end annotation
.end field

.field private m_featureFlags:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "feature_flags"
    .end annotation
.end field

.field private m_hardwareVersion:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "hw_version"
    .end annotation
.end field

.field private m_isDetailsAvailable:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "details_available"
    .end annotation
.end field

.field private m_maxRuntimeDays:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "max_runtime_days"
    .end annotation
.end field

.field private m_maxStorageTimeDays:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "max_storage_days"
    .end annotation
.end field

.field private m_nordicAsicHwId:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "chip_hw_id"
    .end annotation
.end field

.field private m_recordId:Ljava/lang/Long;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_sessionTimeDays:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "session_time_days"
    .end annotation
.end field

.field private m_softwareNumber:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "software_number"
    .end annotation
.end field

.field private m_storageTimeDays:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "storage_time_days"
    .end annotation
.end field

.field private m_systemTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "system_time_stamp"
    .end annotation
.end field

.field private m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_id"
    .end annotation
.end field

.field private m_transmitterVersion:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_version"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;ZLcom/dexcom/cgm/k/j;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    .line 96
    iput-object p2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 97
    iput-object p3, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 98
    iput-boolean p4, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    .line 99
    iput-object p5, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    .line 100
    iput-object p6, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    .line 101
    iput-object p7, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    .line 102
    iput p8, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    .line 103
    iput p9, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    .line 104
    iput p10, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    .line 105
    iput p11, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    .line 106
    iput-object p12, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    .line 107
    iput-object p13, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    .line 108
    iput p14, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    .line 109
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    .line 110
    move/from16 v0, p16

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    .line 111
    move/from16 v0, p17

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    .line 112
    move/from16 v0, p18

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;ZLcom/dexcom/cgm/k/j;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/dexcom/cgm/model/TransmitterInfo$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p18}, Lcom/dexcom/cgm/model/TransmitterInfo;-><init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;ZLcom/dexcom/cgm/k/j;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    return v0
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    return v0
.end method

.method static synthetic access$1400(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    return v0
.end method

.method static synthetic access$1600(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    return v0
.end method

.method static synthetic access$1700(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/model/TransmitterInfo;)Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    return v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    return v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/model/TransmitterInfo;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    return v0
.end method

.method public static calculateAb(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;
    .locals 6

    .prologue
    const-wide/32 v4, 0x15180

    .line 295
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    .line 303
    :goto_0
    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getStorageTimeDays()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 301
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getMaxStorageTimeDays()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    .line 302
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getActivatedOn()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    .line 303
    sub-long v0, v2, v0

    invoke-virtual {v4, v0, v1}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    if-ne p0, p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 212
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 214
    iget-boolean v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    iget-boolean v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 215
    :cond_4
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 216
    :cond_5
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 217
    :cond_6
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 218
    :cond_7
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 219
    :cond_8
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 220
    :cond_9
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    .line 221
    :cond_a
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    .line 222
    :cond_b
    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    iget v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    .line 223
    :cond_c
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    if-nez v2, :cond_d

    .line 224
    :cond_f
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_10

    .line 225
    :cond_12
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-nez v2, :cond_13

    .line 226
    :cond_15
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_16

    .line 227
    :cond_18
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    .line 229
    goto/16 :goto_0

    .line 227
    :cond_1a
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 231
    :cond_1b
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 232
    :cond_1e
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    .line 234
    goto/16 :goto_0

    .line 232
    :cond_20
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 235
    :cond_21
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    .line 237
    goto/16 :goto_0

    .line 235
    :cond_23
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 238
    :cond_24
    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 239
    goto/16 :goto_0

    .line 238
    :cond_25
    iget-object v2, p1, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getActivatedOn()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getApiVersion()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    return v0
.end method

.method public getBleRadioFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBleSoftDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCgmProcessorFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureFlags()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    return v0
.end method

.method public getHardwareVersion()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    return v0
.end method

.method public getMaxRuntimeDays()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    return v0
.end method

.method public getMaxStorageTimeDays()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    return v0
.end method

.method public getNordicAsicHwId()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    return v0
.end method

.method public getRecordId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionTimeDays()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    return v0
.end method

.method public getSoftwareNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageTimeDays()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    return v0
.end method

.method public getSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public getTransmitterRemainingTime()Lcom/dexcom/cgm/k/k;
    .locals 8

    .prologue
    .line 308
    sget-object v0, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    .line 309
    iget-boolean v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    if-eqz v1, :cond_0

    .line 311
    iget v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v2

    .line 315
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    new-instance v0, Lcom/dexcom/cgm/k/k;

    .line 316
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    .line 317
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/k;-><init>(J)V

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 317
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    goto :goto_0
.end method

.method public getTransmitterVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 248
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 249
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 250
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    add-int/2addr v0, v2

    .line 251
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 252
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    add-int/2addr v0, v2

    .line 255
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    add-int/2addr v0, v2

    .line 256
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    add-int/2addr v0, v2

    .line 257
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    add-int/2addr v0, v2

    .line 258
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 259
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 260
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    add-int/2addr v0, v2

    .line 261
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 262
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    add-int/2addr v0, v1

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    add-int/2addr v0, v1

    .line 264
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    add-int/2addr v0, v1

    .line 265
    return v0

    :cond_1
    move v0, v1

    .line 247
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 248
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 249
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 250
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 251
    goto :goto_4

    :cond_6
    move v0, v1

    .line 252
    goto :goto_5

    :cond_7
    move v0, v1

    .line 253
    goto :goto_6

    :cond_8
    move v0, v1

    .line 258
    goto :goto_7

    :cond_9
    move v0, v1

    .line 259
    goto :goto_8
.end method

.method public isDetailsAvailable()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{recordId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_recordId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_systemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transmitterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDetailsAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_isDetailsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activatedOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transmitterVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_transmitterVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", softwareNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_softwareNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storageTimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_storageTimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_apiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRuntimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxRuntimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxStorageTimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_maxStorageTimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cgmProcessorFirmwareVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bleRadioFirmwareVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hardwareVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_hardwareVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bleSoftDeviceVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_bleSoftDeviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nordicAsicHwId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_nordicAsicHwId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionTimeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_sessionTimeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/TransmitterInfo;->m_featureFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
