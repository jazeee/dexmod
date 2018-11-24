.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "DataManifestEntry.java"


# instance fields
.field private Count:I

.field private FirstDateTime:Ljava/lang/String;

.field private FirstKey:Ljava/lang/String;

.field private LastDateTime:Ljava/lang/String;

.field private LastKey:Ljava/lang/String;

.field private RecordType:Ljava/lang/String;

.field private Tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->Tag:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;->getRecords()Ljava/util/List;

    move-result-object v3

    .line 36
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;

    .line 37
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;

    .line 39
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 41
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;->getRecordType()Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->RecordType:Ljava/lang/String;

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->Count:I

    .line 44
    if-nez v4, :cond_0

    .line 46
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;

    invoke-virtual {v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;->getRecordedDisplayTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->FirstDateTime:Ljava/lang/String;

    .line 48
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;

    invoke-virtual {v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;->getRecordedDisplayTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->LastDateTime:Ljava/lang/String;

    .line 51
    instance-of v2, v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;

    if-eqz v2, :cond_2

    .line 53
    if-nez v4, :cond_1

    .line 55
    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->FirstKey:Ljava/lang/String;

    .line 57
    :cond_1
    check-cast v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;

    invoke-virtual {v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;->LastKey:Ljava/lang/String;

    .line 59
    :cond_2
    return-void
.end method
