.class public Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "TransmitterInfoTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/dexcom/cgm/model/TransmitterInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public createTransmitterInfoRecord(Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 0

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 24
    return-void
.end method

.method public readLatestTransmitterInfoRecord()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 29
    const-string v0, "record_id"

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;->readTopRecord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/TransmitterInfo;

    return-object v0
.end method
