.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;
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

.field final synthetic val$record:Lcom/dexcom/cgm/model/UserEvent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/UserEvent;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;->val$record:Lcom/dexcom/cgm/model/UserEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$900(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/UserEventTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$26;->val$record:Lcom/dexcom/cgm/model/UserEvent;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/UserEventTable;->createUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V

    .line 779
    const/4 v0, 0x0

    return-object v0
.end method
