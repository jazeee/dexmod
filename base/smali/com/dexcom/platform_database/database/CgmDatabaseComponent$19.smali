.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;
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
        "Lcom/dexcom/cgm/model/DexAlertSchedule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$alertScheduleIndex:I


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;I)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;->val$alertScheduleIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;->val$alertScheduleIndex:I

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->readAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$19;->call()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method
