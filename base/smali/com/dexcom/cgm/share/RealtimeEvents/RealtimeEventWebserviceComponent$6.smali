.class Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;
.super Lcom/dexcom/cgm/share/RetrofitCallable;
.source "RealtimeEventWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/share/RetrofitCallable",
        "<",
        "Ljava/lang/String;",
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
    .line 272
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;->this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

    iput-object p2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;->val$signedRequest:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dexcom/cgm/share/RetrofitCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;->this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

    invoke-static {v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->access$000(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;->val$signedRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;->Timestamps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
