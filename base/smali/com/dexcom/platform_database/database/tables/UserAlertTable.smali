.class public Lcom/dexcom/platform_database/database/tables/UserAlertTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "UserAlertTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/u;


# static fields
.field private static final COLUMN_ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field private static final COLUMN_SCHEDULE_INDEX:Ljava/lang/String; = "alert_schedule_index"

.field private static final EXPECTED_NUMBER_OF_ALERTS:I = 0x6

.field private static final MAX_SCHEDULE_INDEX_FOR_DATABASE_VERSION_2:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 31
    return-void
.end method

.method private initializeDefaultSettings(I)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->countRecords()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    .line 119
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    .line 120
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    .line 121
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    .line 122
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    .line 123
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;I)J

    .line 125
    :cond_0
    return-void
.end method

.method private initializeScheduleAlertSettings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserAlertProperties;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readMaxScheduleIndex()I

    move-result v0

    .line 131
    if-gtz v0, :cond_0

    .line 134
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 135
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 136
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 137
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 138
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 139
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->portOldDefaultRecords(Ljava/util/List;)V

    .line 144
    :cond_0
    return-void
.end method

.method private portOldDefaultRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserAlertProperties;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 170
    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method private readDefaultRecordsFromInitialDatabaseVersion()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserAlertProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-object v0
.end method

.method private readMaxScheduleIndex()I
    .locals 1

    .prologue
    .line 105
    const-string v0, "alert_schedule_index"

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readMaxNumber(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteUserAlertRecordForTesting(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 180
    const-string v0, "alert_schedule_index"

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readMaxNumber(Ljava/lang/String;)I

    move-result v3

    move v1, v2

    .line 182
    :goto_0
    if-gt v1, v3, :cond_1

    .line 184
    const-string v0, "alert_schedule_index = ?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v0, v4}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 188
    const-string v5, "alert_type = ? AND alert_schedule_index = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 188
    invoke-virtual {p0, v5, v6}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    return-void
.end method

.method public readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    const-string v0, "alert_type = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public readUserAlertRecords()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readMaxScheduleIndex()I

    move-result v3

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 87
    :goto_0
    if-gt v1, v3, :cond_2

    .line 89
    const-string v0, "alert_schedule_index = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v0, v5}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 92
    invoke-static {}, Lcom/dexcom/cgm/model/AlertSettings;->getDefaultAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v5

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 95
    invoke-virtual {v5, v0}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    goto :goto_1

    .line 97
    :cond_0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_2
    return-object v4
.end method

.method public resetTableToFactoryDefaults()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 198
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 199
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 200
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 201
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 202
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 203
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 204
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 205
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 206
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 207
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 208
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 210
    return-void
.end method

.method public updateUserAlertRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 112
    return-void
.end method

.method public upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/tables/BaseTable;->upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->setDatabase(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->initializeDefaultSettings(I)V

    goto :goto_0

    .line 53
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readDefaultRecordsFromInitialDatabaseVersion()Ljava/util/List;

    move-result-object v0

    .line 56
    const-string v1, "DROP TABLE IF EXISTS UserAlertProperties"

    invoke-virtual {p1, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-class v1, Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-static {v1, p2}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getSetupStringForClassType(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->initializeScheduleAlertSettings(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    const-string v0, "DROP TABLE IF EXISTS UserAlertProperties"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-class v0, Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-static {v0, p2}, Lcom/dexcom/platform_database/database/DatabaseRecordTransformer;->getSetupStringForClassType(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
