.class public Lcom/dexcom/platform_database/database/tables/CalBoundsTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "CalBoundsTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/e;


# static fields
.field private static COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "system_time_stamp"

    sput-object v0, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/dexcom/cgm/model/CalBounds;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public createCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 25
    return-void
.end method

.method public readLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;->readTopRecord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CalBounds;

    return-object v0
.end method
