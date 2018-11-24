.class public Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "AlertScheduleTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/dexcom/cgm/model/DexAlertSchedule;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 2

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->deleteRecords()V

    .line 85
    new-instance v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    invoke-static {}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getDefaultAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    goto :goto_0
.end method

.method public deleteAlertScheduleForTesting(I)V
    .locals 4

    .prologue
    .line 113
    const-string v0, "alert_schedule_index = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public initializeAlertScheduleTable()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->countRecords()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 99
    :goto_0
    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getDefaultAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 102
    new-instance v2, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    invoke-direct {v2, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 107
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string v0, "alert_schedule_index = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/DexAlertSchedule;

    goto :goto_0
.end method

.method public readAlertSchedules()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DexAlertSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string v0, "alert_schedule_index"

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->readMaxNumber(Ljava/lang/String;)I

    move-result v2

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 68
    :goto_0
    if-gt v0, v2, :cond_1

    .line 70
    const-string v4, "alert_schedule_index = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 71
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 73
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-object v3
.end method

.method public resetTableToFactoryDefaults()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 119
    return-void
.end method

.method public upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/tables/BaseTable;->upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->setDatabase(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 33
    packed-switch p2, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->initializeAlertScheduleTable()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
