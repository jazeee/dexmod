.class public interface abstract Lcom/dexcom/cgm/e/f;
.super Ljava/lang/Object;
.source "CgmDatabase.java"

# interfaces
.implements Lcom/dexcom/cgm/e/a;
.implements Lcom/dexcom/cgm/e/b;
.implements Lcom/dexcom/cgm/e/c;
.implements Lcom/dexcom/cgm/e/d;
.implements Lcom/dexcom/cgm/e/e;
.implements Lcom/dexcom/cgm/e/g;
.implements Lcom/dexcom/cgm/e/h;
.implements Lcom/dexcom/cgm/e/i;
.implements Lcom/dexcom/cgm/e/j;
.implements Lcom/dexcom/cgm/e/k;
.implements Lcom/dexcom/cgm/e/m;
.implements Lcom/dexcom/cgm/e/n;
.implements Lcom/dexcom/cgm/e/o;
.implements Lcom/dexcom/cgm/e/q;
.implements Lcom/dexcom/cgm/e/s;
.implements Lcom/dexcom/cgm/e/t;
.implements Lcom/dexcom/cgm/e/u;
.implements Lcom/dexcom/cgm/e/v;


# virtual methods
.method public abstract createOrUpdateTransmitterDetails(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V
.end method

.method public abstract eraseAndResetAlertSettings()V
.end method

.method public abstract eraseAndResetGlucose()V
.end method

.method public abstract eraseAndResetState()V
.end method

.method public abstract readHighestRecordID(Ljava/lang/Class;)I
.end method

.method public abstract readLowestRecordID(Ljava/lang/Class;)I
.end method

.method public abstract readRecordsByID(Ljava/lang/Class;II)Ljava/util/List;
.end method

.method public abstract realDatabaseCorruptionError()V
.end method

.method public abstract setAlertSettingsDatabaseCorruptionHandler(Ljava/lang/Runnable;)V
.end method

.method public abstract setFatalDatabaseCorruptionHandler(Ljava/lang/Runnable;)V
.end method

.method public abstract teardown()V
.end method
