.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostUserActivityRecord.java"


# instance fields
.field private Data:Ljava/lang/String;

.field private UserActivitySubType:Ljava/lang/String;

.field private UserActivityType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothEventRecord;->getRecordSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->setRecordedTime(J)V

    .line 38
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothEventRecord;->getBluetoothEventType()Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->getActivityType(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->UserActivityType:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothEventRecord;->getBluetoothEventType()Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->UserActivitySubType:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/BluetoothEventRecord;->getPayloadString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->Data:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TechSupportLogRecord;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->setRecordedTime(J)V

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TechSupportLogRecord;->getActivityType()Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->UserActivityType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TechSupportLogRecord;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->Data:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TechSupportLogRecord;->getActivitySubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord;->UserActivitySubType:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getActivityType(Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostUserActivityRecord$1;->$SwitchMap$com$dexcom$cgm$model$enums$BluetoothEventType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmapped activity type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Application:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Transmitter:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->BluetoothEvent:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Test:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
