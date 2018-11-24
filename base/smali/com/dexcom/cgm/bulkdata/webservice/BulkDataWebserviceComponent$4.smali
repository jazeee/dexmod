.class Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;
.super Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;
.source "BulkDataWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

.field final synthetic val$dataPost:Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;->val$dataPost:Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;->call()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->access$200(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;->sessionId:Ljava/util/UUID;

    .line 242
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;->val$dataPost:Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    iput-object v1, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;->post:Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    .line 244
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->access$100(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;->PostPatientData(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
