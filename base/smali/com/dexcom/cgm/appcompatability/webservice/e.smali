.class final Lcom/dexcom/cgm/appcompatability/webservice/e;
.super Lcom/dexcom/cgm/appcompatability/webservice/f;
.source "AppCompatabilityWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/appcompatability/webservice/f",
        "<",
        "Lcom/dexcom/cgm/model/ValidityResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/model/AppRuntimeInfo;

.field private synthetic b:Lcom/dexcom/cgm/appcompatability/webservice/b;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/appcompatability/webservice/b;Lcom/dexcom/cgm/model/AppRuntimeInfo;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dexcom/cgm/appcompatability/webservice/e;->b:Lcom/dexcom/cgm/appcompatability/webservice/b;

    iput-object p2, p0, Lcom/dexcom/cgm/appcompatability/webservice/e;->a:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/appcompatability/webservice/f;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/b;B)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 189
    .line 1193
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/e;->b:Lcom/dexcom/cgm/appcompatability/webservice/b;

    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/b;->access$200(Lcom/dexcom/cgm/appcompatability/webservice/b;)Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/appcompatability/webservice/e;->b:Lcom/dexcom/cgm/appcompatability/webservice/b;

    invoke-static {v1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->access$100(Lcom/dexcom/cgm/appcompatability/webservice/b;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/appcompatability/webservice/e;->a:Lcom/dexcom/cgm/model/AppRuntimeInfo;

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;->CheckValidity(Ljava/util/UUID;Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;

    move-result-object v0

    .line 189
    return-object v0
.end method
