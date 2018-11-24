.class public Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "BluetoothEventTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/dexcom/cgm/model/BluetoothEventRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 21
    return-void
.end method

.method private makeEntries([Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 71
    if-lez v0, :cond_0

    .line 73
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs readBluetoothEventTypeRecords(JJ[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;
    .locals 5

    .prologue
    .line 55
    const-string v0, "record_system_time"

    .line 56
    const-string v1, "bluetooth_event_type"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-direct {p0, p5}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->makeEntries([Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ASC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v1, v2, v0}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBluetoothEventRecord(Lcom/dexcom/cgm/model/BluetoothEventRecord;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 27
    return-void
.end method

.method public deleteBluetoothEventRecords(Lcom/dexcom/cgm/k/j;)V
    .locals 6

    .prologue
    .line 46
    const-string v0, "record_system_time <= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public varargs readBluetoothEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;
    .locals 7
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

    .prologue
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 38
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p3

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->readBluetoothEventTypeRecords(JJ[Lcom/dexcom/cgm/model/enums/BluetoothEventType;)Ljava/util/List;

    move-result-object v0

    .line 40
    return-object v0
.end method
