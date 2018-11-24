.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "DataPostRecord.java"


# instance fields
.field private RecordedDisplayTime:Ljava/lang/String;

.field private RecordedSystemTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordedDisplayTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;->RecordedDisplayTime:Ljava/lang/String;

    return-object v0
.end method

.method protected setRecordedTime(J)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;->RecordedDisplayTime:Ljava/lang/String;

    .line 23
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;->RecordedSystemTime:Ljava/lang/String;

    .line 24
    return-void
.end method
