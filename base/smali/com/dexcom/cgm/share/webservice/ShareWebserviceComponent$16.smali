.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;
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

.field final synthetic val$contactId:Ljava/util/UUID;

.field final synthetic val$contactName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->val$contactId:Ljava/util/UUID;

    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->val$contactName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 670
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->val$contactId:Ljava/util/UUID;

    iget-object v3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;->val$contactName:Ljava/lang/String;

    new-instance v4, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->UpdateContactName(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/lang/Void;

    .line 671
    const/4 v0, 0x0

    return-object v0
.end method
