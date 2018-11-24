.class public Lcom/dexcom/platform_database/database/tables/AlertStateTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "AlertStateTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/b;


# static fields
.field private static final COLUMN_ALERT_TYPE:Ljava/lang/String; = "alert_type"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public initializeAlertsIfNeeded()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 65
    :goto_0
    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v8

    array-length v9, v8

    move v7, v5

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 70
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v3, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/dexcom/cgm/model/AlertStateRecord;->createGeneralAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 68
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_0
    move v0, v5

    .line 64
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public readAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string v0, "alert_type = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    return-object v0
.end method

.method public readAlertStateRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertStateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->readRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateAlertStateRecord(Lcom/dexcom/cgm/model/AlertStateRecord;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 61
    return-void
.end method

.method public upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/platform_database/database/tables/BaseTable;->upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->setDatabase(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 34
    if-ne p2, p3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/AlertStateTable;->initializeAlertsIfNeeded()V

    .line 37
    :cond_0
    return-void
.end method
