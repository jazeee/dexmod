.class Lcom/dexcom/cgm/share/ShareServiceComponent$4;
.super Ljava/lang/Object;
.source "ShareServiceComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/ShareServiceComponent;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$4;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$4;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$100(Lcom/dexcom/cgm/share/ShareServiceComponent;)V

    .line 384
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$4;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValuesIfNeeded()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$4;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$4;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v1}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$200(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$300(Lcom/dexcom/cgm/share/ShareServiceComponent;Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 389
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent$4;->this$0:Lcom/dexcom/cgm/share/ShareServiceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->access$400(Lcom/dexcom/cgm/share/ShareServiceComponent;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload EGVs due to bad/no internet. Will try again later."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to upload EGVs due to the Dexcom Share Realtime server being down for maintenance. Will try again later."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :catch_2
    move-exception v0

    goto :goto_0
.end method
