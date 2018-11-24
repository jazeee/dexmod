.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;
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

.field final synthetic val$subscriptionId:Ljava/util/UUID;

.field final synthetic val$trendGraphPermission:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;Z)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->val$subscriptionId:Ljava/util/UUID;

    iput-boolean p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->val$trendGraphPermission:Z

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 900
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->val$subscriptionId:Ljava/util/UUID;

    iget-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;->val$trendGraphPermission:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v4, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->UpdateSubscriptionPermissions(Ljava/util/UUID;Ljava/util/UUID;ILcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;

    .line 904
    const/4 v0, 0x0

    return-object v0

    .line 900
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
