.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;
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

.field final synthetic val$body:Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;->val$body:Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;->val$body:Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->LoginPublisherAccountByName(Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$102(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)Ljava/util/UUID;

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method
