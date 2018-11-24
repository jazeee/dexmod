.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostAlertScheduleRecord.java"


# instance fields
.field private AlertScheduleList:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

.field private RecordVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 11
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->RecordVersion:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->AlertScheduleList:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    .line 22
    invoke-direct {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->getRecordVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->RecordVersion:Ljava/lang/String;

    .line 23
    invoke-direct {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->getDataPostAlertScheduleList()[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->AlertScheduleList:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 11
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->RecordVersion:Ljava/lang/String;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->AlertScheduleList:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    .line 16
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->RecordVersion:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->AlertScheduleList:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    .line 18
    return-void
.end method

.method private getDataPostAlertScheduleList()[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->AlertScheduleList:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;

    return-object v0
.end method

.method private getRecordVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostAlertScheduleRecord;->RecordVersion:Ljava/lang/String;

    return-object v0
.end method
