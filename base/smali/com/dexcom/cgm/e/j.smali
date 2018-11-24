.class public interface abstract Lcom/dexcom/cgm/e/j;
.super Ljava/lang/Object;
.source "DebugLogDatabaseOperations.java"


# virtual methods
.method public abstract createDebugLogRecord(Lcom/dexcom/cgm/model/DebugLogRecord;)V
.end method

.method public abstract deleteDebugLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract readDebugLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DebugLogRecord;",
            ">;"
        }
    .end annotation
.end method
