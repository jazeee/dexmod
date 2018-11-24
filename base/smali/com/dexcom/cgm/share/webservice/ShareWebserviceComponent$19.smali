.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;
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

.field final synthetic val$contactID:Ljava/util/UUID;

.field final synthetic val$settings:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->val$contactID:Ljava/util/UUID;

    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->val$settings:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->call()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/UUID;
    .locals 4

    .prologue
    .line 746
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->val$contactID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;->val$settings:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;

    invoke-interface {v0, v1, v2, v3}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->CreateSubscriptionInvitation(Ljava/util/UUID;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
