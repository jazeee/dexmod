.class Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;
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

.field final synthetic val$loginBody:Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;->val$loginBody:Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;->call()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->access$100(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;->val$loginBody:Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;->LoginPublisherAccountByName(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
