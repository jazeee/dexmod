.class public interface abstract Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;
.super Ljava/lang/Object;
.source "BulkDataWebserviceAPI.java"


# virtual methods
.method public abstract LoginPublisherAccountByName(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;)Ljava/util/UUID;
    .param p1    # Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/General/LoginPublisherAccountByName"
    .end annotation
.end method

.method public abstract PostPatientData(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;)Ljava/util/UUID;
    .param p1    # Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/PostPatientDataBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Data/PostPatientData"
    .end annotation
.end method

.method public abstract ReadLastDataPost(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;)Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
    .param p1    # Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ReadLastDataPostBody;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Data/ReadLastDataPost"
    .end annotation
.end method
