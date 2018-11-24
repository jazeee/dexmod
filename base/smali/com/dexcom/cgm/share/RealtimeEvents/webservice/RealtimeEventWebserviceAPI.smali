.class public interface abstract Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;
.super Ljava/lang/Object;
.source "RealtimeEventWebserviceAPI.java"


# virtual methods
.method public abstract CheckAesEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "aesKey"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "aesIV"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "encryptedBytes"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Testing/CheckAesEncryption"
    .end annotation
.end method

.method public abstract CheckWrappedAesEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "wrappedAesKey"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "wrappedAesIV"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "encryptedBytes"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Testing/CheckWrappedAesEncryption"
    .end annotation
.end method

.method public abstract PostEvents(Ljava/lang/String;)Ljava/lang/Void;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/PostEvents"
    .end annotation
.end method

.method public abstract ReadEvents(Ljava/lang/String;)Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadEvents"
    .end annotation
.end method

.method public abstract ReadLastEventPosted(Ljava/lang/String;)Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/ReadLastEventPosted"
    .end annotation
.end method

.method public abstract RegisterPublisherDeviceKey(Ljava/lang/String;)Ljava/util/UUID;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/DeviceKeys"
    .end annotation
.end method

.method public abstract Timestamps(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/Publisher/Timestamps"
    .end annotation
.end method
