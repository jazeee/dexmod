.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;
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

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$oldPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->val$oldPassword:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->val$newPassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;->sessionId:Ljava/util/UUID;

    .line 423
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->val$oldPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;->oldPassword:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->val$newPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;->newPassword:Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->ChangePublisherAccountPassword(Lcom/dexcom/cgm/share/webservice/jsonobjects/ChangePasswordBody;)Ljava/lang/Void;

    .line 427
    const/4 v0, 0x0

    return-object v0
.end method
