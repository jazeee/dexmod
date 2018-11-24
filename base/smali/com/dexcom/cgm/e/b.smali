.class public interface abstract Lcom/dexcom/cgm/e/b;
.super Ljava/lang/Object;
.source "AlertStateDatabaseOperations.java"


# virtual methods
.method public abstract readAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/AlertStateRecord;
.end method

.method public abstract readAlertStateRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertStateRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V
.end method
