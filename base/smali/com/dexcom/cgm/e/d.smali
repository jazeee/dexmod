.class public interface abstract Lcom/dexcom/cgm/e/d;
.super Ljava/lang/Object;
.source "BluetoothEventDatabaseOperations.java"


# virtual methods
.method public abstract createBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
.end method

.method public abstract deleteBluetoothEventRecords(Lcom/dexcom/cgm/k/j;)V
.end method

.method public varargs abstract readBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "[",
            "Lcom/dexcom/cgm/model/enums/BluetoothEventType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/BluetoothEventRecord;",
            ">;"
        }
    .end annotation
.end method
