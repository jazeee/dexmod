.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "PostContainer.java"


# instance fields
.field private Content:Ljava/lang/String;

.field private Hmac:Ljava/lang/String;

.field private IsZip:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/UUID;Z)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 41
    iput-boolean p3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->IsZip:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->jsonify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0, p3}, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->compressIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->Content:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->Content:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/dexcom/cgm/bulkdata/utils/CompressionHelper;->calculateHMAC(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->Hmac:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private compressIfNeeded(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 61
    :goto_0
    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/utils/CompressionHelper;->gzip([B)[B

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/utils/CompressionHelper;->base64([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private jsonify(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostContainer;->Content:Ljava/lang/String;

    return-object v0
.end method
