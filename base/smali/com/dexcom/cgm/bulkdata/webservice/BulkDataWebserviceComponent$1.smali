.class Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;
.super Ljava/lang/Object;
.source "BulkDataWebserviceComponent.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
