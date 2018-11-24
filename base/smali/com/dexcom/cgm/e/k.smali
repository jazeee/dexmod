.class public interface abstract Lcom/dexcom/cgm/e/k;
.super Ljava/lang/Object;
.source "EGVDatabaseOperations.java"


# virtual methods
.method public abstract createEGVRecord(Lcom/dexcom/cgm/model/Glucose;)V
.end method

.method public abstract createEGVRecords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasCompletedSensorWarmUpAtLeastOnce()Z
.end method

.method public abstract readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/l;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readEGVRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readLatestEGVRecord()Lcom/dexcom/cgm/model/Glucose;
.end method
