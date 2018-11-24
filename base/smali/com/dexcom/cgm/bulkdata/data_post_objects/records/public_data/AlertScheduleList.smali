.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "AlertScheduleList.java"


# instance fields
.field private AlertScheduleSettings:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;

.field private AlertSettings:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;->AlertSettings:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;

    .line 16
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;->AlertScheduleSettings:Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;

    .line 17
    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;->AlertSettings:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;

    .line 18
    return-void
.end method


# virtual methods
.method public getAlertSettings()[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleList;->AlertSettings:[Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertSettingRecord;

    return-object v0
.end method
