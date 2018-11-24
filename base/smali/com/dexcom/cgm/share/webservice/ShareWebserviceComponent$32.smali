.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;
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

.field final synthetic val$transmitterID:Lcom/dexcom/cgm/model/TransmitterId;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;->val$transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;->val$transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 1102
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    .line 1101
    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->StartRemoteMonitoringSession(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;

    .line 1104
    const/4 v0, 0x0

    return-object v0
.end method
