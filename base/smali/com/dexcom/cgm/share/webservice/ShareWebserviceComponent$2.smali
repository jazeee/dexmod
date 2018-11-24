.class Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$2;
.super Ljava/lang/Object;
.source "ShareWebserviceComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$2;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$2;->this$0:Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
