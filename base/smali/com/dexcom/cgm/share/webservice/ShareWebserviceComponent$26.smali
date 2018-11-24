.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;
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

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 927
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;-><init>()V

    .line 928
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;->sessionId:Ljava/util/UUID;

    .line 929
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->val$name:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;->name:Ljava/lang/String;

    .line 930
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->val$value:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;->value:Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$200(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;->partitionId:Ljava/util/UUID;

    .line 933
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->CreateNamedValue(Lcom/dexcom/cgm/share/webservice/jsonobjects/NamedValueBody;)Ljava/lang/Void;

    .line 934
    const/4 v0, 0x0

    return-object v0
.end method
