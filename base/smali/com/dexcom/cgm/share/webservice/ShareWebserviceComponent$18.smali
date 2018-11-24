.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "ShareWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

.field final synthetic val$contactName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;->val$contactName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;->val$contactName:Ljava/lang/String;

    new-instance v3, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->DoesContactExistByName(Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
