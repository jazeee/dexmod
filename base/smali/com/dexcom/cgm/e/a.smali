.class public interface abstract Lcom/dexcom/cgm/e/a;
.super Ljava/lang/Object;
.source "AlertScheduleDatabaseOperations.java"


# virtual methods
.method public abstract createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
.end method

.method public abstract deleteAlertScheduleForTesting(I)V
.end method

.method public abstract readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
.end method

.method public abstract readAlertSchedules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DexAlertSchedule;",
            ">;"
        }
    .end annotation
.end method
