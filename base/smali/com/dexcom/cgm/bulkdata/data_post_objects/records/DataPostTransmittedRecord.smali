.class public abstract Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "DataPostTransmittedRecord.java"


# instance fields
.field protected TransmitterId:Ljava/lang/String;

.field protected TransmitterTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;->TransmitterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;->TransmitterTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setTransmitterTime(J)V
    .locals 1

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;->TransmitterTime:J

    .line 25
    return-void
.end method
