.class Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "RealtimeEventWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

.field final synthetic val$signedRequest:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;->this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;->val$signedRequest:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;->this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;->val$signedRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;->ReadLastEventPosted(Ljava/lang/String;)Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;->call()Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;

    move-result-object v0

    return-object v0
.end method
