.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$recordClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;->val$recordClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;->val$recordClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$2000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;)Lcom/dexcom/platform_database/database/tables/BaseTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readLowestRecordID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$56;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
