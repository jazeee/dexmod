.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;
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

.field final synthetic val$time:Lcom/dexcom/cgm/k/j;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;->val$time:Lcom/dexcom/cgm/k/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1600(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$46;->val$time:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/BluetoothEventTable;->deleteBluetoothEventRecords(Lcom/dexcom/cgm/k/j;)V

    .line 1059
    const/4 v0, 0x0

    return-object v0
.end method
