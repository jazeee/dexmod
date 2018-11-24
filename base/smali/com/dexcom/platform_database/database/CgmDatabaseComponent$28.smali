.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/KeyValueTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$28;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/platform_database/database/tables/KeyValueTable;->createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v0, 0x0

    return-object v0
.end method
