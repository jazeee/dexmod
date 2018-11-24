.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;
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

.field final synthetic val$runtimeInfo:Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;->val$runtimeInfo:Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;->val$runtimeInfo:Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;-><init>(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->UpdatePublisherAccountRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfoPayload;)Ljava/lang/Void;

    .line 1344
    const/4 v0, 0x0

    return-object v0
.end method
