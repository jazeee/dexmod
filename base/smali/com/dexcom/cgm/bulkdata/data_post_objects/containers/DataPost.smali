.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "DataPost.java"


# instance fields
.field private PostHeader:Ljava/lang/String;

.field private PostId:Ljava/lang/String;

.field private PostedTimestamp:Ljava/lang/String;

.field private PrivateDataContent:Ljava/lang/String;

.field private PrivateDataManifest:Ljava/lang/String;

.field private PublicDataContent:Ljava/lang/String;

.field private PublicDataManifest:Ljava/lang/String;

.field private Version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataManifest;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataContent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->Version:Ljava/lang/Integer;

    .line 56
    if-nez p2, :cond_0

    move v3, v0

    .line 57
    :goto_0
    if-nez p3, :cond_1

    move v1, v0

    .line 58
    :goto_1
    if-eq v3, v1, :cond_4

    .line 60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "publicDataManifest was "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and publicDataContent was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, "null"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". They must either both be null, or both be non-null. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v3, v2

    .line 56
    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1

    .line 60
    :cond_2
    const-string v0, "non-null"

    goto :goto_2

    :cond_3
    const-string v0, "non-null"

    goto :goto_3

    .line 65
    :cond_4
    if-nez p4, :cond_5

    move v3, v0

    .line 66
    :goto_4
    if-nez p5, :cond_6

    move v1, v0

    .line 67
    :goto_5
    if-eq v3, v1, :cond_9

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "privateDataManifest was "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    const-string v0, "null"

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and privateDataContent was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_8

    const-string v0, "null"

    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". They must either both be null, or both be non-null. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move v3, v2

    .line 65
    goto :goto_4

    :cond_6
    move v1, v2

    .line 66
    goto :goto_5

    .line 69
    :cond_7
    const-string v0, "non-null"

    goto :goto_6

    :cond_8
    const-string v0, "non-null"

    goto :goto_7

    .line 75
    :cond_9
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->getPatientId()Ljava/util/UUID;

    move-result-object v1

    .line 80
    invoke-direct {p0, p1, v1, v2}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->containAndJsonify(Ljava/lang/Object;Ljava/util/UUID;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->PostHeader:Ljava/lang/String;

    .line 81
    invoke-direct {p0, p2, v1, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->containAndJsonify(Ljava/lang/Object;Ljava/util/UUID;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->PublicDataManifest:Ljava/lang/String;

    .line 82
    invoke-direct {p0, p3, v1, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->containAndJsonify(Ljava/lang/Object;Ljava/util/UUID;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->PublicDataContent:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p4, v1, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->containAndJsonify(Ljava/lang/Object;Ljava/util/UUID;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->PrivateDataManifest:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p5, v1, v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->containAndJsonify(Ljava/lang/Object;Ljava/util/UUID;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->PrivateDataContent:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private containAndJsonify(Ljava/lang/Object;Ljava/util/UUID;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;

    invoke-direct {v0, p1, p2, p3}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;-><init>(Ljava/lang/Object;Ljava/util/UUID;Z)V

    .line 103
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getSequenceNumber()J
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;->PostHeader:Ljava/lang/String;

    const-class v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;

    .line 114
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->getContent()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;

    .line 116
    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->getSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method
