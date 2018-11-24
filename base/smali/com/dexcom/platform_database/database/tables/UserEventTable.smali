.class public Lcom/dexcom/platform_database/database/tables/UserEventTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "UserEventTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/v;


# static fields
.field private static final COLUMN_EVENT_TIME:Ljava/lang/String; = "event_time"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/dexcom/cgm/model/UserEvent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 21
    return-void
.end method

.method private getTimeColumn(Lcom/dexcom/cgm/e/w;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/dexcom/platform_database/database/tables/UserEventTable$1;->$SwitchMap$com$dexcom$cgm$database$UserEventDatabaseOperations$UserEventTimeType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/e/w;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown time type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    const-string v0, "recorded_time_stamp"

    .line 49
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "event_time"

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/UserEventTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 27
    return-void
.end method

.method public readUserEventRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/w;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/w;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .line 36
    invoke-direct {p0, p3}, Lcom/dexcom/platform_database/database/tables/UserEventTable;->getTimeColumn(Lcom/dexcom/cgm/e/w;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 38
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/dexcom/platform_database/database/tables/UserEventTable;->readRecordsBasedOnTime(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v0

    .line 39
    return-object v0
.end method
