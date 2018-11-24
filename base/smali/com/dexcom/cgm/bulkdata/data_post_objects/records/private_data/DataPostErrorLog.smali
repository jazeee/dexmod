.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostErrorLog.java"


# instance fields
.field private Message:Ljava/lang/String;

.field private RowID:I

.field private Tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/DebugLogRecord;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DebugLogRecord;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;->setRecordedTime(J)V

    .line 26
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DebugLogRecord;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;->Tag:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DebugLogRecord;->getRecordID()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;->RowID:I

    .line 28
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DebugLogRecord;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostErrorLog;->Message:Ljava/lang/String;

    .line 29
    return-void
.end method
