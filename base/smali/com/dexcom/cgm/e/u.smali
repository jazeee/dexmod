.class public interface abstract Lcom/dexcom/cgm/e/u;
.super Ljava/lang/Object;
.source "UserAlertDatabaseOperations.java"


# virtual methods
.method public abstract deleteUserAlertRecordForTesting(I)V
.end method

.method public abstract readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;
.end method

.method public abstract readUserAlertRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V
.end method
