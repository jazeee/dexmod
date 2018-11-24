.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "DataContentEntry.java"


# instance fields
.field private RecordType:Ljava/lang/String;

.field private Records:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;->RecordType:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;->Records:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getRecordType()Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;->RecordType:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    move-result-object v0

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry$1;-><init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;)V

    .line 42
    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;->Records:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
