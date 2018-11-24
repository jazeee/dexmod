.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$3;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "ShareWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$3;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$3;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;->SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$3;->call()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

    move-result-object v0

    return-object v0
.end method
