.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostAlertSettingRecord.java"


# instance fields
.field private Delay:I

.field private Enabled:Z

.field private Name:Ljava/lang/String;

.field private Snooze:I

.field private Sound:Ljava/lang/String;

.field private Value:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->Delay:I

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->setRecordedTime(J)V

    .line 33
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->getNameForAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->Name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->Value:I

    .line 35
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->Snooze:I

    .line 36
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->Sound:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertSettingRecord;->Enabled:Z

    .line 38
    return-void
.end method

.method public static getNameForAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_0

    .line 43
    const-string v0, "FixedLow"

    .line 53
    :goto_0
    return-object v0

    .line 44
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_1

    .line 45
    const-string v0, "Low"

    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_2

    .line 47
    const-string v0, "High"

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_3

    .line 49
    const-string v0, "RiseRate"

    goto :goto_0

    .line 50
    :cond_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_4

    .line 51
    const-string v0, "FallRate"

    goto :goto_0

    .line 52
    :cond_4
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_5

    .line 53
    const-string v0, "OutOfRange"

    goto :goto_0

    .line 56
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Developer error; an invalid alertKind was passed in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
