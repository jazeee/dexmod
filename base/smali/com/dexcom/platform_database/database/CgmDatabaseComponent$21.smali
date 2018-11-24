.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;
.super Ljava/lang/Object;
.source "CgmDatabaseComponent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;->val$alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$21;->val$alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->createOrUpdateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 706
    const/4 v0, 0x0

    return-object v0
.end method
