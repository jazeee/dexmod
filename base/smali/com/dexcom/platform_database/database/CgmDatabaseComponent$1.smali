.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;
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

.field final synthetic val$newVersion:I

.field final synthetic val$oldVersion:I

.field final synthetic val$sqLiteDatabase:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;IILnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$oldVersion:I

    iput p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$newVersion:I

    iput-object p4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$sqLiteDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 233
    iget v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$oldVersion:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$newVersion:I

    if-gt v1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$000(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/platform_database/database/tables/BaseTable;

    .line 240
    iget-object v3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$sqLiteDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget v4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$1;->val$newVersion:I

    invoke-virtual {v0, v3, v1, v4}, Lcom/dexcom/platform_database/database/tables/BaseTable;->upgradeTableIfNeeded(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    goto :goto_1

    .line 233
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
