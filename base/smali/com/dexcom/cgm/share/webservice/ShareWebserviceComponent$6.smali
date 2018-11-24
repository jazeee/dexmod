.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "ShareWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Ljava/util/UUID;",
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
    .line 392
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;->val$body:Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;->call()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;->val$body:Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->AuthenticatePublisherAccount(Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
