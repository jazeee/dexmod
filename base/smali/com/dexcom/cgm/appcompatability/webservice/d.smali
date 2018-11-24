.class final Lcom/dexcom/cgm/appcompatability/webservice/d;
.super Lcom/dexcom/cgm/appcompatability/webservice/f;
.source "AppCompatabilityWebserviceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/appcompatability/webservice/f",
        "<",
        "Lcom/dexcom/cgm/model/GetMessageResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/UUID;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/dexcom/cgm/appcompatability/webservice/b;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/appcompatability/webservice/b;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->c:Lcom/dexcom/cgm/appcompatability/webservice/b;

    iput-object p2, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->a:Ljava/util/UUID;

    iput-object p3, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/appcompatability/webservice/f;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/b;B)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 161
    .line 1165
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->c:Lcom/dexcom/cgm/appcompatability/webservice/b;

    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/b;->access$200(Lcom/dexcom/cgm/appcompatability/webservice/b;)Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->c:Lcom/dexcom/cgm/appcompatability/webservice/b;

    invoke-static {v1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->access$100(Lcom/dexcom/cgm/appcompatability/webservice/b;)Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->a:Ljava/util/UUID;

    iget-object v3, p0, Lcom/dexcom/cgm/appcompatability/webservice/d;->b:Ljava/lang/String;

    new-instance v4, Lcom/dexcom/cgm/appcompatability/webservice/a/b;

    invoke-direct {v4}, Lcom/dexcom/cgm/appcompatability/webservice/a/b;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;->GetMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/appcompatability/webservice/a/b;)Lcom/dexcom/cgm/model/GetMessageResult;

    move-result-object v0

    .line 161
    return-object v0
.end method
