.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "ShareWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

.field final synthetic val$maxCount:I

.field final synthetic val$minutes:I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;II)V
    .locals 0

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    iput p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->val$minutes:I

    iput p3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->val$maxCount:I

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;

    move-result-object v1

    iget v2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->val$minutes:I

    iget v3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;->val$maxCount:I

    new-instance v4, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;

    invoke-direct {v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->ReadPublisherLatestGlucoseValues(Ljava/util/UUID;IILcom/dexcom/cgm/share/webservice/jsonobjects/EmptyBody;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
