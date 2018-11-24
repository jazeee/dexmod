.class public Lcom/dexcom/platform_database/database/tables/SensorSessionTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "SensorSessionTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/q;


# static fields
.field private static final COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String; = "system_time_stamp"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/dexcom/cgm/model/SensorSession;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 21
    return-void
.end method

.method private getTimeColumn(Lcom/dexcom/cgm/e/r;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/dexcom/platform_database/database/tables/SensorSessionTable$1;->$SwitchMap$com$dexcom$cgm$database$SensorSessionDatabaseOperations$SessionTimeType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/e/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
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

    .line 48
    :pswitch_0
    const-string v0, "recorded_time_stamp"

    .line 50
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "system_time_stamp"

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createSensorSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/SensorSessionTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 27
    return-void
.end method

.method public readSensorSessionRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/r;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/r;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/SensorSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .line 37
    invoke-direct {p0, p3}, Lcom/dexcom/platform_database/database/tables/SensorSessionTable;->getTimeColumn(Lcom/dexcom/cgm/e/r;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 39
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    move-object v0, p0

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/dexcom/platform_database/database/tables/SensorSessionTable;->readRecordsBasedOnTime(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 40
    return-object v0
.end method
