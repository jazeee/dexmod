.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;
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
        "Ljava/util/List;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$recordClass:Ljava/lang/Class;

.field final synthetic val$recordIDEnd:I

.field final synthetic val$recordIDStart:I


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;II)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->val$recordClass:Ljava/lang/Class;

    iput p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->val$recordIDStart:I

    iput p4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->val$recordIDEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->val$recordClass:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$2000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Ljava/lang/Class;)Lcom/dexcom/platform_database/database/tables/BaseTable;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->val$recordIDStart:I

    iget v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$58;->val$recordIDEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/platform_database/database/tables/BaseTable;->readRecordsByID(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
