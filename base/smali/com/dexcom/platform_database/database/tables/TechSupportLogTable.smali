.class public Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "TechSupportLogTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/s;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/dexcom/cgm/model/TechSupportLogRecord;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public createTechSupportLogRecord(Lcom/dexcom/cgm/model/TechSupportLogRecord;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 27
    return-void
.end method

.method public deleteTechSupportLogsBeforeTime(Lcom/dexcom/cgm/k/j;)V
    .locals 6

    .prologue
    .line 43
    const-string v0, "recorded_time_stamp <= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;->deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public readTechSupportLogRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 6
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

    .prologue
    .line 34
    const-string v1, "recorded_time_stamp"

    .line 35
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 36
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    move-object v0, p0

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/dexcom/platform_database/database/tables/TechSupportLogTable;->readRecordsBasedOnTime(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 37
    return-object v0
.end method
