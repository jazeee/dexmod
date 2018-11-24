.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$4;
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
        "Lcom/dexcom/cgm/model/Glucose;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$4;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/model/Glucose;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$4;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/EGVTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readLatestEGVRecord()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$4;->call()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    return-object v0
.end method
