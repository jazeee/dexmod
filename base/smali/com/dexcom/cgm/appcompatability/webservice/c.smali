.class final Lcom/dexcom/cgm/appcompatability/webservice/c;
.super Ljava/lang/Object;
.source "AppCompatabilityWebserviceComponent.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/appcompatability/webservice/b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .locals 2

    .prologue
    .line 67
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
