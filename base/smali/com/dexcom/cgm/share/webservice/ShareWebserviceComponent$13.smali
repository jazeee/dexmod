.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;
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

.field final synthetic val$image:[B


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;[B)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;->val$image:[B

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 595
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;-><init>()V

    .line 596
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;->val$image:[B

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;->setImage([B)V

    .line 598
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->UpdatePublisherAccountImage(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/UpdateAvatarBody;)Ljava/lang/Void;

    .line 599
    const/4 v0, 0x0

    return-object v0
.end method
