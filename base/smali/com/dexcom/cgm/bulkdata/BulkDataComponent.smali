.class public Lcom/dexcom/cgm/bulkdata/BulkDataComponent;
.super Ljava/lang/Object;
.source "BulkDataComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/bulkdata/BulkDataService;


# static fields
.field private static final FAILED_POST_DELAY:J

.field private static final ONE_MEGABYTE:I = 0x100000

.field private static final SUCCESSFUL_POST_DELAY:J


# instance fields
.field private m_bundleBuilder:Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;

.field private m_dal:Lcom/dexcom/cgm/d/c;

.field m_webService:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->SUCCESSFUL_POST_DELAY:J

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->FAILED_POST_DELAY:J

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/d/c;Lcom/dexcom/cgm/model/ServerConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-direct {v0, p2, p1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;-><init>(Lcom/dexcom/cgm/model/ServerConfiguration;Lcom/dexcom/cgm/d/c;)V

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_webService:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;

    invoke-direct {v0, p1, p3, p4}, Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;-><init>(Lcom/dexcom/cgm/d/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;

    invoke-interface {p1}, Lcom/dexcom/cgm/d/c;->getInstallationID()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;-><init>(Lcom/dexcom/cgm/bulkdata/BulkDataRecordReader;Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_bundleBuilder:Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;

    .line 47
    return-void
.end method

.method private cleanRecordsBeforeTime(J)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/d/c;->deleteTechSupportLogsBeforeTime(J)V

    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/d/c;->deleteDebugLogsBeforeTime(J)V

    .line 237
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/d/c;->deleteCrashLogsBeforeTime(J)V

    .line 238
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/d/c;->deleteBluetoothLogsBeforeTime(J)V

    .line 239
    return-void
.end method

.method private createPost(Lcom/dexcom/cgm/model/TransmitterId;JJ)V
    .locals 10

    .prologue
    .line 155
    move-object v3, p1

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getPatientID()Ljava/util/UUID;

    move-result-object v2

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_bundleBuilder:Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;->createPostWithTimeFrame(Ljava/util/UUID;Lcom/dexcom/cgm/model/TransmitterId;JJ)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 204
    :goto_1
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->toJSON()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/high16 v2, 0x100000

    if-le v1, v2, :cond_2

    .line 168
    sub-long v0, p4, p2

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CRITICAL FAILURE IN DATAPOST: DataPost was too large to be uploaded and could not be divided. All data within this single second is lost. Unix timestamp of DataPost: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    sub-long v0, p4, p2

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bulk Data Exception: DataPost creation caused a OOM Error and could not be divided. Ending Post Creation. Unix Time of post: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Lcom/dexcom/cgm/bulkdata/BulkDataException;

    invoke-direct {v0}, Lcom/dexcom/cgm/bulkdata/BulkDataException;-><init>()V

    throw v0

    .line 181
    :cond_1
    sub-long v0, p4, p2

    const-wide/16 v4, 0x2

    :try_start_1
    div-long/2addr v0, v4

    add-long v6, p2, v0

    move-object v2, p0

    move-wide v4, p2

    .line 182
    invoke-direct/range {v2 .. v7}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->createPost(Lcom/dexcom/cgm/model/TransmitterId;JJ)V

    move-object v4, p0

    move-object v5, v3

    move-wide v8, p4

    .line 183
    invoke-direct/range {v4 .. v9}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->createPost(Lcom/dexcom/cgm/model/TransmitterId;JJ)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->getSequenceNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v5, v0}, Lcom/dexcom/cgm/d/c;->addDataPost(JLjava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0, p4, p5}, Lcom/dexcom/cgm/d/c;->setLastPostTime(J)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 199
    :cond_3
    const-class v0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught Out of Memory Error creating DataPost from unix time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sub-long v0, p4, p2

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    add-long v6, p2, v0

    move-object v2, p0

    move-wide v4, p2

    .line 202
    invoke-direct/range {v2 .. v7}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->createPost(Lcom/dexcom/cgm/model/TransmitterId;JJ)V

    move-wide p2, v6

    .line 203
    goto/16 :goto_0
.end method

.method private isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getPatientID()Ljava/util/UUID;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private post()V
    .locals 6

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->readDataPosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    const-class v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->fromJSON(Ljava/lang/String;Ljava/lang/Class;)Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_webService:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;

    invoke-interface {v2, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;->postPatientData(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;)Ljava/util/UUID;

    .line 216
    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->getSequenceNumber()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/dexcom/cgm/d/c;->deleteDataPost(J)V

    .line 217
    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/dexcom/cgm/d/c;->setWasLastPostSuccessful(Z)V
    :try_end_0
    .catch Lcom/dexcom/cgm/bulkdata/webservice/exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/bulkdata/webservice/exceptions/IntegrityCheckFailedWSException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/d/c;->setWasLastPostSuccessful(Z)V

    .line 231
    :cond_0
    return-void

    .line 228
    :catch_1
    move-exception v2

    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->getSequenceNumber()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/dexcom/cgm/d/c;->deleteDataPost(J)V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized createPost()V
    .locals 8

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    .line 138
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    .line 139
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getLastPostTime()J

    move-result-wide v2

    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_webService:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;

    iget-object v6, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v6}, Lcom/dexcom/cgm/d/c;->getUsername()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v7}, Lcom/dexcom/cgm/d/c;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 144
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->createPost(Lcom/dexcom/cgm/model/TransmitterId;JJ)V
    :try_end_1
    .catch Lcom/dexcom/cgm/bulkdata/BulkDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getLastPostTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->cleanRecordsBeforeTime(J)V

    .line 150
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->post()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized createPostIfNeeded()V
    .locals 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->isUserLoggedIn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 119
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v2}, Lcom/dexcom/cgm/d/c;->getLastPostTime()J

    move-result-wide v2

    .line 121
    sub-long v2, v0, v2

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->wasLastPostSuccessful()Z

    move-result v0

    .line 124
    if-eqz v0, :cond_2

    sget-wide v0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->SUCCESSFUL_POST_DELAY:J

    .line 126
    :goto_1
    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->createPost()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_2
    :try_start_2
    sget-wide v0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->FAILED_POST_DELAY:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onAppEnteredForeground()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->onTransmitterCommunicationEvent()V

    .line 60
    return-void
.end method

.method public onContactTechSupport()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$1;-><init>(Lcom/dexcom/cgm/bulkdata/BulkDataComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method public onFatalException()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$2;-><init>(Lcom/dexcom/cgm/bulkdata/BulkDataComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method

.method public onTransmitterCommunicationEvent()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$3;-><init>(Lcom/dexcom/cgm/bulkdata/BulkDataComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method

.method setBundleBuilder(Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->m_bundleBuilder:Lcom/dexcom/cgm/bulkdata/BulkDataBundleBuilder;

    .line 244
    return-void
.end method
