.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;
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
        "Ljava/util/List",
        "<",
        "Lcom/dexcom/cgm/model/DexAlertSchedule;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 2
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
    .line 681
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->readAlertSchedules()Ljava/util/List;

    move-result-object v1

    .line 682
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getAlertScheduleIndex()I

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 688
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 689
    invoke-static {}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getDefaultAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 692
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$20;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$700(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/AlertScheduleTable;->readAlertSchedules()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
