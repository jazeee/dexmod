.class public interface abstract Lcom/dexcom/cgm/e/q;
.super Ljava/lang/Object;
.source "SensorSessionDatabaseOperations.java"


# virtual methods
.method public abstract createSensorSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V
.end method

.method public abstract readSensorSessionRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/r;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/SensorSession;",
            ">;"
        }
    .end annotation
.end method
