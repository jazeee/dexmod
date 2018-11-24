.class public Lcom/dexcom/cgm/share/webservice/DexcomWebsite;
.super Ljava/lang/Object;
.source "DexcomWebsite.java"


# instance fields
.field private m_api:Lcom/dexcom/cgm/share/webservice/DexcomWebsite$DexcomWebsiteApi;


# direct methods
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
    const-class v1, Lcom/dexcom/cgm/share/webservice/DexcomWebsite$DexcomWebsiteApi;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/DexcomWebsite$DexcomWebsiteApi;

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/DexcomWebsite;->m_api:Lcom/dexcom/cgm/share/webservice/DexcomWebsite$DexcomWebsiteApi;

    .line 28
    return-void
.end method


# virtual methods
.method public readFaqList()Ljava/util/List;
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
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/DexcomWebsite;->m_api:Lcom/dexcom/cgm/share/webservice/DexcomWebsite$DexcomWebsiteApi;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebsite$DexcomWebsiteApi;->readFaqList()Lcom/dexcom/cgm/share/webservice/DexcomWebsite$FaqList;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/dexcom/cgm/share/webservice/DexcomWebsite$FaqList;->items:Ljava/util/List;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServerUnreachable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    if-ne v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;-><init>()V

    throw v0

    .line 46
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServiceUnavailable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    if-ne v0, v1, :cond_1

    .line 48
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;-><init>()V

    throw v0

    .line 51
    :cond_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
.end method
