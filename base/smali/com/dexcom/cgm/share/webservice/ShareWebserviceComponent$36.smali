.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;
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


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->GetMonitoredReceiverIdIfEnabled(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/UUID;

    move-result-object v0

    .line 1242
    invoke-static {}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$300()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1244
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    .line 1245
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    .line 1244
    invoke-interface {v1, v2, v0, v3}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->StopMonitoringReceiver(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;

    .line 1249
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
