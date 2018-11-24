.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;
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

.field final synthetic val$sequenceNumber:J


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;J)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-wide p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;->val$sequenceNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1800(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/DataPostTable;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$52;->val$sequenceNumber:J

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->deleteDataPost(J)V

    .line 1158
    const/4 v0, 0x0

    return-object v0
.end method
