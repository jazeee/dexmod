.class public interface abstract Lcom/dexcom/cgm/e/g;
.super Ljava/lang/Object;
.source "CommandQueueDatabaseOperations.java"


# virtual methods
.method public abstract createCommandRecord(Lcom/dexcom/cgm/model/CgmCommand;)V
.end method

.method public abstract getLatestCommands(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readPendingCalibrationCommands()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readPendingStartStopCommands()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation
.end method
