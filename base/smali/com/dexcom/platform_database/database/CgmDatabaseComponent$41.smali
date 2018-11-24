.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;
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
        "Lcom/dexcom/cgm/model/CgmCommand;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;I)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;->call()Ljava/util/List;

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
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1400(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/CommandQueueTable;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$41;->val$count:I

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/CommandQueueTable;->getLatestCommands(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
