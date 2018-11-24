.class public Lcom/dexcom/platform_database/database/tables/MeterTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "MeterTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/o;


# static fields
.field private static COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "system_time_stamp"

    sput-object v0, Lcom/dexcom/platform_database/database/tables/MeterTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/dexcom/cgm/model/Meter;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 21
    return-void
.end method

.method private getTimeColumn(Lcom/dexcom/cgm/e/p;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/dexcom/platform_database/database/tables/MeterTable$1;->$SwitchMap$com$dexcom$cgm$database$MeterDatabaseOperations$MeterTimeType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/e/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown time type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_0
    const-string v0, "recorded_time_stamp"

    .line 55
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/dexcom/platform_database/database/tables/MeterTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createMeterRecord(Lcom/dexcom/cgm/model/Meter;)V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/MeterTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 29
    return-void
.end method

.method public readLatestMeterRecord()Lcom/dexcom/cgm/model/Meter;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dexcom/platform_database/database/tables/MeterTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/MeterTable;->readTopRecord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Meter;

    return-object v0
.end method

.method public readMeterRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/p;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .line 42
    invoke-direct {p0, p3}, Lcom/dexcom/platform_database/database/tables/MeterTable;->getTimeColumn(Lcom/dexcom/cgm/e/p;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 44
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    move-object v0, p0

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/dexcom/platform_database/database/tables/MeterTable;->readRecordsBasedOnTime(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 45
    return-object v0
.end method
