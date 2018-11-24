.class public Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite;
.super Ljava/lang/Object;
.source "DexcomWebsite.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_api:Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite$DexcomWebsiteApi;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 27
    const-class v1, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite$DexcomWebsiteApi;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite$DexcomWebsiteApi;

    iput-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite;->m_api:Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite$DexcomWebsiteApi;

    .line 28
    return-void
.end method

.method public static create(Lcom/dexcom/cgm/tx/a/h;Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/model/CalBounds;
    .locals 8

    .prologue
    .line 1024
    if-nez p0, :cond_0

    .line 1026
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return-object v0

    .line 1028
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/k/n;

    .line 1029
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getLastCalibrationTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 1028
    invoke-static {p1, v0}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v7

    .line 1030
    new-instance v0, Lcom/dexcom/cgm/model/CalBounds;

    .line 1031
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getCalBoundError1()I

    move-result v1

    .line 1032
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getCalBoundError0()I

    move-result v2

    .line 1033
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getCalBoundMin()I

    move-result v3

    .line 1034
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getCalBoundMax()I

    move-result v4

    .line 1035
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getBgWeight()S

    move-result v5

    .line 1036
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/a/h;->getLastBloodGlucose()I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/model/CalBounds;-><init>(IIIISILcom/dexcom/cgm/k/m;)V

    goto :goto_0
.end method


# virtual methods
.method public final readFaqList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite;->m_api:Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite$DexcomWebsiteApi;

    invoke-interface {v0}, Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite$DexcomWebsiteApi;->readFaqList$2544832e()Lcom/dexcom/cgm/appcompatability/webservice/DexcomWebsite;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->fromRetrofitError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/appcompatability/webservice/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->getType()Lcom/dexcom/cgm/appcompatability/webservice/i;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServerUnreachable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    if-ne v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/b;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServiceUnavailable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    if-ne v0, v1, :cond_1

    .line 50
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/c;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/c;-><init>()V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/d;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/d;-><init>()V

    throw v0
.end method
