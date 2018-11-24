.class Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$1;
.super Ljava/lang/Object;
.source "RealtimeEventWebserviceComponent.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$1;->this$0:Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
