.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "AlertSettingRecord.java"


# instance fields
.field private final Delay:I

.field private Enabled:Z

.field private Name:Ljava/lang/String;

.field private Snooze:I

.field private Sound:Ljava/lang/String;

.field private Value:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->Delay:I

    .line 27
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->setRecordedTime(J)V

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->getNameForAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->Name:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->Value:I

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->Snooze:I

    .line 32
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->Sound:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;->Enabled:Z

    .line 34
    return-void
.end method

.method public static getNameForAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Developer error; an invalid alertKind was passed in."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :pswitch_0
    const-string v0, "FixedLow"

    .line 51
    :goto_0
    return-object v0

    .line 43
    :pswitch_1
    const-string v0, "Low"

    goto :goto_0

    .line 45
    :pswitch_2
    const-string v0, "High"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "Rise"

    goto :goto_0

    .line 49
    :pswitch_4
    const-string v0, "Fall"

    goto :goto_0

    .line 51
    :pswitch_5
    const-string v0, "OutOfRange"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
