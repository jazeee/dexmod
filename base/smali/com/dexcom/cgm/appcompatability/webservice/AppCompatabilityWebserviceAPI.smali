.class interface abstract Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;
.super Ljava/lang/Object;
.source "AppCompatabilityWebserviceAPI.java"


# virtual methods
.method public abstract CheckValidity(Ljava/util/UUID;Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "applicationId"
        .end annotation
    .end param
    .param p2    # Lcom/dexcom/cgm/model/AppRuntimeInfo;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/CheckValidity"
    .end annotation
.end method

.method public abstract GetMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/dexcom/cgm/appcompatability/webservice/a/b;)Lcom/dexcom/cgm/model/GetMessageResult;
    .param p1    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "applicationId"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit/http/Query;
            value = "messageId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "culture"
        .end annotation
    .end param
    .param p4    # Lcom/dexcom/cgm/appcompatability/webservice/a/b;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/GetMessage"
    .end annotation
.end method
