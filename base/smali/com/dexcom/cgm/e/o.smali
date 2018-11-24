.class public interface abstract Lcom/dexcom/cgm/e/o;
.super Ljava/lang/Object;
.source "MeterDatabaseOperations.java"


# virtual methods
.method public abstract createMeterRecord(Lcom/dexcom/cgm/model/Meter;)V
.end method

.method public abstract readLatestMeterRecord()Lcom/dexcom/cgm/model/Meter;
.end method

.method public abstract readMeterRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/p;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/p;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation
.end method
