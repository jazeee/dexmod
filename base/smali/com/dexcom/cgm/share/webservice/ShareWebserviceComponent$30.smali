.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "ShareWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$200(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->ListValueNames(Ljava/util/UUID;Ljava/util/UUID;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
