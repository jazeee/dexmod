.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;
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

.field final synthetic val$record:Lcom/dexcom/cgm/model/TransmitterInfo;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/TransmitterInfo;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;->val$record:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$42;->val$record:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/TransmitterInfoTable;->createTransmitterInfoRecord(Lcom/dexcom/cgm/model/TransmitterInfo;)V

    .line 1002
    const/4 v0, 0x0

    return-object v0
.end method
