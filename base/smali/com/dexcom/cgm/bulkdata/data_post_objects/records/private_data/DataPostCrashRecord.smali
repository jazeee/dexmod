.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrashRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostCrashRecord.java"


# instance fields
.field private crashFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/CrashLog;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CrashLog;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrashRecord;->setRecordedTime(J)V

    .line 24
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrash;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrash;-><init>(Lcom/dexcom/cgm/model/CrashLog;)V

    .line 25
    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrash;->toJSON()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/utils/CompressionHelper;->gzip([B)[B

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/utils/CompressionHelper;->base64([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/private_data/DataPostCrashRecord;->crashFile:Ljava/lang/String;

    .line 28
    return-void
.end method
