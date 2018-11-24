.class public interface abstract Lcom/dexcom/cgm/e/h;
.super Ljava/lang/Object;
.source "CrashLogTableDatabaseOperations.java"


# virtual methods
.method public abstract createCrashLog(Lcom/dexcom/cgm/model/CrashLog;)V
.end method

.method public abstract deleteCrashLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract readCrashLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CrashLog;",
            ">;"
        }
    .end annotation
.end method
