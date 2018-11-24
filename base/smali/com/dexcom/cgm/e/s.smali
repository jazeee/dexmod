.class public interface abstract Lcom/dexcom/cgm/e/s;
.super Ljava/lang/Object;
.source "TechSupportLogDatabaseOperations.java"


# virtual methods
.method public abstract createTechSupportLogRecord(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V
.end method

.method public abstract deleteTechSupportLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
.end method

.method public abstract readTechSupportLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/TechSupportLogRecord;",
            ">;"
        }
    .end annotation
.end method
