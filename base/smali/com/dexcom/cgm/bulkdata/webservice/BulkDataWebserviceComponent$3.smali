.class Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;
.super Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;
.source "BulkDataWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable",
        "<",
        "Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->access$100(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;

    iget-object v2, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-static {v2}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->access$200(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;->ReadLastDataPost(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;->call()Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;

    move-result-object v0

    return-object v0
.end method
