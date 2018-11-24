.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;
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
        "Lcom/dexcom/cgm/model/Glucose;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$endTime:Lcom/dexcom/cgm/k/j;

.field final synthetic val$startTime:Lcom/dexcom/cgm/k/j;

.field final synthetic val$timeType:Lcom/dexcom/cgm/e/l;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->val$startTime:Lcom/dexcom/cgm/k/j;

    iput-object p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->val$endTime:Lcom/dexcom/cgm/k/j;

    iput-object p4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->val$timeType:Lcom/dexcom/cgm/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->call()Ljava/util/List;

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
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/EGVTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->val$startTime:Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->val$endTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$5;->val$timeType:Lcom/dexcom/cgm/e/l;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
