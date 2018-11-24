.class public interface abstract Lcom/dexcom/cgm/appcompatability/webservice/a;
.super Ljava/lang/Object;
.source "AppCompatabilityWebservice.java"


# virtual methods
.method public abstract checkValidity(Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;
.end method

.method public abstract getMessage(Ljava/util/UUID;Ljava/lang/String;)Lcom/dexcom/cgm/model/GetMessageResult;
.end method

.method public abstract lastKnownInternetState()Z
.end method

.method public abstract lastKnownServerState()Z
.end method

.method public abstract setCommunicationsEnabled(Z)V
.end method
