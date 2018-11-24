.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;
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
        "Lcom/dexcom/cgm/model/UserAlertProperties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;->val$alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$500(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/UserAlertTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;->val$alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0, v1}, Lcom/dexcom/platform_database/database/tables/UserAlertTable;->readUserAlertRecord(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$15;->call()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method
