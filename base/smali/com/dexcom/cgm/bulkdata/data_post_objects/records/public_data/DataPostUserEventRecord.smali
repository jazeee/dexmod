.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostUserEventRecord.java"


# instance fields
.field private EventDisplayTime:Ljava/lang/String;

.field private EventId:Ljava/util/UUID;

.field private EventSystemTime:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private SubType:Ljava/lang/String;

.field private Units:Ljava/lang/String;

.field private Value:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/UserEvent;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->EventId:Ljava/util/UUID;

    .line 36
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserEvent;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->setRecordedTime(J)V

    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserEvent;->getEventTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->setEventTime(J)V

    .line 39
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserEvent;->getEventType()Lcom/dexcom/cgm/model/enums/UserEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/UserEventType;->getUserEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->Name:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserEvent;->getEventSubType()Lcom/dexcom/cgm/model/enums/UserEventSubType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->getEventSubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->SubType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserEvent;->getEventValue()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->Value:I

    .line 42
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserEvent;->getEventType()Lcom/dexcom/cgm/model/enums/UserEventType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->getUnitsForEventType(Lcom/dexcom/cgm/model/enums/UserEventType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->Units:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private getUnitsForEventType(Lcom/dexcom/cgm/model/enums/UserEventType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord$1;->$SwitchMap$com$dexcom$cgm$model$enums$UserEventType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/UserEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    const-string v0, "grams"

    goto :goto_0

    .line 58
    :pswitch_1
    const-string v0, "units"

    goto :goto_0

    .line 60
    :pswitch_2
    const-string v0, "minutes"

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setEventTime(J)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->EventSystemTime:Ljava/lang/String;

    .line 48
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostUserEventRecord;->EventDisplayTime:Ljava/lang/String;

    .line 49
    return-void
.end method
