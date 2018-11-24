.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "ShareWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

.field final synthetic val$egvs:Ljava/util/List;

.field final synthetic val$transmitterID:Lcom/dexcom/cgm/model/TransmitterId;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/List;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->val$egvs:Ljava/util/List;

    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->val$transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 1275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->val$egvs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 1277
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->fromLocalEGV(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1279
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;-><init>()V

    .line 1280
    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->val$transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;->SN:Ljava/lang/String;

    .line 1281
    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;->Egvs:Ljava/util/List;

    .line 1283
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->PostReceiverEgvRecords(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/PostEGVRecordsBody;)Ljava/lang/Void;

    .line 1284
    const/4 v0, 0x0

    return-object v0
.end method
