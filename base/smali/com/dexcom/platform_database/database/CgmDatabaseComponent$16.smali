.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;
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
        "Lcom/dexcom/cgm/model/AlertSettings;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
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
    .line 600
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecords()Ljava/util/List;

    move-result-object v0

    .line 609
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 611
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readUserAlertSettings() - # settings less than expected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$16;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 618
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 619
    invoke-static {}, Lcom/dexcom/cgm/model/AlertSettings;->getDefaultAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-static {}, Lcom/dexcom/cgm/model/AlertSettings;->getDefaultScheduleAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_1
    return-object v0
.end method
