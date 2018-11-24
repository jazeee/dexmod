.class public interface abstract Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;
.super Ljava/lang/Object;
.source "BulkDataWebservice.java"


# virtual methods
.method public abstract postPatientData(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;)Ljava/util/UUID;
.end method

.method public abstract readLastDataPost()Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
.end method

.method public abstract setCommunicationsEnabled(Z)V
.end method

.method public abstract setCredentials(Ljava/lang/String;Ljava/lang/String;)V
.end method
