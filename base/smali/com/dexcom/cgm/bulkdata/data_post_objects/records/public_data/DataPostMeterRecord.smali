.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;
.source "DataPostMeterRecord.java"


# instance fields
.field private EntryType:Ljava/lang/String;

.field private MeterDisplayTime:Ljava/lang/String;

.field private MeterSystemTime:Ljava/lang/String;

.field private Value:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/Meter;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->setRecordedTime(J)V

    .line 28
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->setMeterTime(J)V

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->TransmitterId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->setTransmitterTime(J)V

    .line 33
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->Value:I

    .line 34
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterEntryType()Lcom/dexcom/cgm/model/enums/MeterEntryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/MeterEntryType;->getStringifiedMeterEntryType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->EntryType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private setMeterTime(J)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->MeterSystemTime:Ljava/lang/String;

    .line 40
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostMeterRecord;->MeterDisplayTime:Ljava/lang/String;

    .line 41
    return-void
.end method
