.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$29;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/KeyValueTable;->readKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
