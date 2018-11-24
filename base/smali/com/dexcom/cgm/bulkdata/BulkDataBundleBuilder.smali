.class public Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;
.super Ljava/lang/Object;
.source "BulkDataBundleBuilder.java"


# instance fields
.field private m_installationID:Ljava/util/UUID;

.field private m_recordReader:Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->m_recordReader:Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;

    .line 31
    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->m_installationID:Ljava/util/UUID;

    .line 32
    return-void
.end method

.method private createDataContent(Ljava/util/List;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;",
            ">;JJ)",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->createDataContentEntry(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;

    invoke-direct {v0, v6}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method private createDataContentEntry(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->m_recordReader:Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;->readServerRecords(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;JJ)Ljava/util/List;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;

    invoke-direct {v0, p1, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;-><init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;Ljava/util/List;)V

    goto :goto_0
.end method

.method private createDataManifest(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;
    .locals 4

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;

    .line 126
    new-instance v3, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;

    invoke-direct {v3, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifestEntry;-><init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContentEntry;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_1
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public createPostWithTimeFrame(Ljava/util/UUID;Lcom/dexcom/cgm/model/TransmitterId;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
    .locals 9

    .prologue
    .line 45
    new-instance v6, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;

    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->m_installationID:Ljava/util/UUID;

    invoke-direct {v6, p1, p2, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;-><init>(Ljava/util/UUID;Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/UUID;)V

    .line 49
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->getPublicDataTypes()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->createDataContent(Ljava/util/List;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;

    move-result-object v7

    .line 52
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecordType;->getPrivateDataTypes()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->createDataContent(Ljava/util/List;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;

    move-result-object v5

    .line 56
    if-nez v7, :cond_0

    if-nez v5, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-direct {p0, v7}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->createDataManifest(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;

    move-result-object v2

    .line 60
    invoke-direct {p0, v5}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->createDataManifest(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;

    move-result-object v4

    .line 62
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    move-object v1, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;-><init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;)V

    goto :goto_0
.end method
