.class public Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
.super Ljava/lang/Object;
.source "TransmitterInfo.java"


# instance fields
.field private m_activatedOn:Lcom/dexcom/cgm/k/j;

.field private m_apiVersion:I

.field private m_bleRadioFirmwareVersion:Ljava/lang/String;

.field private m_bleSoftDeviceVersion:Ljava/lang/String;

.field private m_cgmProcessorFirmwareVersion:Ljava/lang/String;

.field private m_featureFlags:I

.field private m_hardwareVersion:I

.field private m_isDetailsAvailable:Z

.field private m_maxRuntimeDays:I

.field private m_maxStorageTimeDays:I

.field private m_nordicAsicHwId:I

.field private m_recordId:Ljava/lang/Long;

.field private m_sessionTimeDays:I

.field private m_softwareNumber:Ljava/lang/String;

.field private m_storageTimeDays:I

.field private m_systemTime:Lcom/dexcom/cgm/k/j;

.field private m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

.field private m_transmitterVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 329
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    .line 346
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 329
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    .line 350
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$000(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_recordId:Ljava/lang/Long;

    .line 351
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$100(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 352
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$200(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 353
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$300(Lcom/dexcom/cgm/model/TransmitterInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_isDetailsAvailable:Z

    .line 354
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$400(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    .line 355
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$500(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_transmitterVersion:Ljava/lang/String;

    .line 356
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$600(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_softwareNumber:Ljava/lang/String;

    .line 357
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$700(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_storageTimeDays:I

    .line 358
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$800(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_apiVersion:I

    .line 359
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$900(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_maxRuntimeDays:I

    .line 360
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1000(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_maxStorageTimeDays:I

    .line 361
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1100(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    .line 362
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1200(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    .line 363
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1300(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_hardwareVersion:I

    .line 364
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1400(Lcom/dexcom/cgm/model/TransmitterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_bleSoftDeviceVersion:Ljava/lang/String;

    .line 365
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1500(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_nordicAsicHwId:I

    .line 366
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1600(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_sessionTimeDays:I

    .line 367
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->access$1700(Lcom/dexcom/cgm/model/TransmitterInfo;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_featureFlags:I

    .line 368
    return-void
.end method


# virtual methods
.method public build()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 21

    .prologue
    .line 480
    new-instance v1, Lcom/dexcom/cgm/model/TransmitterInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_recordId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_systemTime:Lcom/dexcom/cgm/k/j;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_isDetailsAvailable:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_transmitterVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_softwareNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_storageTimeDays:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_apiVersion:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_maxRuntimeDays:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_maxStorageTimeDays:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_hardwareVersion:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_bleSoftDeviceVersion:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_nordicAsicHwId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_sessionTimeDays:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_featureFlags:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/dexcom/cgm/model/TransmitterInfo;-><init>(Ljava/lang/Long;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;ZLcom/dexcom/cgm/k/j;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/dexcom/cgm/model/TransmitterInfo$1;)V

    return-object v1
.end method

.method public setActivatedOn(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_activatedOn:Lcom/dexcom/cgm/k/j;

    .line 403
    return-object p0
.end method

.method public setApiVersion(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 420
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_apiVersion:I

    .line 421
    return-object p0
.end method

.method public setBleRadioFirmwareVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_bleRadioFirmwareVersion:Ljava/lang/String;

    .line 445
    return-object p0
.end method

.method public setBleSoftDeviceVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_bleSoftDeviceVersion:Ljava/lang/String;

    .line 457
    return-object p0
.end method

.method public setCgmProcessorFirmwareVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_cgmProcessorFirmwareVersion:Ljava/lang/String;

    .line 439
    return-object p0
.end method

.method public setDetailsAvailable(Z)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_isDetailsAvailable:Z

    .line 391
    return-object p0
.end method

.method public setFeatureFlags(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 474
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_featureFlags:I

    .line 475
    return-object p0
.end method

.method public setHardwareVersion(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 450
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_hardwareVersion:I

    .line 451
    return-object p0
.end method

.method public setMaxRuntimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 426
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_maxRuntimeDays:I

    .line 427
    return-object p0
.end method

.method public setMaxStorageTimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 432
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_maxStorageTimeDays:I

    .line 433
    return-object p0
.end method

.method public setNordicAsicHwId(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 462
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_nordicAsicHwId:I

    .line 463
    return-object p0
.end method

.method public setRecordId(Ljava/lang/Long;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_recordId:Ljava/lang/Long;

    .line 373
    return-object p0
.end method

.method public setSessionTimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 468
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_sessionTimeDays:I

    .line 469
    return-object p0
.end method

.method public setSoftwareNumber(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_softwareNumber:Ljava/lang/String;

    .line 409
    return-object p0
.end method

.method public setStorageTimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_storageTimeDays:I

    .line 415
    return-object p0
.end method

.method public setSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 379
    return-object p0
.end method

.method public setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 385
    return-object p0
.end method

.method public setTransmitterVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->m_transmitterVersion:Ljava/lang/String;

    .line 397
    return-object p0
.end method
