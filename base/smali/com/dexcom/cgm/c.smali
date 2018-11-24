.class final Lcom/dexcom/cgm/c;
.super Ljava/lang/Object;
.source "CgmApplication.java"

# interfaces
.implements Lcom/dexcom/cgm/b/i;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/CgmApplication;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/CgmApplication;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/dexcom/cgm/c;->a:Lcom/dexcom/cgm/CgmApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evCgmData(Lcom/dexcom/cgm/b/u;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dexcom/cgm/c;->a:Lcom/dexcom/cgm/CgmApplication;

    invoke-static {v0}, Lcom/dexcom/cgm/CgmApplication;->access$100(Lcom/dexcom/cgm/CgmApplication;)Lcom/dexcom/cgm/component_provider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/component_provider/a;->getShareService()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->onTransmitterCommunicationEvent()V

    .line 325
    iget-object v0, p0, Lcom/dexcom/cgm/c;->a:Lcom/dexcom/cgm/CgmApplication;

    invoke-static {v0}, Lcom/dexcom/cgm/CgmApplication;->access$100(Lcom/dexcom/cgm/CgmApplication;)Lcom/dexcom/cgm/component_provider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/component_provider/a;->getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/bulkdata/BulkDataService;->onTransmitterCommunicationEvent()V

    .line 326
    return-void
.end method
