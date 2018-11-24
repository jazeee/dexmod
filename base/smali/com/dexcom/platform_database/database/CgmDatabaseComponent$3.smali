.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;
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

.field final synthetic val$records:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;->val$records:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/EGVTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$3;->val$records:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/EGVTable;->createEGVRecords(Ljava/util/List;)V

    .line 417
    const/4 v0, 0x0

    return-object v0
.end method
