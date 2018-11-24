.class public Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;
.super Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;
.source "TransmitterInfoJSON.java"


# instance fields
.field private activateBy:Ljava/lang/String;

.field private activatedOn:Ljava/lang/String;

.field private apiVersion:I

.field private bleRadioFirmwareVersion:Ljava/lang/String;

.field private bleSoftDeviceVersion:Ljava/lang/String;

.field private cgmProcessorFirmwareVersion:Ljava/lang/String;

.field private hardwareVersion:Ljava/lang/String;

.field private maxRuntimeDays:I

.field private maxStorageTimeDays:I

.field private nordicAsicHwId:Ljava/lang/String;

.field private storageTimeDays:I

.field private swNumber:Ljava/lang/String;

.field private txId:Ljava/lang/String;

.field private txVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/JSONHelperBase;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->txId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getActivatedOn()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 32
    invoke-static {v0, v1}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->activatedOn:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->calculateAb(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 34
    invoke-static {v0, v1}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->activateBy:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->txVersion:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getSoftwareNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->swNumber:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getStorageTimeDays()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->storageTimeDays:I

    .line 39
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getApiVersion()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->apiVersion:I

    .line 40
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getMaxRuntimeDays()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->maxRuntimeDays:I

    .line 41
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getMaxStorageTimeDays()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->maxStorageTimeDays:I

    .line 42
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getCgmProcessorFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->cgmProcessorFirmwareVersion:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getBleRadioFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->bleRadioFirmwareVersion:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getHardwareVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->hardwareVersion:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getBleSoftDeviceVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->bleSoftDeviceVersion:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getNordicAsicHwId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/JSONObjects/TransmitterInfoJSON;->nordicAsicHwId:Ljava/lang/String;

    .line 47
    return-void
.end method
